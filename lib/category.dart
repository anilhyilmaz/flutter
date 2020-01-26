import 'package:flutter/material.dart';

class Category extends StatefulWidget {
  @override
  _CategoryState createState() => _CategoryState();
}

class _CategoryState extends State<Category> {
  List<String> kategori=['Yeniler','Kategoriler','Rastgele','Popüler'];
  int itemindex = 0;
  @override
  Widget build(BuildContext context) {
      return Container(
        color: Colors.red,
        height: 80.0,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: kategori.length,
          itemBuilder:(BuildContext context,int index){
            return GestureDetector(
              onTap: (){
                setState(() {
                  itemindex = index;
                  print(itemindex);
                });
              },
                child: Padding(
                padding: EdgeInsets.symmetric(vertical: 20.0,horizontal: 20.0),
                child: Text(kategori[index],
                style: TextStyle(fontSize: 15.0,
                fontWeight: FontWeight.bold,
                letterSpacing: 1.5,
                ),
                ),
              ),
            );
          },
        ),
      );
  }
}