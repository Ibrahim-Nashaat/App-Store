
import 'package:flutter/material.dart';
import 'package:getwidget/components/carousel/gf_carousel.dart';
class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}
class _HomeState extends State<Home> {
  final List<String> imageList = [
    'https://c.files.bbci.co.uk/13729/production/_112375697_1331db7a-17c0-4401-8cac-6a2309ff49b6.jpg',
    'https://www.extraprog.com/wp-content/uploads/2019/05/mad_blog_5b275dcb6ca641529306571.jpg',
    'https://cdn.vox-cdn.com/thumbor/Xm1C9TWbMK55zAnuR09oD6XMyRI=/0x0:1024x1024/1200x800/filters:focal(444x567:606x729)/cdn.vox-cdn.com/uploads/chorus_image/image/65813576/mobile_MarioKartTour_screen_01.0.png',
    'https://techcrunch.com/wp-content/uploads/2019/04/Bitmoji-For-Games-Platformer.png?w=680',
    'https://images.pexels.com/photos/3082341/pexels-photo-3082341.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
    'https://static01.nyt.com/images/2020/02/06/arts/06netflix/06netflix-superJumbo.jpg',
    'https://store-images.s-microsoft.com/image/apps.21507.13614820593571814.e05c1936-05c6-4259-a9f3-567e20a1ce10.2bcf1bdc-88b3-4ed8-8213-b06a22a63950?w=672&h=378&q=80&mode=letterbox&background=%23FFE4E4E4&format=jpg',
    'https://picxtrix.com/wp-content/uploads/2019/05/AirBrush_Best_Photo_Editor_Apps_Android.jpg',
  ];
  @override
  Widget build(BuildContext context) {
    return ListView(children: <Widget>[
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
        'Most Popular Apps',
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
        'Most Popular Games',
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
        'Apps For You',
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
        'Games For You',
        textAlign: TextAlign.start,
        overflow: TextOverflow.ellipsis,
        style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),
      ),
      mat(),
    ],
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
          games("https://play-lh.googleusercontent.com/JRd05pyBH41qjgsJuWduRJpDeZG0Hnb0yjf2nWqO7VaGKL10-G5UIygxED-WNOc3pg=s180-rw", "PUBG MOBILE", "66 MB"),
          games("https://play-lh.googleusercontent.com/9Y-xblw8XUBtnjdS5OM2v93_XQ2i0dQtWXzbjnR0XMl3hpTfeZAZL-hllTH5loBjdoo=s180-rw", "Call of Duty", "100 MB"),
          games("https://play-lh.googleusercontent.com/PLUrweTw35jmEbl7NNACcXZQjlGuOVdiP-HWwpOk2GUUyHh8wWaU-antu-mt9QqTYMk=s180-rw", "فري فاير", "98 MB"),
          games("https://play-lh.googleusercontent.com/4OkU0KQssQ9vkbrEAXOWfsGYvxYN0Q8ijLTOIxGpt6bANHfR6vJf4Rd3g0Er7rxg8g=s180-rw", "صديقي توم المتكلم وأصحابه", "99 MB"),
          games("https://play-lh.googleusercontent.com/cQBJ7Jwvz0jex8sL7LjgLId-wOdmMajSZbpC-bzHDhS5uK9Zms0fFsXEVNGvlIUk_g=s180-rw", "أسفلت 9", "98 MB"),
          games("https://play-lh.googleusercontent.com/j879CQTTNOJ3Jzg7--T0gInHizfXKf0sMRYisM_wqcJnkbNSaubO7zZU1qvSGPQh990=s180-rw", "FIFA Football", "118 MB"),
          games("https://play-lh.googleusercontent.com/OmRFgoSS-iZDwzkMpygYEjbBkpY-_fpE2CEiEgj2KG0yoj2DcP01fbGMutWEf8ip2tiv=s180-rw", "Rise of Kingdoms", "122 MB"),
          games("https://play-lh.googleusercontent.com/VHB9bVB8cTcnqwnu0nJqKYbiutRclnbGxTpwnayKB4vMxZj8pk1220Rg-6oQ68DwAkqO=s180-rw", "Among Us", "78 MB"),
          games("https://play-lh.googleusercontent.com/tZEKWZPpNftDetL64nJajcLusF3iHnSmPY8_7BO6lD_Yya0m-4PiZ1HrAR2PDzHkknuZ=s180-rw", "Homescapes‏", "88 MB"),
          games("https://play-lh.googleusercontent.com/YVSZZ5UZghNfMn6oG5L1zEny_Fxl-OEIXa6YYaoXX8WlLz1fNAnHI3Os8EVNOs0eilf-=s180-rw", "NBA 2K20", "112 MB"),
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
  Container mat(){
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10.0),
      height: 150,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          games("https://play-lh.googleusercontent.com/5cvdsKiWP8q3L_ePZGmRF4OpN1fkSw3VRHlb4SSYXdZu9s3f4Tx-i5gZ5BS4mn2EhOM=s180-rw","Cover Fire","100 MB"),
          games("https://play-lh.googleusercontent.com/wDBSZuhSkEhpQ869KdJNsDeMHLvbq_f5xLB9avZQwmqjZmv0zd1NTEnwEyUDFVss5Bc=s180-rw","Zombie Hunter","84 MB"),
          games("https://play-lh.googleusercontent.com/PLUrweTw35jmEbl7NNACcXZQjlGuOVdiP-HWwpOk2GUUyHh8wWaU-antu-mt9QqTYMk=s180-rw", "فري فاير", "116 MB"),
          games("https://play-lh.googleusercontent.com/85WZyDdXNVxbUCZjfNs2ikaugRCq_PKWalDIYE9dBRXGBdhMo1ekQQrUtOTb_CpEFBk=s180-rw", "DEAD TARGET", "102 MB"),
          games("https://play-lh.googleusercontent.com/n0QP9xuUrQ2yxEuq2N0cxJh3caQWq9SqkMvdHF8dxzik3Y2icusds9aDahC3qdQtpOs=s180-rw", "Action Shooter", "114 MB"),
          games("https://play-lh.googleusercontent.com/twdY9_b2cbtPBUOuKxQH3_ZnUN_OmoStkuEhm2Fm95vbhKmx1xY7bNKaxJ1tf5zccQ=s180-rw","Ninja’s Creed","88 MB"),
          games("https://play-lh.googleusercontent.com/JRd05pyBH41qjgsJuWduRJpDeZG0Hnb0yjf2nWqO7VaGKL10-G5UIygxED-WNOc3pg=s180-rw","PUBG MOBILE","84 MB"),
          games("https://play-lh.googleusercontent.com/9Y-xblw8XUBtnjdS5OM2v93_XQ2i0dQtWXzbjnR0XMl3hpTfeZAZL-hllTH5loBjdoo=s180-rw", "Call of Duty", "122 MB"),
          games("https://play-lh.googleusercontent.com/C6L1PagB8UvhV4A67gumcVWQGSVAq86-iZCSHAIelrNTBDV1iSeBQQymZm07PzEZxYI=s180-rw", "Brothers in Arms", "111 MB"),
          games("https://play-lh.googleusercontent.com/BEX_T_KsKFuNapvUy8wcx4ae7XuugUHxVJsJmWiJs7PBZ6Srw5aSm6M0X7IQDsn-UBER=s180-rw", "ZOMBIE HUNTER", "116 MB"),
        ],
      ),
    );
  }
}
