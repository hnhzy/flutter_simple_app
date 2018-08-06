import 'package:flutter/material.dart';
import 'package:flutter/semantics.dart';


class RowColumnTraversal extends StatelessWidget {
  const RowColumnTraversal({this.rowOrder, this.columnOrder, this.child});

  final int rowOrder;
  final int columnOrder;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return new Semantics(
      sortKey: new OrdinalSortKey(columnOrder.toDouble()),
      child: new Semantics(
        sortKey: new OrdinalSortKey(rowOrder.toDouble()),
        child: child,
      ),
    );
  }
}

// --------------- Component widgets ---------------------

/// A Button class that wraps an [IconButton] with a [RowColumnTraversal] to
/// set its traversal order.
class SpinnerButton extends StatelessWidget {
  const SpinnerButton(
      {Key key,
        this.onPressed,
        this.icon,
        this.rowOrder,
        this.columnOrder,
        this.field,
        this.increment}) : super(key: key);

  final VoidCallback onPressed;
  final IconData icon;
  final int rowOrder;
  final int columnOrder;
  final Field field;
  final bool increment;

  @override
  Widget build(BuildContext context) {
    final String label = '${increment ? 'Increment' : 'Decrement'} ${_fieldToName(field)}';

    return new RowColumnTraversal(
      rowOrder: rowOrder,
      columnOrder: columnOrder,
      child: new Center(
        child: new IconButton(
          icon: new Icon(icon),
          onPressed: onPressed,
          tooltip: label,
        ),
      ),
    );
  }
}

/// A text entry field that wraps a [TextField] with a [RowColumnTraversal] to
/// set its traversal order.
class FieldWidget extends StatelessWidget {
  const FieldWidget({
    Key key,
    this.rowOrder,
    this.columnOrder,
    this.onIncrease,
    this.onDecrease,
    this.value,
    this.field,
  }) : super(key: key);

  final int rowOrder;
  final int columnOrder;
  final VoidCallback onDecrease;
  final VoidCallback onIncrease;
  final int value;
  final Field field;

  @override
  Widget build(BuildContext context) {
    final String stringValue = '${_fieldToName(field)} $value';
    final String increasedValue = '${_fieldToName(field)} ${value + 1}';
    final String decreasedValue = '${_fieldToName(field)} ${value - 1}';

    return new RowColumnTraversal(
      rowOrder: rowOrder,
      columnOrder: columnOrder,
      child: new Center(
        child: new Semantics(
          onDecrease: onDecrease,
          onIncrease: onIncrease,
          value: stringValue,
          increasedValue: increasedValue,
          decreasedValue: decreasedValue,
          child: new ExcludeSemantics(child: new Text(value.toString())),
        ),
      ),
    );
  }
}

// --------------- Field manipulation functions ---------------------

/// An enum that describes which column we're referring to.
enum Field { DOGS, CATS, FISH }

String _fieldToName(Field field) {
  switch (field) {
    case Field.DOGS:
      return 'Dogs';
    case Field.CATS:
      return 'Cats';
    case Field.FISH:
      return 'Fish';
  }
  return null;
}

// --------------- Main app ---------------------

/// The top-level example widget that serves as the body of the app.
class CustomTraversalExample extends StatefulWidget {
  @override
  CustomTraversalExampleState createState() => new CustomTraversalExampleState();
}

/// The state object for the top level example widget.
class CustomTraversalExampleState extends State<CustomTraversalExample> {
  /// The fields that we are manipulating. List indices correspond to
  /// the entries in the [Field] enum.
  List<int> fields = <int>[0, 0, 0];

  void _addToField(Field field, int delta) {
    setState(() {
      fields[field.index] += delta;
    });
  }

  Widget _makeFieldHeader(int rowOrder, int columnOrder, Field field) {
    return new RowColumnTraversal(
      rowOrder: rowOrder,
      columnOrder: columnOrder,
      child: new Text(_fieldToName(field)),
    );
  }

  Widget _makeSpinnerButton(int rowOrder, int columnOrder, Field field, {bool increment: true}) {
    return new SpinnerButton(
      rowOrder: rowOrder,
      columnOrder: columnOrder,
      icon: increment ? Icons.arrow_upward : Icons.arrow_downward,
      onPressed: () => _addToField(field, increment ? 1 : -1),
      field: field,
      increment: increment,
    );
  }

  Widget _makeEntryField(int rowOrder, int columnOrder, Field field) {
    return new FieldWidget(
      rowOrder: rowOrder,
      columnOrder: columnOrder,
      onIncrease: () => _addToField(field, 1),
      onDecrease: () => _addToField(field, -1),
      value: fields[field.index],
      field: field,
    );
  }

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: new Scaffold(
        appBar: new AppBar(
          title: const Text('Pet Inventory'),
        ),
        body: new Builder(
          builder: (BuildContext context) {
            return new DefaultTextStyle(
              style: DefaultTextStyle.of(context).style.copyWith(fontSize: 21.0),
              child: new Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  new Semantics(
                    // Since this is the only sort key that the text has, it
                    // will be compared with the 'column' OrdinalSortKeys of all the
                    // fields, because the column sort keys are first in the other fields.
                    //
                    // An ordinal of "0.0" means that it will be traversed before column 1.
                    sortKey: const OrdinalSortKey(0.0),
                    child: const Text(
                      'How many pets do you own?',
                    ),
                  ),
                  const Padding(padding: const EdgeInsets.symmetric(vertical: 10.0)),
                  new Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      _makeFieldHeader(1, 0, Field.DOGS),
                      _makeFieldHeader(1, 1, Field.CATS),
                      _makeFieldHeader(1, 2, Field.FISH),
                    ],
                  ),
                  new Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      _makeSpinnerButton(3, 0, Field.DOGS, increment: true),
                      _makeSpinnerButton(3, 1, Field.CATS, increment: true),
                      _makeSpinnerButton(3, 2, Field.FISH, increment: true),
                    ],
                  ),
                  new Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      _makeEntryField(2, 0, Field.DOGS),
                      _makeEntryField(2, 1, Field.CATS),
                      _makeEntryField(2, 2, Field.FISH),
                    ],
                  ),
                  new Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      _makeSpinnerButton(4, 0, Field.DOGS, increment: false),
                      _makeSpinnerButton(4, 1, Field.CATS, increment: false),
                      _makeSpinnerButton(4, 2, Field.FISH, increment: false),
                    ],
                  ),
                  const Padding(padding: const EdgeInsets.symmetric(vertical: 10.0)),
                  new Semantics(
                    // Since this is the only sort key that the reset button has, it
                    // will be compared with the 'column' OrdinalSortKeys of all the
                    // fields, because the column sort keys are first in the other fields.
                    //
                    // an ordinal of "5.0" means that it will be traversed after column 4.
                    sortKey: const OrdinalSortKey(5.0),
                    child: new MaterialButton(
                      child: const Text('RESET'),
                      textTheme: ButtonTextTheme.normal,
                      textColor: Colors.blue,
                      onPressed: () {
                        setState(() {
                          fields = <int>[0, 0, 0];
                        });
                      },
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
