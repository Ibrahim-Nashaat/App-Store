import 'package:flutter/material.dart';

class StoreSearch extends SearchDelegate<String>{
  final appsSuggetions = [
    "WhatsUp",
    "LinkedIn",
    "Twitter",
    "SnapChat"
  ];
  final recentSearches = [
    "WhatsUp",
    "LinkedIn",
    "Twitter",
    "SnapChat"
  ];
  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton( icon:Icon(Icons.clear), onPressed: (){
        query="";
      })
    ];
  }
  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
      icon:AnimatedIcon(
        icon:AnimatedIcons.menu_arrow,
        progress: transitionAnimation,
      ),
      onPressed: (){
        close(context, null);
      },
    );
  }
  @override
  Widget buildResults(BuildContext context) {
    return null;
  }
  @override
  Widget buildSuggestions(BuildContext context) {
    final suggestionList = query.isEmpty?recentSearches:appsSuggetions.where((p)=>p.startsWith(query)).toList();
    return ListView.builder(
      itemCount: suggestionList.length,
      itemBuilder: (context, index)=> ListTile(
        onTap: (){},
        leading: Icon(Icons.queue),
        title: RichText(
          text:TextSpan(
              text:suggestionList[index].substring(0,query.length),
              style: TextStyle(
                color:Colors.black,
                fontWeight:FontWeight.bold,
              ),
              children: [
                TextSpan(
                    text: suggestionList[index].substring(query.length),
                    style: TextStyle(
                      color:Colors.grey,
                    )),
              ]
          ),
        ),
      ),
    );
  }

}