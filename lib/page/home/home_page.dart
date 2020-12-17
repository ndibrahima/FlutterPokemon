import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_pokemontcg/api/pokemon.dart';
import 'package:http/http.dart' as http;

import '../../main.dart';

void main() {
  runApp(MyApp());
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var url = "https://pokemontcg.io/sets";

  PokemonList pokemonList;

  @override
  void initState() {
    super.initState();

    fetchData();
    print("affichage deux");
  }

  fetchData() async {
    var res = await http.get(url);
    var decodeJson = jsonDecode(res.body);
  }

  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Pokemon TCG')),
        backgroundColor: Colors.white,
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: Icon(Icons.refresh),
        ),
        body: GridView.count(
          crossAxisCount: 2,
          children: <Widget>[],
        ));
  }
}
