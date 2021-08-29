import 'package:flutter/material.dart';
import 'package:flutter_minipro/screen/signin.dart';

class docter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: FirstPage(title: 'My Docter'),
    );
  }
}

class FirstPage extends StatelessWidget {
  final String title;

  FirstPage({Key key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: FutureBuilder<List<docter>>(
        builder: (context, result) {
          if (result.hasError) print(result.error);
          return result.hasData
              ? BeerList(docter: result.data)
              : Center(child: CircularProgressIndicator());
        },
      ),
    );
  }
}

class BeerList extends StatelessWidget {
  final List<dynamic> docter;

  BeerList({Key key, this.docter}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: docter.length,
      itemBuilder: (context, index) {
        return Text(docter[index].name);
      },
    );
  }
}