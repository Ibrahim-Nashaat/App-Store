import 'package:flutter/material.dart';
import 'package:getwidget/components/carousel/gf_carousel.dart';
import 'package:yat_flutter_final_project/Home.dart';

class Games extends StatefulWidget {
  @override
  _GamesState createState() => _GamesState();
}

class _GamesState extends State<Games> with TickerProviderStateMixin {
  TabController _StoreController;
  @override
  void initState() {
    super.initState();
    _StoreController = new TabController( vsync: this, initialIndex: 0, length: 1);
  }
  final List<String> imageList =[
  'https://c.files.bbci.co.uk/13729/production/_112375697_1331db7a-17c0-4401-8cac-6a2309ff49b6.jpg',
  'https://cdn.vox-cdn.com/thumbor/Xm1C9TWbMK55zAnuR09oD6XMyRI=/0x0:1024x1024/1200x800/filters:focal(444x567:606x729)/cdn.vox-cdn.com/uploads/chorus_image/image/65813576/mobile_MarioKartTour_screen_01.0.png',
  'https://i.ytimg.com/vi/H1HLnvr3RYA/maxresdefault.jpg',
  'https://techcrunch.com/wp-content/uploads/2019/04/Bitmoji-For-Games-Platformer.png?w=680',
  'https://www.extraprog.com/wp-content/uploads/2019/05/mad_blog_5b275dcb6ca641529306571.jpg',
  'https://builtin.com/sites/default/files/styles/ckeditor_optimize/public/inline-images/Big-Fish-Games-video-gaming-company_0.png',
  'https://technostalls.com/wp-content/uploads/2015/11/Most-Popular-Android-Games-Top-iPhone-Games-Candy-Crush-Saga.jpg',
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
            '\n\t\tMost Popular Games',
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
            '\n\t\tFootball Games',
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
            '\n\t\tRacing Games',
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
            '\n\t\tAction Games',
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
            '\n\t\tStrategic Games',
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
  Container fat(){
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10.0),
      height: 150,
      child:
      ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          games("https://play-lh.googleusercontent.com/j879CQTTNOJ3Jzg7--T0gInHizfXKf0sMRYisM_wqcJnkbNSaubO7zZU1qvSGPQh990=s180-rw", "FIFA Football‏", "23 MB"),
          games("https://play-lh.googleusercontent.com/EAm6RaSxNIgU8KlK3Jo6T1AojQ1rr8HCBNFtSUOplizKsl9taGA-CI0s5Yyg7hFE1K4=s180-rw", "eFootball PES 2021", "47 MB"),
          games("https://play-lh.googleusercontent.com/hZjjZC_wERr05raTgSHV_5MmaacnLECvnRHb0BFLD66wqxPsyhz56tzn-PH0BppRV1Q=s180-rw", "كأس العالم 2021", "48 MB"),
          games("https://play-lh.googleusercontent.com/zKWBmKvHMUcvTAQQMHkdQZv2g2qJGzVbyPxYqBySeLaeMl5_QFJFU5FUv0ICpWQ0WE4=s180-rw", "Score! Match", "66 MB"),
          games("https://play-lh.googleusercontent.com/EwZ3JYb8nD0HLul-djQLT4OkIejg1hiFaDYhqLivKXDt362YC0MYKDZCTIT1p4b18ps=s180-rw", "Dream League Soccer 2021", "70 MB"),
          games("https://play-lh.googleusercontent.com/Om4QWAmFwHl9mTyghGyhXD1sDb7-GTd-_pb_9Stt2SsWxmBGl2-tBdXZwdbzFtBwBKQ=s180-rw", "كرة القدم رويال", "33 MB"),
          games("https://play-lh.googleusercontent.com/-JX_JWz0B4Qo38v8X3J8FETuCn_FDdJenQu184cf3_CADfJBdlD7osdol7kyXHVwZD4=s180-rw", "Soccer Super Star - كره القدم", "45 MB"),
          games("https://play-lh.googleusercontent.com/Hdu6S_qNdlktrAjIJlvTEWoYhwrVUKQJtzEl7q5UnIUA3rClLbd6s1jU7p6UOsx5nDo=s180-rw", "Soccer Star 2021 Football Cards", "58 MB"),
          games("https://play-lh.googleusercontent.com/pQJ7QlzLTalc9qDpi2P3jPNeXoGwQN2LGHc1XarZzeWwRVsVGDhZO-461XJlexEWTv5Y=s180-rw", "Perfect Kick", "74 MB"),
          games("https://play-lh.googleusercontent.com/68cNTZ3rEMMyjAqGQXksUVtwyHU7sbkDITwN_LZF8yA1MxZ2m4ILmBTYy_TRLG9a_cw=s180-rw", "Rumble Stars Football", "40 MB"),
          games("https://play-lh.googleusercontent.com/5IP-crlNlbInT6XeLT4wL6LvSC7VpUT6yRy3aFLf8uexBS7l12Mq6IVYbQCUqnGLjw=s180-rw", "Captain Tsubasa", "23 MB"),
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
          games("https://play-lh.googleusercontent.com/nM3nHVAK1oJIcU5BpjQMowaOuru_RNXwAb1y-BP6BGEwWTiAZvWrwPzMhrSfKzaGAHAf=s180-rw", "الشارع سباق 3D", "144 MB"),
          games("https://play-lh.googleusercontent.com/0oRCjd4AZFilcY4-gsrgfSAUtgtwt6xmQXhibA-CooU3VD1sF4o-OEy0yHsLkgy_ZQ=s180-rw", "CarX Drift Racing", "122 MB"),
          games("https://play-lh.googleusercontent.com/GQELMXMxUZ1v2G--6CZmyfUpFa1AIlvDciHeF-CvlZ5C-UbBOZBuyxHD9IRVaiJ3eg=s180-rw", "CSR Racing 2", "166 MB"),
          games("https://play-lh.googleusercontent.com/xMRV92isAcFWE8c2sZk90mZNxBICaVU1BSjsbf65g1z9tElBNOUeJpNrwH4Kcqu8TQ=s180-rw", "Asphalt Nitro", "118 MB"),
          games("https://play-lh.googleusercontent.com/pK-5TELK5bvbRhLfU6HFqxiaYypPJOWd4Qxy-MDe1JCSQZ29dKsrzpWnImqE9Lqruw=s180-rw", "Racing Fever: Moto", "202 MB"),
          games("https://play-lh.googleusercontent.com/cQBJ7Jwvz0jex8sL7LjgLId-wOdmMajSZbpC-bzHDhS5uK9Zms0fFsXEVNGvlIUk_g=s180-rw", "أسفلت 9", "196 MB"),
          games("https://play-lh.googleusercontent.com/q0b-uKBQ8SGgU3BRkXIKAWgirzG5BCWjZ8uAq1Z0a0n4H_SxdlSi5aV2YUzJtE67fXk=s180-rw", "Asphalt 8", "122 MB"),
          games("https://play-lh.googleusercontent.com/1CAHVQrzr5yZciKia1Ird83gGin2CqJGuEOvX44gMK-FZ61epy6mTSGa9t1m_Owd1PLr=s180-rw", "Asphalt Xtreme", "122 MB"),
          games("https://play-lh.googleusercontent.com/n9_tEUOXWNjLJT4pDzK4p4aZwUOOkuIpexQKz-cJbIgmVYTxvEcq2nZiCajE_-V7DfQ=s180-rw", "سباق الشوارع عالي الجودة", "122 MB"),
          games("https://play-lh.googleusercontent.com/O0v6VoZrGz3aXphnB2IY0GfAnoEkL8P0s0lATGTLSntAB-dXtwVuWBcenWCxc10fWZQ=s180-rw", "الجزء الثاني من سباق كاركس دريفت", "122 MB"),
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
  Container cat(){
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10.0),
      height: 150,
      child:
      ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          games("https://play-lh.googleusercontent.com/DVGGdf1jXL0dQQzUCe_TvYhSysFdL_imCgZtAMdlY7eWjUAF1x4UzZtkX1KAXiXISQ=s180-rw", "الملجأ الأخير", "78 MB"),
          games("https://play-lh.googleusercontent.com/akv2Bdp7i5Vv-sl9FuP3_dhWpUO80zULf-Pkh6RFleomEp6pZorHuCNm3FbR9oAMunVK=s180-rw", "Clash of Clans", "63 MB"),
          games("https://play-lh.googleusercontent.com/kJlcQvvTHqMmdjc96FOfRbEpSx3PmLEdRqvSbe7aiHY-sa_ZZn0rFqNifyaKiQzkbEc=s180-rw", "Age of Conquest 4", "98 MB"),
          games("https://play-lh.googleusercontent.com/eEXREmvN_wnP6DIS_LqKEYq2mxicnUlIMpBE1jQSIziXA-oTTgMW-xV6dHxTk67eLEc=s180-rw", "Clash of Kingsr", "88 MB"),
          games("https://play-lh.googleusercontent.com/OmRFgoSS-iZDwzkMpygYEjbBkpY-_fpE2CEiEgj2KG0yoj2DcP01fbGMutWEf8ip2tiv=s180-rw", "Rise of Kingdoms", "102 MB"),
          games("https://play-lh.googleusercontent.com/28ZrB-IdK-gKKTmBMgiOspBod0gWmO8L7UDZdtKxSOW90TQNIHcmEdMz4Eza6lKG9JM=s180-rw", "مواجهة الأبطال-MLBB‏", "45 MB"),
          games("https://play-lh.googleusercontent.com/5nvohHjx2eGs3JitMcgc36vuAaqsnZZbuXLKFIaKHFfCM6dhg2OYF1LmxEHNId2L6-I=s180-rw", "Art of War 3", "58 MB"),
          games("https://play-lh.googleusercontent.com/DwUwSgeeK32diCLLsYoePO61Ynu6Q1Pdfs0RN7rRlu1w9bcB7talkPR8HsBdkc16iA=s180-rw", "War of Kings", "122 MB"),
          games("https://play-lh.googleusercontent.com/bKP8AO7D3_9PRw29bLQxEaHTEgWRk3tnuZICSBtZnn_2YnWR4oNssjK_dKzpUUlRqA=s180-rw", "سفن المعركة", "122 MB"),
          games("https://play-lh.googleusercontent.com/UlyGE1J33f5F_9T5ra2TFQQCnatqGvp1WH9WpM-V5JqED56IUhkpGfBWNtbRk6qirKk=s180-rw", "Defense Zone 3 HD‏", "122 MB"),
        ],
      ),
    );
  }
}
