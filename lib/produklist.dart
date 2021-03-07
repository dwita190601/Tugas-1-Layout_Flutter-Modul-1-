import 'package:flutter/material.dart';
import 'detailproduk.dart';

class ProdukList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Product Listing")),
      body: ListView(
        shrinkWrap: true,
        padding: const EdgeInsets.fromLTRB(2.0, 10.0, 2.0, 10.0),
        children: <Widget>[
          new GestureDetector(
            onTap: () {
              Navigator.of(context).push(new MaterialPageRoute(
                  builder: (BuildContext context) => DetailProduk(
                        name: "ACER",
                        description:
                            "prosesor dengan performa 84% lebih baik dan respinsivitas luar biasa",
                        price: 4000000,
                        image: "acer.jpg",
                        star: 1,
                      )));
            },
            child: ProductBox(
              name: "ACER",
              description:
                  "Prosesor dengan performa 84% lebih baik dan respinsivitas luar biasa",
              price: 4000000,
              image: "acer.jpg",
              star: 1,
            ),
          ),
          new GestureDetector(
            onTap: () {
              Navigator.of(context).push(new MaterialPageRoute(
                  builder: (BuildContext context) => DetailProduk(
                        name: "HP",
                        description:
                            "Laptop yang bisa dipakai tidak hanya sekedar mengerjakan tugas-tugas harian, tapi juga mampu memberikan hiburan menarik di saat santai.",
                        price: 5000000,
                        image: "hp.jpg",
                        star: 3,
                      )));
            },
            child: ProductBox(
              name: "HP",
              description:
                  "Laptop yang bisa dipakai tidak hanya sekedar mengerjakan tugas-tugas harian, tapi juga mampu memberikan hiburan menarik di saat santai.",
              price: 5000000,
              image: "hp.jpg",
              star: 3,
            ),
          ),
          new GestureDetector(
            onTap: () {
              Navigator.of(context).push(new MaterialPageRoute(
                  builder: (BuildContext context) => DetailProduk(
                        name: "MACBOOK",
                        description:
                            "MacBook Pro 16 inci praproduksi berbasis Intel Core i9 8‑core 2,3 GHz dengan RAM 16 GB dan SSD 1 TB.",
                        price: 7000000,
                        image: "macbook.jpg",
                        star: 5,
                      )));
            },
            child: ProductBox(
              name: "MACBOOK",
              description:
                  "MacBook Pro 16 inci praproduksi berbasis Intel Core i9 8‑core 2,3 GHz dengan RAM 16 GB dan SSD 1 TB.",
              price: 7000000,
              image: "macbook.jpg",
              star: 5,
            ),
          ),
          new GestureDetector(
            onTap: () {
              Navigator.of(context).push(new MaterialPageRoute(
                  builder: (BuildContext context) => DetailProduk(
                        name: "SAMSUNG",
                        description:
                            "Hp dengan kualitas terbaik dan tampilan yang menarik",
                        price: 8000000,
                        image: "samsung.jpg",
                        star: 3,
                      )));
            },
            child: ProductBox(
              name: "SAMSUNG",
              description:
                  "Hp dengan kualitas terbaik dan tampilan yang menarik",
              price: 8000000,
              image: "samsung.jpg",
              star: 3,
            ),
          )
        ],
      ),
    );
  }
}

class ProductBox extends StatelessWidget {
  ProductBox(
      {Key key, this.name, this.description, this.price, this.image, this.star})
      : super(key: key);
  final String name;
  final String description;
  final int price;
  final String image;
  final int star;
  final children = <Widget>[];
  @override
  Widget build(BuildContext context) {
    for (var i = 0; i < star; i++) {
      children.add(new Icon(
        Icons.star,
        size: 10,
        color: Colors.yellow,
      ));
    }
    return Container(
      padding: EdgeInsets.all(10),
      //height: 120
      child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Image.asset(
              "assets/appimages/" + image,
              width: 150,
            ),
            Expanded(
              child: Container(
                  padding: EdgeInsets.all(5),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Text(this.name,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          )),
                      Text(this.description),
                      Text("Price: " + this.price.toString(),
                          style: TextStyle(color: Colors.blueAccent)),
                      Row(children: <Widget>[
                        Row(
                          children: children,
                        )
                      ]
                    )
                  ],
                )
              ),
            )
          ]
        ),
    );
  }
}
