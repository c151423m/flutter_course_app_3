import 'package:flutter/material.dart';
import 'package:flutter_app_third/custom_widgets/article_content.dart';

// blog1, 2 and 3 have string directly written
Widget widgetBlog1() => Column(
      //dont forget to add cross axis because it will be a new column
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          child: Image.asset(
            'images/rich.png',
            fit: BoxFit.cover,
          ),
          // making the background color different
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.black.withOpacity(0.05),
          ),
          height: 200,
          //double.infinity to stretch to the end
          width: double.infinity,
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          'Top 10 tips to retire at 40 years old',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
        ),
        Text(
          'Man I wish I could retire that early',
          style: TextStyle(fontSize: 16),
        ),
        Container(
          //the width can control the divider length
          width: 50,
          child: Divider(
            thickness: 5,
            color: Colors.black,
          ),
        ),
        SizedBox(
          height: 10,
        ),
      ],
    );

Widget widgetBlog2() => Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          child: Image.asset(
            'images/house.png',
            fit: BoxFit.cover,
          ),
          // making the background color different
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.black.withOpacity(0.05),
          ),
          height: 200,
          //double.infinity to stretch to the end
          width: double.infinity,
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          'How to purchase a house',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
        ),
        Text(
          'No. You cannot buy one from your local Costco',
          style: TextStyle(fontSize: 16),
        ),
        Container(
          //the width can control the divider length
          width: 50,
          child: Divider(
            thickness: 5,
            color: Colors.black,
          ),
        ),
        SizedBox(
          height: 10,
        ),
      ],
    );

Widget widgetBlog3() => Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          child: Image.asset(
            'images/apps.png',
            fit: BoxFit.cover,
          ),
          // making the background color different
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.black.withOpacity(0.05),
          ),
          height: 200,
          //double.infinity to stretch to the end
          width: double.infinity,
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          'Seven Apps to find "The One"',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
        ),
        Text(
          'How to find your "Tom Hanks"',
          style: TextStyle(fontSize: 16),
        ),
        Container(
          //the width can control the divider length
          width: 50,
          child: Divider(
            thickness: 5,
            color: Colors.black,
          ),
        ),
        SizedBox(
          height: 20,
        ),
      ],
    );

// this widget will get 3 parameters instead
Widget widgetBlog(
    {required String imagePath,
    required String title,
    required String subTitle,
    required BuildContext context}) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      InkWell(
        onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return ArticleContent(
              imagePath: imagePath,
              articleTitle: title,
              subTitle: subTitle,
            );
          }));
        },
        borderRadius: BorderRadius.circular(20),
        child: Container(
          child: Image.asset(
            imagePath,
            fit: BoxFit.cover,
          ),
          // making the background color different
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.black.withOpacity(0.05),
          ),
          height: 200,
          //double.infinity to stretch to the end
          width: double.infinity,
        ),
      ),
      SizedBox(
        height: 10,
      ),
      InkWell(
        // inkwell will give you gimmick when tapping text
        borderRadius: BorderRadius.circular(10),
        onTap: () {
          print(title);

          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return ArticleContent(
              imagePath: imagePath,
              articleTitle: title,
              subTitle: subTitle,
            );
          }));
        },
        child: Container(
          // need to put in container to have the wripple to the
          // entire screen
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
              ),
              Text(
                subTitle,
                style: TextStyle(fontSize: 16),
              ),
            ],
          ),
        ),
      ),
      Container(
        //the width can control the divider length
        width: 50,
        child: Divider(
          thickness: 5,
          color: Colors.black,
        ),
      ),
      SizedBox(
        height: 20,
      ),
    ],
  );
}
