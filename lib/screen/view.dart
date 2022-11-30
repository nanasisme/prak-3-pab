import 'package:flutter/material.dart';

import '../model/model.dart';

class ViewPg extends StatefulWidget {
  const ViewPg({super.key});

  @override
  State<ViewPg> createState() => _ViewPgState();
}

class _ViewPgState extends State<ViewPg> {
  List<Product> listproduk=[];
  getdata()async{
    await Product.connectToApi().then((value) => listproduk=value);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Ini Hanya Menciba"),
      ),
      body:
      FutureBuilder(
        future: getdata(),
        builder: (context, snapshot) {
          switch (snapshot.connectionState) {
            case ConnectionState.none:
              return const Center(child: CircularProgressIndicator());
            case ConnectionState.active:
            case ConnectionState.waiting:
              return const Center(child: CircularProgressIndicator());
            case ConnectionState.done:
              return (snapshot.hasError)
                  ? Text('Error: ${snapshot.error}')
                  : ListView.builder(
                      itemCount: listproduk.length,
                      itemBuilder: (context, index) {
                        return Card(
                          child: ListTile(
                            leading: Image.network(
                              listproduk[index].thumbnailUrl,
                              width: 50,
                              fit: BoxFit.fill,
                            ),
                            title: Text(listproduk[index].title),
                            subtitle: Text(listproduk[index].url),
                            isThreeLine: true,
                          ),
                        );
                      },
                    );
          }
        },
      ),

    );
  }
}