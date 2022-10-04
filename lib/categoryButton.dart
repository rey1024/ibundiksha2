import 'package:flutter/material.dart';
class CategoryButton extends StatelessWidget {
  //const CategoryButton({Key? key}) : super(key: key);
  final Icon icon;
  final String title;
  CategoryButton(this.icon, this.title);

  @override
  Widget build(BuildContext context) {

    return Container(
      height: 100,
      width: 100,
      // color: Colors.blue,
      margin: EdgeInsets.all(10),
      alignment: Alignment.topCenter,
      child:  Column(
        children: [
          Expanded(
            flex: 4,
              child: IconButton(
                icon: icon,
                onPressed: (){},
                iconSize: 75,
              ),
          ),
          Expanded(
            flex: 1,
          child: Text(title, style: TextStyle(fontWeight: FontWeight.bold),)
          )


        ],
      ),



      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.blue[100],
      ),
    );

  }
}
