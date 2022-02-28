import 'package:flutter/material.dart';

class ArticleContent extends StatelessWidget {
  ArticleContent({
    required String this.imagePath,
    required String this.articleTitle,
    required String this.subTitle,
  });
  final String imagePath;
  final String articleTitle;
  final String subTitle;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          articleTitle,
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
        iconTheme: IconThemeData(
          color: Colors.black,
        ),
      ),
      body: Column(
        children: [
          Container(
            child: Image.asset(
              imagePath,
            ),
            color: Colors.grey.withOpacity(0.05),
            height: 200,
            width: double.infinity,
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            subTitle,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 15,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Vel pretium lectus quam id leo in vitae. Cras ornare arcu dui vivamus arcu felis bibendum ut tristique. Ligula ullamcorper malesuada proin libero nunc. Euismod quis viverra nibh cras. Nisl pretium fusce id velit ut tortor pretium. Luctus venenatis lectus magna fringilla urna porttitor rhoncus dolor. Massa tincidunt dui ut ornare lectus sit amet est placerat. Mi eget mauris pharetra et ultrices neque ornare aenean. Ut sem viverra aliquet eget sit. Posuere ac ut consequat semper viverra nam. Pharetra vel turpis nunc eget lorem dolor sed viverra. Porttitor leo a diam sollicitudin tempor id eu nisl nunc. ',
              textAlign: TextAlign.justify,
            ),
          ),
        ],
      ),
    );
  }
}
