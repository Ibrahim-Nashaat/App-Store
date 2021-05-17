import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:getwidget/components/avatar/gf_avatar.dart';
import 'package:getwidget/components/drawer/gf_drawer.dart';
import 'package:getwidget/components/drawer/gf_drawer_header.dart';
import 'package:getwidget/shape/gf_avatar_shape.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:yat_flutter_final_project/login.dart';

class MyNavigationDrawer extends StatefulWidget {
  @override
  _MyNavigationDrawerState createState() => _MyNavigationDrawerState();
}
class _MyNavigationDrawerState extends State<MyNavigationDrawer> {
  String email="";
   savePref(email)async{
    SharedPreferences preferences=await SharedPreferences.getInstance();
    preferences.setString("email", email);
  }
   getPref()async{
    SharedPreferences preferences=await SharedPreferences.getInstance();
    setState(() {
      email=preferences.getString("email");
  });
  }
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_){
      getPref();
    }
      );

  }

  final _menutextcolor = TextStyle(
  color: Colors.black,
  fontSize: 14.0,
  fontWeight: FontWeight.w500,
 );
final _iconcolor = new IconThemeData(
color: Color(0xff757575),
);
  FirebaseAuth auth=FirebaseAuth.instance;
  Future<void> logOut()async{
    User user= auth.signOut() as User;
  }
  @override
  Widget build(BuildContext context) {
    return GFDrawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            GFDrawerHeader(
              currentAccountPicture: GFAvatar(
                shape: GFAvatarShape.square,
                radius: 80.0,
                backgroundImage: NetworkImage("https://previews.123rf.com/images/juliasart/juliasart1704/juliasart170400022/75406270-vector-girl-icon-woman-avatar-face-icon-cartoon-style-.jpg"),
              ),
              otherAccountsPictures: <Widget>[
                Image(
                  image: NetworkImage(
                      "https://www.nj.com/resizer/zovGSasCaR41h_yUGYHXbVTQW2A=/1280x0/smart/cloudfront-us-east-1.images.arcpublishing.com/advancelocal/SJGKVE5UNVESVCW7BBOHKQCZVE.jpg"),
                    fit: BoxFit.cover,
                ),
              ],
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(email.split('@').first),
                  Text(email),
                ],
              ),
            ),
            ListTile(
              leading: IconTheme(
                data: _iconcolor,
                child: Icon(Icons.apps),
              ),
              title: Text("My apps & games", style: _menutextcolor),
              selected: true,
              onTap: (){},
            ),
            ListTile(
              leading: IconTheme(
                data: _iconcolor,
                child: Icon(Icons.notifications),
              ),
              title: Text("Notification",style: _menutextcolor),
              onTap: (){},
            ),
            ListTile(
              leading:
              IconTheme(
                data: _iconcolor,
                child: Icon(Icons.sync),
              ),
              title: Text("Subscription",style: _menutextcolor),
              onTap: (){},
            ),
            ListTile(
              leading:
              IconTheme(
                data: _iconcolor,
                child: Icon(Icons.collections_bookmark),
              ),
              title: Text("WishList",style: _menutextcolor),
              onTap: (){},
            ),
            Divider(),
            ListTile(
              leading:
              IconTheme(
                data: _iconcolor,
                child: Icon(Icons.settings),
              ),
              title: Text("Settings",style: _menutextcolor),
              onTap: (){},
            ),
            Divider(),
            ListTile(
              title: Text("Help & feedback",style: _menutextcolor),
              onTap: (){},
            ),
            Divider(
              height: 10.0,
            ),
            ListTile(
              title: Text("About Store",style: _menutextcolor),
              onTap: (){},
            ),
            ListTile(
              leading:
              IconTheme(
                data: _iconcolor,
                child: Icon(Icons.logout),
              ),
              title: Text("Logout",style: _menutextcolor),
              onTap: (){
                 logOut();
                 Navigator.pushReplacement(context, MaterialPageRoute(builder: (BuildContext context)=>LogInScreen()));
              },
            ),
          ],
        ),
      );

  }
}