import 'package:flutter/material.dart';
import 'package:note_book/shared/constants.dart';

class NoteList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: ()=>Navigator.pushNamed(context, to_note_add), child: Icon(Icons.add),),
      body: NestedScrollView(
        headerSliverBuilder:
            (BuildContext context, bool innerBoxIsScrolled) {
          double width = MediaQuery.of(context).size.width;
          return <Widget>[
            SliverAppBar(
              expandedHeight: 200.0,
              floating: false,
              pinned: true,
              forceElevated: false,
              flexibleSpace: FlexibleSpaceBar(
                centerTitle: true,
//                      Image.asset('assets/banner.jpg',width:width ,)
                background: Stack(
                  children: <Widget>[
                    Positioned.fill(
                      child: Hero(
                          tag: 'title',
                          child: Stack(children: <Widget>[
                            Container(
                              decoration: BoxDecoration(
                                color: Colors.transparent,
                                image: DecorationImage(
                                  fit: BoxFit.fill,
                                  image: AssetImage(
                                    'assets/banner.jpg',
                                  ),
                                ),
                              ),
                              height: 350.0,
                            ),
                            Container(
                              height: 350.0,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  gradient: LinearGradient(
                                      begin: FractionalOffset.topCenter,
                                      end: FractionalOffset.bottomCenter,
                                      colors: [
//                                          Colors.grey.withOpacity(0.0),
//                                          customColor.withOpacity(0.8),
                                      ],
                                      stops: [
                                        0.0,
                                        1.0
                                      ])),
                            ),
                          ])),
                    )
                  ],
                ),
                title: Container(
                    alignment: Alignment.bottomCenter,
                    padding: EdgeInsets.only(top: 25.0),
                    child: Row(
                      children: <Widget>[
                         SizedBox(width: 70.0,),
                          Text(MAIN_TITLE)
                      ],
                    )),
              ),
            ),
          ];
        },
        body: Center(
          child: Container(

            child: ListView(
              padding: EdgeInsets.only(top: 0.0),
              children: <Widget>[
                GestureDetector(
                  onTap: ()=>Navigator.pushNamed(context, to_note_update),
                  child: Card(
                    elevation: 0.0,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        const ListTile(
                          leading: Icon(Icons.album),
                          title: Text('The Enchanted Nightingale'),
                          subtitle: Text('Music by Julie Gable. Lyrics by Sidney Stein.'),
                        ),
                      ],
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: ()=>Navigator.pushNamed(context, to_note_update),
                  child: Card(
                    elevation: 0.0,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        const ListTile(
                          leading: Icon(Icons.album),
                          title: Text('The Enchanted Nightingale'),
                          subtitle: Text('Music by Julie Gable. Lyrics by Sidney Stein.'),
                        ),
                      ],
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: ()=>Navigator.pushNamed(context, to_note_update),
                  child: Card(
                    elevation: 0.0,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        const ListTile(
                          leading: Icon(Icons.album),
                          title: Text('The Enchanted Nightingale'),
                          subtitle: Text('Music by Julie Gable. Lyrics by Sidney Stein.'),
                        ),
                      ],
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: ()=>Navigator.pushNamed(context, to_note_update),
                  child: Card(
                    elevation: 0.0,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        const ListTile(
                          leading: Icon(Icons.album),
                          title: Text('The Enchanted Nightingale'),
                          subtitle: Text('Music by Julie Gable. Lyrics by Sidney Stein.'),
                        ),
                      ],
                    ),
                  ),
                ),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
