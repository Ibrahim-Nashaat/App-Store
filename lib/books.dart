
import 'package:flutter/material.dart';
import 'package:getwidget/components/appbar/gf_appbar.dart';
import 'package:getwidget/components/carousel/gf_carousel.dart';
import 'package:yat_flutter_final_project/Home.dart';
import 'package:yat_flutter_final_project/search_bar.dart';

class Books extends StatefulWidget {
  @override
  _BooksState createState() => _BooksState();
}

class _BooksState extends State<Books> with TickerProviderStateMixin{
  TabController _StoreController;
  @override
  void initState() {
    super.initState();
    _StoreController = new TabController( vsync: this, initialIndex: 0, length: 1);
  }
  final List<String> imageList = [
  'https://static01.nyt.com/images/2019/12/06/books/06critics-list1/06critics-list1-videoSixteenByNineJumbo1600.jpg',
  'https://static01.nyt.com/images/2019/12/03/books/03critics-list4/03critics-list4-mobileMasterAt3x.jpg',
  'https://www.sun-sentinel.com/resizer/9xhhgqjtXA8DSl1-0rVL7vJn48o=/415x311/top/cloudfront-us-east-1.images.arcpublishing.com/tronc/P5XYR5PERJG47AAD3SYKTDVXDY.jpg',
  'https://api.time.com/wp-content/uploads/2020/08/fall-books-2020-featured-image.jpg',
  'https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/best-books-of-2020-1601639352.jpg?crop=0.487xw:0.974xh;0.505xw,0.0130xh&resize=640:*',
  'https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/books-of-summer-2020-1589908931.jpg',
  'https://www.esquireme.com/public/styles/full_img/public/images/2020/07/29/esquire-summer-books-2020.jpg?itok=daiVCamo',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(0),
          child: TabBar(
            controller: _StoreController,
            indicatorColor: Colors.white,
            isScrollable: true,
            tabs: <Widget>[
              Tab(text: "HOME"),
            ],
          ),
        ),
      ),
        body: ListView(
          children: <Widget>[
            GFCarousel(
              items: imageList.map(
                    (url) {
                  return Container(
                    margin: EdgeInsets.all(8.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.all(Radius.circular(5.0)),
                      child: Image.network(
                          url,
                          fit: BoxFit.cover,
                          width: 1000.0
                      ),
                    ),
                  );
                },
              ).toList(),
              autoPlay: true,
              initialPage: 0,
              scrollDirection: Axis.horizontal,
              viewportFraction: 1.0,
              onPageChanged: (index) {
                setState(() {
                  index;
                });
              },
            ),
            Text(
              '\n\t\tMost Popular Books',
              textAlign: TextAlign.start,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),
            ),
            gat(),
            Divider(
              height: 4,
              thickness: 1,
            ),
            Text(
              '\n\t\tNew Books',
              textAlign: TextAlign.start,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),
            ),
            fat(),
            Divider(
              height: 4,
              thickness: 1,
            ),
            Text(
              '\n\t\tFantasy Books',
              textAlign: TextAlign.start,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),
            ),
            pat(),
            Divider(
              height: 4,
              thickness: 1,
            ),
            Text(
              '\n\t\tTechnology Books',
              textAlign: TextAlign.start,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),
            ),
            mat(),
            Divider(
              height:4,
              thickness: 1,
            ),
            Text(
              '\n\t\tBusiness Books',
              textAlign: TextAlign.start,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),
            ),
            cat(),
          ],
        ),
    );
  }
  Container games(String imageVal, String heading, String subHeading)
  {
    return Container(
        width:170.0,
        child:Card(
          child: Wrap(
            children: <Widget>[
              Image.network(imageVal,height:150,width: 200 ),
              ListTile(
                title: Text(heading),
                subtitle: Text(subHeading),
              )
            ],
          ),
        )
    );
  }
  Container gat(){
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10.0),
      height: 220,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          games("https://upload.wikimedia.org/wikipedia/ar/9/98/%D8%A3%D8%B1%D8%B6_%D8%B2%D9%8A%D9%83%D9%88%D9%84%D8%A7.jpg", "أرض زيكولا", "21 \$"),
          games("https://books.google.com/books/content/images/frontcover/TtjsDwAAQBAJ?fife=w200-h300", "الحكيم و الشارد", "30 \$"),
          games("https://books.google.com/books/content/images/frontcover/gGPcDwAAQBAJ?fife=w200-h300", "إرث من الجان", "35 \$"),
          games("https://books.google.com/books/publisher/content/images/frontcover/wr_tDwAAQBAJ?fife=w200-h300", "دماء بقصر البارون", "30.4 \$"),
          games("https://books.google.com/books/content/images/frontcover/Fqh8BwAAQBAJ?fife=w200-h300", "Hulk: The End‏", "25 \$"),
          games("https://books.google.com/books/content/images/frontcover/djhFDwAAQBAJ?fife=w200-h300", "The Next Girl", "29 \$"),
          games("https://books.google.com/books/content/images/frontcover/ZAQaOTyIP84C?fife=w200-h300", "The Murder of Roger Ackroyd", "27 \$"),
          games("https://books.google.com/books/content/images/frontcover/1IaXDwAAQBAJ?fife=w200-h300", "The Flower of death", "24 \$"),
          games("https://books.google.com/books/content/images/frontcover/mnIBzwbvxkoC?fife=w200-h300", "The Devil and the River", "31 \$"),
          games("https://www.4read.net/uploads/images/1583776086.png", "زوجتي من الجن", "29.5 \$"),
          games("https://i.gr-assets.com/images/S/compressed.photo.goodreads.com/books/1302172135l/11028964.jpg", "نصف ميت دفن حيا", "35 \$"),
          games("https://books.google.com/books/publisher/content/images/frontcover/mUmHDwAAQBAJ?fife=w200-h300", "The Lost Causes of Bleak Creek", "24 \$"),
        ],
      ),
    );
  }
  Container fat(){
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10.0),
      height: 220,
      child:
      ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          games("https://books.google.com/books/content/images/frontcover/TpibAgAAQBAJ?fife=w200-h300", "Bullseye‏", "15 \&"),
          games("https://books.google.com/books/publisher/content/images/frontcover/6NO2DwAAQBAJ?fife=w200-h300", "Wrath of Poseidon", "17 \$"),
          games("https://books.google.com/books/content/images/frontcover/90XEDwAAQBAJ?fife=w200-h300", "Peace Talks", "14 \$"),
          games("https://books.google.com/books/content/images/frontcover/e0ubBAAAQBAJ?fife=w200-h300", "Город Пустых", "20 \$"),
          games("https://books.google.com/books/content/images/frontcover/gGPcDwAAQBAJ?fife=w200-h300", "إرث من الجان", "18 \$"),
          games("https://books.google.com/books/content/images/frontcover/Pl2pDwAAQBAJ?fife=w200-h300", "إبنتي تحكم مملكة الجان", "21 \$"),
          games("https://books.google.com/books/content/images/frontcover/kl6pDwAAQBAJ?fife=w200-h300", "مارد من الإنس", "23 \$"),
          games("https://books.google.com/books/content/images/frontcover/kWxlDwAAQBAJ?fife=w200-h300", "قيعان العاشق", "21 \$"),
          games("https://www.nourbook.com/publice/covers_cache_webp/2/1/b/d/ee09225f401bd598b924ca6357bcd046.jpg.webp", "الغروب الدامي", "20 \$"),
          games("https://www.nourbook.com/publice/covers_cache_webp/2/5/0/2/9dbb68ad16502d624abea2b0a95f14dd.jpg.webp", "الشقيقتان", "9 \$"),
        ],
      ),
    );
  }
  Container pat(){
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10.0),
      height: 220,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          games("https://books.google.com/books/content/images/frontcover/B1fyDwAAQBAJ?fife=w200-h300", "همسات خريفية", "23 \$"),
          games("https://books.google.com/books/content/images/frontcover/dpxfDwAAQBAJ?fife=w200-h300", "ثلاثية زودياك: أرض الخيال", "27 \$"),
          games("https://books.google.com/books/publisher/content/images/frontcover/tIaXDwAAQBAJ?fife=w200-h300", "الحبر المسحور‏", "21 \$"),
          games("https://books.google.com/books/publisher/content/images/frontcover/RGPvDwAAQBAJ?fife=w200-h300", "ومضات في الخيال العلمي والغرائبيات 6", "19 \$"),
          games("https://books.google.com/books/content/images/frontcover/7dNqDwAAQBAJ?fife=w200-h300", "يولاند في مملكة الموتى", "21 \$"),
          games("https://books.google.com/books/content/images/frontcover/ZaBtDwAAQBAJ?fife=w200-h300", "جيكا مينالي ولعنة ست", "23 \$"),
          games("https://books.google.com/books/content/images/frontcover/jY-pX6cPxYAC?fife=w200-h300", "Prince of Thorns", "17 \$"),
          games("https://books.google.com/books/content/images/frontcover/gNamAgAAQBAJ?fife=w200-h300", "Tower Lord", "20 \$"),
          games("https://books.google.com/books/content/images/frontcover/XD9GBgAAQBAJ?fife=w200-h300", "Queen of Fire", "21 \$"),
          games("https://books.google.com/books/content/images/frontcover/rL99E5lSM0wC?fife=w200-h300", "Blood Song", "24 \$"),
        ],
      ),
    );
  }
  Container mat(){
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10.0),
      height: 220,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          games("https://books.google.com/books/content/images/frontcover/_i6bDeoCQzsC?fife=w200-h300","Clean Code","21 \$"),
          games("https://books.google.com/books/content/images/frontcover/eXPLDwAAQBAJ?fife=w200-h300","Building Machine Learning Powered Applications","23 \$"),
          games("https://books.google.com/books/content/images/frontcover/WmdsCgAAQBAJ?fife=w200-h300", "Adobe Photoshop CC", "25 \$"),
          games("https://books.google.com/books/content/images/frontcover/vlZaDwAAQBAJ?fife=w200-h300", "Learning PHP, MySQL & JavaScript", "15 \$"),
          games("https://books.google.com/books/content/images/frontcover/eEzlDAAAQBAJ?fife=w200-h300", "The Art of Invisibility", "14 \$"),
          games("https://books.google.com/books/content/images/frontcover/tfc0AQAAQBAJ?fife=w200-h300","Ghost in the Wires","21 \$"),
          games("https://books.google.com/books/content/images/frontcover/fKfNBQAAQBAJ?fife=w200-h300","Ethical Hacking and Penetration Testing ","23 \$"),
          games("https://books.google.com/books/content/images/frontcover/idUdqdDXqnAC?fife=w200-h300","Algorithms","19 \$"),
          games("https://books.google.com/books/content/images/frontcover/NPbkDwAAQBAJ?fife=w200-h300","JavaScript","20 \$"),
          games("https://books.google.com/books/content/images/frontcover/ouXfCwAAQBAJ?fife=w200-h300","Ecommerce Analytics","17 \$"),
        ],
      ),
    );
  }
  Container cat(){
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10.0),
      height: 220,
      child:
      ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          games("https://books.google.com/books/publisher/content/images/frontcover/5V2kDQAAQBAJ?fife=w200-h300","حكمة ستيف جوبز التجارية","20 \$"),
          games("https://books.google.com/books/publisher/content/images/frontcover/T7hrDgAAQBAJ?fife=w200-h300","لا تستسلم أبداً : جاك ما مؤسس مجموعة علي بابا","22 \$"),
          games("https://books.google.com/books/content/images/frontcover/HglLCgAAQBAJ?fife=w200-h300", "كتاب الجيب : تحديد الأهداف: حلول من الخبراء", "23 \$"),
          games("https://books.google.com/books/publisher/content/images/frontcover/Ug9hDwAAQBAJ?fife=w200-h300", "تسويق الخدمات", "20 \$"),
          games("https://books.google.com/books/content/images/frontcover/o1vVDwAAQBAJ?fife=w200-h300", "رائد الاعمال", "19 \$"),
          games("https://books.google.com/books/publisher/content/images/frontcover/sZKNDgAAQBAJ?fife=w200-h300","كفوا عن مضايقتي","21 \$"),
          games("https://books.google.com/books/content/images/frontcover/0CTSDAAAQBAJ?fife=w200-h300","المدير الممارس: التغذية الراجعة المستمرة","23 \$"),
          games("https://books.google.com/books/publisher/content/images/frontcover/PYgvCwAAQBAJ?fife=w200-h300","إدارة المشاريع : حلول من الخبراء","19 \$"),
          games("https://books.google.com/books/content/images/frontcover/LdinCgAAQBAJ?fife=w200-h300","التسويق: لأصحاب الشركات الصغيرة والأعمال الحرة","34 \$"),
          games("https://books.google.com/books/content/images/frontcover/Ag9hDwAAQBAJ?fife=w200-h300","إستراتيجيات التسويق","27 \$"),
        ],
      ),
    );
  }
}
