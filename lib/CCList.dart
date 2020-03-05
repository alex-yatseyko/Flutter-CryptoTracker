import 'package:flutter/material.dart';
import 'package:cryptotrackerr/CCData.dart';

class CCList extends StatelessWidget{
  List<CCData> data  = [
    CCData(name: 'Bitocin', symbol: 'BTC', rank: 1, price: 6000),
    CCData(name: 'Bitocin', symbol: 'BTC', rank: 2, price: 6000),
    CCData(name: 'Bitocin', symbol: 'BTC', rank: 3, price: 6000)
  ];

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
      )
    );
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