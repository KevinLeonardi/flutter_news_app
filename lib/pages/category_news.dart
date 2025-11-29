import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/show_category.dart';
import 'package:flutter_application_1/services/show_category_news.dart';

class CategoryNews extends StatefulWidget {
  String name;
  CategoryNews({required this.name});
  @override
  State<CategoryNews> createState() => _CategoryNewsState();
}

class _CategoryNewsState extends State<CategoryNews> {
  List<ShowCategoryModel> categories = [];
  bool loading = true;

  @override
  void initState() {
    getNews();
    super.initState();
  }

  getNews() async {
    ShowCategoryNews showCategoryNews = ShowCategoryNews();
    await showCategoryNews.getCategoryNews(widget.name.toLowerCase());
    categories = showCategoryNews.categories;
    setState(() {
      loading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff3280ef),
      body: Container(
        margin: EdgeInsets.only(top: 40),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 10.0),
              child: Row(
                children: [
                  Icon(Icons.arrow_back_ios_new_rounded, color: Colors.white),
                  SizedBox(width: MediaQuery.of(context).size.width / 3.3),
                  Text(
                    "Business",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 22.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Expanded(
              child: Container(
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  ),
                ),
                child: Column(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: const Color.fromARGB(244, 255, 255, 255),
                      ),
                      margin: EdgeInsets.all(30),
                      child: Column(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset('images/news1.jpg'),
                          ),
                          SizedBox(height: 5),
                          Container(
                            width: MediaQuery.of(context).size.width,
                            child: Text(
                              'Berikut ini adalah judul berita satu. Test satu',
                              style: TextStyle(
                                color: const Color.fromARGB(188, 0, 0, 0),
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          SizedBox(height: 5),
                          Container(
                            padding: EdgeInsets.only(left: 5, right: 5),
                            width: MediaQuery.of(context).size.width,
                            child: Text(
                              'Ini adalah isi berita kalimat satu. Ini kalimat dua.',
                              style: TextStyle(
                                color: Color.fromARGB(151, 0, 0, 0),
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
