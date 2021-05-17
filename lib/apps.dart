import 'package:flutter/material.dart';
import 'package:getwidget/components/carousel/gf_carousel.dart';
import 'package:yat_flutter_final_project/Home.dart';

class Apps extends StatefulWidget {
  @override
  _AppsState createState() => _AppsState();
}
class _AppsState extends State<Apps> with TickerProviderStateMixin {
  TabController _StoreController;
  @override
  void initState() {
    super.initState();
    _StoreController = new TabController( vsync: this, initialIndex: 0, length: 1);
  }
  final List<String> imageList = [
   'https://picxtrix.com/wp-content/uploads/2019/05/AirBrush_Best_Photo_Editor_Apps_Android.jpg',
   'https://images.pexels.com/photos/340103/pexels-photo-340103.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
   'https://images.pexels.com/photos/3082341/pexels-photo-3082341.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
   'https://static01.nyt.com/images/2020/02/06/arts/06netflix/06netflix-superJumbo.jpg',
   'https://store-images.s-microsoft.com/image/apps.21507.13614820593571814.e05c1936-05c6-4259-a9f3-567e20a1ce10.2bcf1bdc-88b3-4ed8-8213-b06a22a63950?w=672&h=378&q=80&mode=letterbox&background=%23FFE4E4E4&format=jpg',
    'https://open.scdn.co/cdn/images/og-image.64b84348.png',
    'https://www.imore.com/sites/imore.com/files/styles/large/public/field/image/2019/07/prisma-screens-01.png',
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
              '\n\t\tMost Popular Apps',
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
              '\n\t\tSocial Media Apps',
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
              '\n\t\tMovies Apps',
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
              '\n\t\tCamera And Photo Apps',
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
              '\n\t\tMusic Apps',
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
        width:150.0,
        child:Card(
          child: Wrap(
            children: <Widget>[
              Image.network(imageVal,width: 200,height:80 ),
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
      height: 150,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          games("https://cdn2.iconfinder.com/data/icons/social-media-2285/512/1_Pinterest_colored_svg-128.png", "Pinterest", "66 MB"),
          games("https://cdn2.iconfinder.com/data/icons/social-icons-33/128/Google-128.png", "Google", "100 MB"),
          games("https://cdn3.iconfinder.com/data/icons/social-media-special/256/duckduckgo-128.png", "Duck Duck Go", "98 MB"),
          games("https://cdn2.iconfinder.com/data/icons/social-media-2285/512/1_Reddit_colored_svg-128.png", "Reddit", "99 MB"),
          games("https://cdn3.iconfinder.com/data/icons/social-media-2169/24/social_media_social_media_logo_steam-128.png", "Steam", "98 MB"),
          games("https://cdn2.iconfinder.com/data/icons/social-media-applications/64/social_media_applications_28-yelp-128.png", "Yelp", "118 MB"),
          games("https://cdn0.iconfinder.com/data/icons/free-social-media-set/24/msn-128.png", "ButterFly", "122 MB"),
        ],
      ),
    );
  }
  Container fat(){
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10.0),
      height: 150,
      child:
      ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          games("https://cdn1.iconfinder.com/data/icons/social-media-2285/512/Colored_Facebook3_svg-128.png", "FaceBook", "23 MB"),
          games("https://cdn3.iconfinder.com/data/icons/social-network-30/512/social-01-128.png", "WhatsApp", "47 MB"),
          games("https://cdn2.iconfinder.com/data/icons/social-media-2285/512/1_Instagram_colored_svg_1-128.png", "Instagram", "48 MB"),
          games("https://cdn4.iconfinder.com/data/icons/social-media-2285/1024/logo-128.png", "Messenger", "66 MB"),
          games("https://image.flaticon.com/icons/png/128/1384/1384060.png", "YouTube", "70 MB"),
          games("https://image.flaticon.com/icons/png/128/174/174876.png", "Twitter", "33 MB"),
          games("https://image.flaticon.com/icons/png/128/174/174857.png", "LinkedIn", "45 MB"),
          games("https://cdn0.iconfinder.com/data/icons/social-network-24/512/Telegram-128.png", "Telegram", "58 MB"),
          games("https://cdn4.iconfinder.com/data/icons/social-media-flat-7/64/Social-media_Tiktok-128.png", "TikTok", "74 MB"),
          games("https://cdn3.iconfinder.com/data/icons/social-media-2169/24/social_media_social_media_logo_imo-128.png", "Imo", "40 MB"),
          games("https://cdn2.iconfinder.com/data/icons/social-media-applications/64/social_media_applications_5-line-128.png", "Line", "23 MB"),
        ],
      ),
    );
  }
  Container pat(){
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10.0),
      height: 150,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          games("https://play-lh.googleusercontent.com/TBRwjS_qfJCSj1m7zZB93FnpJM5fSpMA_wUlFDLxWAb45T9RmwBvQd5cWR5viJJOhkI=s180-rw", "Netflix", "144 MB"),
          games("https://play-lh.googleusercontent.com/VojafVZNddI6JvdDGWFrRmxc-prrcInL2AuBymsqGoeXjT4f9sv7KnetB-v3iLxk_Koi=s180-rw", "Amazon Prime Video", "122 MB"),
          games("https://play-lh.googleusercontent.com/xoGGYH2LgLibLDBoxMg-ZE16b-RNfITw_OgXBWRAPin2FZY4FGB9QKBYApR-0rSCkQ=s180-rw", "Disney+‏", "166 MB"),
          games("https://play-lh.googleusercontent.com/vr-Rj1QtZuDXTHk8G6_dt4adtqLQeCzt7Db7n6Z4Nc0PsAwhvZpSB6FTGQKeNn7FF7g=s180-rw", "WATCH iT!", "118 MB"),
          games("https://play-lh.googleusercontent.com/CjzbMcLbmTswzCGauGQExkFsSHvwjKEeWLbVVJx0B-J9G6OQ-UCl2eOuGBfaIozFqow=s180-rw", "Crunchyroll", "202 MB"),
          games("https://play-lh.googleusercontent.com/9S5mBb4mN_QKzEuNM28qBWqeC_9bXNomAR0vq2nnk9Hn7AZ8gyUfPVvXva67wtKeCbo=s180-rw", "ﺷﺎﻫﺪ - Shahid", "196 MB"),
          games("https://play-lh.googleusercontent.com/-Bac1Iy76MPn8MQJCVrrIdJjo4cJJsvWJNGLoTGN6-fEfaVeKhzXYKN94umQvI7vdwE=s180-rw", "Viu", "122 MB"),
          games("https://play-lh.googleusercontent.com/hQcs7r8XlsS3127JCZo_-AL5QyFFh6MBW5iUVhWglafzr8g7HboM9wxQHRYefFxeIA=s180-rw", "شاهد OSN أونلاين", "122 MB"),
        ],
      ),
    );
  }
  Container mat(){
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10.0),
      height: 150,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          games("https://play-lh.googleusercontent.com/sI5k9kS5jBsC8WIBUCBwe6jvk45WPECT-TbLiX5QtPJHw-oXzNyk-5JN2V4OZe_FaQ=s180-rw","YouCam Makeup","100 MB"),
          games("https://play-lh.googleusercontent.com/mkGI-MJlAEnKXjMgtKLS3Ja0LocSUThcFPQg0IbWqyQE5HeuPJIMRdEVZPncB-9kTaw=s180-rw","Lumii","84 MB"),
          games("https://play-lh.googleusercontent.com/EEQ6z_3i9Co5ZMdp7qCSGiFd9ionjxLz3rMmDWVO1wDwUNi-EaEZFm4fyG5GWMrt5w=s180-rw", "Face App", "116 MB"),
          games("https://play-lh.googleusercontent.com/RmvBSjkThmix4S-hDIeIOknlmD67ZAah0Kfklo31ZsuMfRxni_B2oi2q01hWA_OsJw=s180-rw", "PicsArt Photo Editor", "102 MB"),
          games("https://play-lh.googleusercontent.com/Rilq4obCk7XIl2Pjb8XT-Ydh_aI3hBNeFwro9fFXrIAuC-zPxCZ4feE4rx5fZ3jHNLw=s180-rw", "SnapSeed", "114 MB"),
          games("https://play-lh.googleusercontent.com/e8RmAyXaKy5plJs7oV3p6vx2C8c5jonDsefLKvAG3w7YUB7VQYRJ2jFM4E0PBuZiQQw=s180-rw","Remini-Ai","88 MB"),
          games("https://play-lh.googleusercontent.com/C75pm0OwfckbJAueHn2psJXr43vF9CypVOHydVgRHA8JHXEFJbO479DIBpfUo1mc2Q=s180-rw","ReFace","84 MB")
        ],
      ),
    );
  }
  Container cat(){
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10.0),
      height: 150,
      child:
      ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          games("https://cdn2.iconfinder.com/data/icons/social-icons-33/128/Spotify-128.png", "Spotify", "78 MB"),
          games("https://cdn1.iconfinder.com/data/icons/lumin-social-media-icons/512/Soundcloud-128.png", "Sound Cloud", "63 MB"),
          games("https://play-lh.googleusercontent.com/_4m4B6gB_CvaLHCctKR9dDy_9VzkLhm_NlOIwmvwqYSeOlfe5vshbnauMcOOdVJA5A=s180-rw", "Anghami", "98 MB"),
          games("https://play-lh.googleusercontent.com/0A2TM0KxPQpQ6zxOzLOZX_w_YSQ6NjYqtYpHeaaoy8r_HAwBUW4G-xLmKC15tILH4pY=s180-rw", "Lark Player", "88 MB"),
          games("https://play-lh.googleusercontent.com/svFxRg5u45J6Bm1gitundgzU0jqf4d9QCELxybiESIMnm7C7NXV6ODs_bAYgXe6VfIA=s180-rw", "Deezer", "102 MB"),
          games("https://play-lh.googleusercontent.com/cCX0HtJW9hqNWQpGGBpZfBiKy981wGMEEa5FSqza-3jC8DHe-3UHdZ1tbWKAbFoLmCE=s180-rw", "Groovepad", "45 MB"),
          games("https://play-lh.googleusercontent.com/nFT6pg4n7wrrzyjDz3U5VE-ikjFbFKhaxKh3Yr8jC0jv6krTV4kLd6DFwPlb5gVQ3zhl=s180-rw", "Super Sound", "58 MB"),
        ],
      ),
    );
  }
}
