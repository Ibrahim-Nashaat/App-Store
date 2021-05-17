import 'package:flutter/material.dart';
import 'package:getwidget/components/carousel/gf_carousel.dart';
import 'package:yat_flutter_final_project/Home.dart';

class Movies extends StatefulWidget {
  @override
  _MoviesState createState() => _MoviesState();
}
class _MoviesState extends State<Movies> with TickerProviderStateMixin {
  TabController _StoreController;
  @override
  void initState() {
    super.initState();
    _StoreController = new TabController( vsync: this, initialIndex: 0, length: 1);
  }
  final List<String> imageList=[
    'https://static.rogerebert.com/uploads/blog_post/primary_image/features/the-best-films-of-the-2010s/Header2.jpg',
    'https://i0.wp.com/film-bunker.com/wp-content/uploads/2019/12/BEST-OF-2010S.jpg?fit=850%2C500&ssl=1',
    'https://tritonvoice.co/wp-content/uploads/2019/03/pic.png',
    'https://cainlive.com/wp-content/uploads/2019/12/Butt.jpg',
    'https://the-artifice.com/wp-content/uploads/2019/01/pixar-2010.jpg',
    'https://g.foolcdn.com/image/?url=https%3A%2F%2Fg.foolcdn.com%2Feditorial%2Fimages%2F459674%2Fenglish.png&w=700&op=resize',
    'https://static01.nyt.com/images/2020/02/06/arts/06netflix/06netflix-superJumbo.jpg',
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
      body:ListView(
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
              '\n\t\tMost Popular Movies',
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
              '\n\t\tAction Movies',
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
              '\n\t\tAnimated Films',
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
              '\n\t\tHorror Movies',
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
              '\n\t\tFantasy Movies',
              textAlign: TextAlign.start,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),
            ),
            cat(),
          ],
      )
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
          games("https://upload.wikimedia.org/wikipedia/en/0/0d/Avengers_Endgame_poster.jpg", "Avengers: Endgame (2019)", "30 \$"),
          games("https://upload.wikimedia.org/wikipedia/en/thumb/b/b0/Avatar-Teaser-Poster.jpg/220px-Avatar-Teaser-Poster.jpg", "Avatar (2009) ", "35 \$"),
          games("https://upload.wikimedia.org/wikipedia/en/1/19/Titanic_%28Official_Film_Poster%29.png", "Titanic (1997)", "30.4 \$"),
          games("https://upload.wikimedia.org/wikipedia/en/a/a2/Star_Wars_The_Force_Awakens_Theatrical_Poster.jpg", "Star Wars: The Force Awakens (2015)", "25 \$"),
          games("https://upload.wikimedia.org/wikipedia/en/4/4d/Avengers_Infinity_War_poster.jpg", "Avengers: Infinity War (2018)", "29 \$"),
          games("https://upload.wikimedia.org/wikipedia/en/thumb/6/6e/Jurassic_World_poster.jpg/220px-Jurassic_World_poster.jpg", "Jurassic World (2015)", "27 \$"),
          games("https://upload.wikimedia.org/wikipedia/en/9/9d/Disney_The_Lion_King_2019.jpg", "The Lion King (2019)", "24 \$"),
          games("https://upload.wikimedia.org/wikipedia/en/thumb/4/4f/Frozen_2_poster.jpg/220px-Frozen_2_poster.jpg", "Frozen II (2019)", "31 \$"),
          games("https://upload.wikimedia.org/wikipedia/en/d/d6/Black_Panther_%28film%29_poster.jpg", "Black Panther (2018)", "29.5 \$"),
          games("https://upload.wikimedia.org/wikipedia/en/d/df/Harry_Potter_and_the_Deathly_Hallows_%E2%80%93_Part_2.jpg", "Harry Potter 2 (2011)", "35 \$"),
          games("https://upload.wikimedia.org/wikipedia/en/d/d6/Beauty_and_the_Beast_2017_poster.jpg", "Beauty and the Beast (2017)", "21 \$"),
          games("https://upload.wikimedia.org/wikipedia/en/2/27/The_Incredibles_2.jpg", "Incredibles 2 (2018)", "24 \$"),
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
          games("https://i.egycdn.com/pic/RHNhSUNlY21ZbW1FbW1tWXZtYkVjdmN2d0tQbWJ2dGNL.jpg", "Outside the Wire (2021)", "15 \&"),
          games("https://i.egycdn.com/pic/WmFwZndlY21ZWW12Y3ZjbXZ2UmNtVG13VGJtbW1tbWJs.jpg", "Rogue City (2020)", "17 \$"),
          games("https://i.egycdn.com/pic/WmFwZndlY21MdGNtam1UTFJjdmNsd1RibGFsdmM.jpg", "Tanhaji: The Unsung Warrior (2020)", "14 \$"),
          games("https://i.egycdn.com/pic/WmFwZndlY21ZWVR2bVltbWpFY1B3Q2ptVGptbW1nYQ.jpg", "Legacy of Lies (2020)", "20 \$"),
          games("https://i.egycdn.com/pic/WmFwZndlY21ZWW9OVHBqRWNtYm1oVENqbUV4bUU.jpg", "Fatman (2020)", "18 \$"),
          games("https://i.egycdn.com/pic/RHNhSUNlY21ZcG1tam12bWptYWN3VHZsbWptandUcEU.jpg", "Mulan (2020)", "21 \$"),
          games("https://i.egycdn.com/pic/WmFwZndlY21Udm1tbWJtbW1wakVjY2t3eG1teGxtR3c.jpg", "حرب كرموز (2018)", "23 \$"),
          games("https://i.egycdn.com/pic/WmFwZndlY21ZcG9OWUVtbUVjbGx2Y21tdmNtbW1FbW0.jpg", "حملة فرعون (2019)", "21 \$"),
          games("https://i.egycdn.com/pic/RHNhSUNlY21MTllFbWJtSFJjbUV3ZENqbXZQdk5t.jpg", "الممر (2019)", "20 \$"),
          games("https://i.egycdn.com/pic/RHNhSUNlY3ZOam1ibXBtbWJFY21MY21vVUxjdndL.jpg", "جواب اعتقال (2017)", "9 \$"),
          games("https://i.egycdn.com/pic/WmFwZndlY21tbWJtVG9OYWNQbUlsdmN2d1B2TnY.jpg", "الجزيرة (2007)", "24 \$"),
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
          games("https://upload.wikimedia.org/wikipedia/en/thumb/2/24/Ice_Age_Dawn_of_the_Dinosaurs_theatrical_poster.jpg/220px-Ice_Age_Dawn_of_the_Dinosaurs_theatrical_poster.jpg", "Ice Age: Dawn of the Dinosaurs (2009)", "23 \$"),
          games("https://upload.wikimedia.org/wikipedia/en/9/98/Coco_%282017_film%29_poster.jpg", "Coco (2017)", "27 \$"),
          games("https://upload.wikimedia.org/wikipedia/en/thumb/0/05/Up_%282009_film%29.jpg/220px-Up_%282009_film%29.jpg", "Up (2009) ‏", "21 \$"),
          games("https://upload.wikimedia.org/wikipedia/en/thumb/2/26/Moana_Teaser_Poster.jpg/220px-Moana_Teaser_Poster.jpg", "Moana (2016)", "19 \$"),
          games("https://upload.wikimedia.org/wikipedia/en/thumb/0/05/Frozen_%282013_film%29_poster.jpg/220px-Frozen_%282013_film%29_poster.jpg", "Frozen (2013)", "21 \$"),
          games("https://upload.wikimedia.org/wikipedia/en/thumb/3/3e/Finding_Dory.jpg/220px-Finding_Dory.jpg", "Finding Dory (2016)", "23 \$"),
          games("https://upload.wikimedia.org/wikipedia/en/2/29/Despicable_Me_2_poster.jpg", "Despicable Me 2 (2013)", "17 \$"),
          games("https://upload.wikimedia.org/wikipedia/en/b/b9/Shrek_2_poster.jpg", "Shrek 2 (2004)", "20 \$"),
          games("https://upload.wikimedia.org/wikipedia/en/thumb/c/c4/Madagascar3-Poster.jpg/220px-Madagascar3-Poster.jpg", "Madagascar 3 (2012)", "21 \$"),
          games("https://upload.wikimedia.org/wikipedia/en/6/63/Monsters_Inc.JPG", "Monsters University (2013)", "24 \$"),
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
          games("https://upload.wikimedia.org/wikipedia/en/8/86/The_Silence_of_the_Lambs_poster.jpg","The Silence of the Lambs (1991)","21 \$"),
          games("https://upload.wikimedia.org/wikipedia/en/3/34/TheNunPoster.jpg","The Nun (2018) ","23 \$"),
          games("https://upload.wikimedia.org/wikipedia/en/0/08/Annabelle_Creation.jpg", "Annabelle: Creation (2017)", "25 \$"),
          games("https://upload.wikimedia.org/wikipedia/en/thumb/1/1f/Conjuring_poster.jpg/220px-Conjuring_poster.jpg", "The Conjuring (2013)", "15 \$"),
          games("https://upload.wikimedia.org/wikipedia/en/a/a2/The_Mummy_%282017%29.jpg", "The Mummy (2017)", "14 \$"),
          games("https://upload.wikimedia.org/wikipedia/en/thumb/b/b7/The_Mummy_Returns_poster.jpg/220px-The_Mummy_Returns_poster.jpg","The Mummy Returns (2001)","21 \$"),
          games("https://upload.wikimedia.org/wikipedia/en/5/5a/It_%282017%29_poster.jpg","It (2017)","23 \$"),
          games("https://upload.wikimedia.org/wikipedia/en/thumb/d/df/I_am_legend_teaser.jpg/220px-I_am_legend_teaser.jpg","I Am Legend (2007)","19 \$"),
          games("https://upload.wikimedia.org/wikipedia/en/thumb/d/dc/World_War_Z_poster.jpg/220px-World_War_Z_poster.jpg","World War Z (2013)","20 \$"),
          games("https://i.egycdn.com/pic/WmFwZndlY21MTll2bXZtdm1FRWNtYmx2dE5qY3dsbUU.jpg","122 (2019)","17 \$"),
          games("https://i.egycdn.com/pic/WmFwZndlY21MTkhjbWJ2Y3ZSY3htSWxtcG12Y3ZOYg.jpg","الفيل الأزرق 2 (2019)","19 \$"),
          games("https://i.egycdn.com/pic/RHNhSUNlY21MY21qbUVtam1wYkVjbW1tVHZtRW1qbWpQSw.jpg","Bhoot (2020)","18 \$"),
          games("https://upload.wikimedia.org/wikipedia/en/thumb/0/00/Us_%282019%29_theatrical_poster.png/220px-Us_%282019%29_theatrical_poster.png","Us (2019)","23 \$")
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
          games("https://upload.wikimedia.org/wikipedia/en/thumb/3/36/Alice_in_Wonderland_%282010_film%29.png/220px-Alice_in_Wonderland_%282010_film%29.png","Alice in Wonderland (2010)","20 \$"),
          games("https://upload.wikimedia.org/wikipedia/en/thumb/d/d4/The_Voyage_of_the_Dawn_Treader_poster.jpg/220px-The_Voyage_of_the_Dawn_Treader_poster.jpg","The Chronicles of Narnia(2010) ","22 \$"),
          games("https://upload.wikimedia.org/wikipedia/en/thumb/a/a1/Gullivers_travels_2010_poster.jpg/220px-Gullivers_travels_2010_poster.jpg", "Gulliver's Travels (2010)", "23 \$"),
          games("https://upload.wikimedia.org/wikipedia/en/thumb/8/8e/The_Last_Airbender_Poster.png/220px-The_Last_Airbender_Poster.png", "The Last Airbender (2010)", "20 \$"),
          games("https://upload.wikimedia.org/wikipedia/en/thumb/d/df/Prince_of_Persia_poster.jpg/220px-Prince_of_Persia_poster.jpg", "Prince of Persia (2010)", "19 \$"),
          games("https://upload.wikimedia.org/wikipedia/en/thumb/d/d7/Eclipse_Theatrical_One-Sheet.jpg/220px-Eclipse_Theatrical_One-Sheet.jpg","The Twilight Saga (2010)","21 \$"),
          games("https://upload.wikimedia.org/wikipedia/en/thumb/c/c6/On_Stranger_Tides_Poster.jpg/220px-On_Stranger_Tides_Poster.jpg","Pirates of the Caribbean (2010)","23 \$"),
          games("https://upload.wikimedia.org/wikipedia/en/thumb/e/e2/Red_riding_hood_ver2.jpg/215px-Red_riding_hood_ver2.jpg","Red Riding Hood (2011)","19 \$"),
          games("https://upload.wikimedia.org/wikipedia/en/8/8a/The_Lord_of_the_Rings_The_Fellowship_of_the_Ring_%282001%29.jpg","The Lord of the Rings (2001)","34 \$"),
          games("https://upload.wikimedia.org/wikipedia/en/thumb/8/8e/Journey_2_Poster.jpg/220px-Journey_2_Poster.jpg","Journey 2 (2012)","27 \$"),
        ],
      ),
    );
  }
}
