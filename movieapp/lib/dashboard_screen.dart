import 'package:flutter/material.dart';
import 'package:movieapp/movies.dart';
import 'package:movieapp/horizontal.dart';
import 'package:movieapp/top_rated.dart';
import 'package:movieapp/detailed_screen.dart';
class DashboardScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Movies App',
        style: TextStyle(color: Colors.deepOrange),
        ),
        backgroundColor:Colors.black38,
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            color: Colors.deepOrange,
            onPressed: () {
              showSearch(context: context, delegate: Moviesearch());
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(                                                                               
                      'Top Rated ',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'fonts/Indie_Flower',
                          color: Colors.deepOrange
                      ),
                    ),
                    FlatButton(
                      child: Text('View All'),
                        color: Colors.deepOrangeAccent,
                      onPressed: () {},
                    ),
                  ],
                ),
              ),
              Container(
                height: 280,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: topRatedMovieList.length,
                  itemBuilder: (ctx, i) => TopRatedListItem(i),
                ),
              ),
      SizedBox(
        height: 30,
      ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(
                      'Recommended',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                          fontFamily: 'fonts/Indie_Flower',
                          color: Colors.deepOrange
                      ),
                    ),
                    FlatButton(
                      child: Text('View All'),
                        color: Colors.deepOrangeAccent,
                      onPressed: () {},
                    ),
                  ],
                ),
              ),
              Container(
                height: 280,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: movieList.length,
                  itemBuilder: (ctx, i) => HorizontalListItem(i),
                ),
              ),

            ],
        ),
      ),
    );
  }
}
class Moviesearch extends SearchDelegate<Movie>{
  @override
  List<Widget> buildActions(BuildContext context) {
    return [IconButton(icon:Icon(Icons.clear), onPressed: (){
      query="";
    },)];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(onPressed: (){
      close(context,null);
    },icon:Icon(Icons.arrow_back),);
  }

  @override
  Widget buildResults(BuildContext context) {
    return Container(
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    final myist=movieList+topRatedMovieList;
    final mylist=query.isEmpty? myist : myist.where((p)=>p.title.startsWith(query)).toList();
    return mylist.isEmpty? Text("No Results Found..",style:TextStyle(color:Colors.white,fontSize:16 )): ListView.builder(
    itemCount: mylist.length,
    itemBuilder:(context,index){
      final Movie listitem = mylist[index];
      return ListTile(
        onTap: (){
          showResults(context);
        },
        title:Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children:<Widget> [
          Text(listitem.title,
          style:TextStyle(
              color:Colors.white,
            fontSize: 20,
          ),
          ),
          Text(listitem.year,
            style:TextStyle(
                color:Colors.white70,
            fontSize:14, ),
          ),
          Divider(),
        ],
      ),
      );
    }
  );

  }

}
