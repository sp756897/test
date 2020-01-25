import 'package:flutter/material.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home:Scaffold(
        appBar:AppBar(
          title: Center(child: Text('Flutter Widgets')),
        ),
        body:Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: <Color>[
                Colors.red[300],
                Colors.blue[600],
                Colors.amber[900]

              ],
            ),
          ),
          child: GridView(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
            children: <Widget>[

              Card(

                elevation: 12,
                child: Center(child: SizedBox(
                  height: 100,
                  width: 100,
                  child: FloatingActionButton(
                    onPressed: null,
                    tooltip: "add",
                    child: Icon(
                        Icons.add_circle,
                        size: 60,
                    ),
                  ),
                )),
              ),

              Card(
                
                elevation: 12,
                child: Center(child: Textstyle("Floating Action Buttton"))
                ,
              ),
              Card(
                elevation: 12,
                child: Center(child:
                    Image(
                      image:AssetImage('assets/nature.jpeg'),
                      width: 150,
                      height: 150,
                    ),
                ),
              ),

              Card(
                elevation: 12,
                child: Center(child: Textstyle("Image")),
              ),
              Card(
                elevation: 12,
                child: Center(child:

                new SizedBox(
                  height: 50,
                  width: 180,
                  child: RaisedButton(
                      padding: const EdgeInsets.all(0.0),
                      onPressed: () {},
                      color: Colors.red,
                      textColor: Colors.white,
                    child:new SizedBox(
                      height: 50,
                      width: 180,
                      child: Container(
                        child: Center(child: Text("Raised Button",style: TextStyle(fontSize: 20),)),
                        padding: const EdgeInsets.all(0.0),
                        decoration: BoxDecoration(
                            gradient: LinearGradient(
                                colors: [
                                  Colors.red[900],
                                  Colors.blue[600],
                                  Colors.amber[300],
                                ]
                            )
                        ),


                      ),
                    ),
                  ),
                )),
              ),
              Card(
                elevation: 12,
                child: Center(child: Textstyle("Raised Button")),
              ),
              Card(
                elevation: 12,
                child: Center(child: Icon(
                  Icons.favorite,
                  color: Colors.pink,
                  size: 90,
                )),
              ),

              Card(
                elevation: 12,
                child: Center(child: Textstyle("Icon")),
              ),
              Card(
                elevation: 12,
                child: Center(child: SizedBox(
                  height: 150,
                  width: 150,
                  child: Container(
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                            colors: [Colors.orange[900],Colors.purple[600],Colors.amber[300]]

                        )
                    ),
                  ),
                )),
              ),
              Card(
                elevation: 12,
                child: Center(child: Textstyle("Container")),
              ),
            ],

          )
        )
      ),
    );

  }
}
class Textstyle extends StatelessWidget{
  final String text;
  Textstyle(this.text);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
      child: Text('$text',
                    style:TextStyle(fontSize: 25,fontWeight: FontWeight.bold,fontStyle: FontStyle.italic,)

      ),
    );
  }

}