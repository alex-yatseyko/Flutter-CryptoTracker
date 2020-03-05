import 'package:flutter/material.dart';
import 'package:cryptotrackerr/CCData.dart';

class CCList extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return CCListState();
  }
}

class CCListState extends State<CCList>{
  List<CCData> data = [];

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
        child: Icon(Icons.refresh)
      ),
    );
  }
}