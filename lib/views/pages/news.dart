import 'package:finance_mobile_app/views/widgets/buldMyDrawer.dart';
import 'package:flutter/material.dart';
import 'package:finance_mobile_app/controller/news.dart';
import 'package:finance_mobile_app/views/widgets/newsTile.dart';
import 'package:finance_mobile_app/views/widgets/DefaultAppBar.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  bool _loading=true;
  var newslist;


  void getNews() async {
    News news = News();
    await news.getNews();
    newslist = news.news;
    setState(() {
      _loading = false;
    });
  }

  @override
  void initState() {
    _loading = true;
    // TODO: implement initState
    super.initState();

    getNews();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: buildMyDrawer(),
      appBar: DefaultAppBar(title: "Latest News"),
      body: SafeArea(
        child: _loading
            ? Center(
                child: CircularProgressIndicator(),
              )
            : SingleChildScrollView(
                child: Container(
                    margin: EdgeInsets.only(top: 16),
                    child: ListView.builder(
                        itemCount: newslist.length,
                        shrinkWrap: true,
                        physics: ClampingScrollPhysics(),
                        itemBuilder: (context, index) {
                          return NewsTile(
                            imgUrl: newslist[index].urlToImage ?? "",
                            title: newslist[index].title ?? "",
                            desc: newslist[index].description ?? "",
                            content: newslist[index].content ?? "",
                            posturl: newslist[index].articleUrl ?? "",
                          );
                        }),
                  ),
              ),
      ),
    );
  }
}

