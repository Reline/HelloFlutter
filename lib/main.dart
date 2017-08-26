import 'package:flutter/material.dart';

import 'ShoppingList.dart';
import 'ShoppingListItem.dart';

void main() {
  runApp(new MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Shopping List',
      theme: new ThemeData(
        primarySwatch: Colors.red,
      ),
      home: new MyHomePage(title: 'Shopping List'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => new _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _onAddButtonPressed() {
    setState(() {
	    // TODO: enable user to add a new product to the shopping list
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new ShoppingList(
	      	products: <Product>[
			// TODO: remove this initial list of products
			new Product(name: 'Eggs'),
		      	new Product(name: 'Milk'),
		      	new Product(name: 'Bread'),
	      	],
      ),
      floatingActionButton: new FloatingActionButton(
        onPressed: _onAddButtonPressed,
        tooltip: 'Add Product',
        child: new Icon(Icons.add),
      ),
    );
  }
}
