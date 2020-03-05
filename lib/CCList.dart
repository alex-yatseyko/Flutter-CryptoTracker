import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'package:cryptotrackerr/CCData.dart';

class CCList extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return CCListState();
  }
}

class CCListState extends State<CCList>{
  List<CCData> data = [];


  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text('Crypto Tracker'),
      ),
      body: Container(
        child: ListView(
          children: _buildList(),
        )
      ),floatingActionButton: FloatingActionButton(
        child: Icon(Icons.refresh),
        onPressed: () => _loadCC(),
      ),
    );
  }

  _loadCC() async {
    final response = await http.get('https://api.coinmarketcap.com/v2/ticker/?limit=10');
  }

  List<Widget> _buildList(){
    return data.map((CCData f) => ListTile(
      title: Text(f.symbol),
      subtitle: Text(f.name),
      leading: CircleAvatar(
        child: Text(f.rank.toString())
      ),
      trailing: Text('\$${f.price.toString()}')
    )).toList();
  }
}