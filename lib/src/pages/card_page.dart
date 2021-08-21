import 'package:flutter/material.dart';

class CardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Card"),
      ),
      body: ListView(
        padding: EdgeInsets.all(20),
        children: <Widget>[
          _cardType_1(),
          SizedBox(
            height: 30,
          ),
          _cardType_2()
        ],
      ),
    );
  }

  Widget _cardType_1() {
    return Card(
      elevation: 10,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: Column(
        children: [
          ListTile(
            leading: Icon(Icons.photo_album),
            title: Text("Titulo"),
            subtitle: Text(
                "Ullamco quis proident magna Lorem. Deserunt veniam ad cupidatat nulla ipsum ad deserunt fugiat fugiat velit consequat proident ut. Eu culpa esse anim enim eu velit cupidatat ad quis nostrud pariatur."),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              TextButton(onPressed: null, child: Text("Cancelar")),
              TextButton(onPressed: null, child: Text("ok"))
            ],
          )
        ],
      ),
    );
  }

  Widget _cardType_2() {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.white,
          boxShadow: <BoxShadow>[
            BoxShadow(
                color: Colors.black26,
                blurRadius: 10,
                spreadRadius: 2,
                offset: Offset(2, 10))
          ]),
      child: Container(
        child: Column(
          children: <Widget>[
            FadeInImage(
              placeholder: AssetImage('assets/jar-loading.gif'),
              image: NetworkImage(
                  "https://static.vecteezy.com/system/resources/previews/000/246/312/original/mountain-lake-sunset-landscape-first-person-view-vector.jpg"),
              fadeInDuration: Duration(milliseconds: 200),
              height: 300,
              fit: BoxFit.cover,
            ),

            // Image(
            //     image: NetworkImage(
            //         "https://static.vecteezy.com/system/resources/previews/000/246/312/original/mountain-lake-sunset-landscape-first-person-view-vector.jpg")),
            Container(
              padding: EdgeInsets.all(20),
              child: Text("vista de mi casa"),
            )
          ],
        ),
      ),
    );
  }
}
