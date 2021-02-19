import 'package:e_shop/HomePage/productDetails.dart';
import 'package:flutter/material.dart';

class Products extends StatefulWidget {
  @override
  _ProductsState createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
  var produt_list = [
    {
      "name": "Papaya",
      "picture": "images/products/p1.jpg",
      "old_price": 200,
      "price": 160
    },
    {
      "name": "chili",
      "picture": "images/products/p2.jpg",
      "old_price": 400,
      "price": 380
    },



  ];
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: produt_list.length,
      gridDelegate:
      new SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
      itemBuilder: (BuildContext context, int index) {
        return Single_product(
          prod_name: produt_list[index]['name'],
          prod_picture: produt_list[index]['picture'],
          prod_oldprice: produt_list[index]['old_price'],
          prod_newprice: produt_list[index]['price'],
        );
      },
    );
  }
}

class Single_product extends StatelessWidget {
  final prod_name;
  final prod_picture;
  final prod_oldprice;
  final prod_newprice;

  Single_product({
    this.prod_name,
    this.prod_picture,
    this.prod_oldprice,
    this.prod_newprice,
  });
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Hero(
        tag: prod_name,
        child: Material(
          child: InkWell(
            onTap: () => Navigator.of(context).push(new MaterialPageRoute(
                builder: (context) => new ProductDetails(
                  product_detail_name: prod_name,
                  product_detail_new_price: prod_newprice,
                  product_detail_old_price: prod_oldprice,
                  product_detail_picture: prod_picture,
                ))),
            child: GridTile(
              footer: Container(
                color: Colors.white70,
                child: ListTile(
                  leading: Text(
                    prod_name,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  title: Text(
                    "Rs "
                        "$prod_newprice",
                    style: TextStyle(
                        color: Colors.red, fontWeight: FontWeight.bold),
                  ),
                  subtitle: Text(
                    "Rs " "$prod_oldprice",
                    style: TextStyle(
                      color: Colors.black54,
                      fontWeight: FontWeight.w800,
                      decoration: TextDecoration.lineThrough,
                    ),
                  ),
                ),
              ),
              child: Image.asset(prod_picture, fit: BoxFit.cover),
            ),
          ),
        ),
      ),
    );
  }
}