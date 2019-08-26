import 'package:flutter/material.dart';
import 'dart:io';
import '../pkg_jp/Images.dart';
import 'package:url_launcher/url_launcher.dart';
class FirstScreen extends StatelessWidget {
   
  int count;
  FirstScreen(this.count);

  get context => null;
  @override
  Widget build (BuildContext ctxt) {
     void show() {
    // flutter defined function
    showDialog(
      context: ctxt,
      barrierDismissible: true,
      builder: (BuildContext ctxt) {
        // return object of type Dialog
        return AlertDialog(
          title: new Text("Exit Page",style: TextStyle(fontSize: 25.0),),
          content: new Text("Are you sure you want to exit from the APP",style: TextStyle(fontSize: 14.0),),
          actions: <Widget>[
            // usually buttons at the bottom of the dialog
            new FlatButton(
              child: new Text("NO"),
              onPressed: () {
                // Navigator.of(context).pop();
                Navigator.push(
              ctxt,
              new MaterialPageRoute(builder: (ctxt) => new FirstScreen(count)),
            );
              },
            ),
            new FlatButton(
              child: new Text("YES, EXIT"),
              onPressed: () {
                exit(0);
                // Navigator.of(context).pop();
              },
            ),
            
          ],
        );
      },
    );
  }
    return new Scaffold(
        appBar: new AppBar(
          title: new Text("Mobile Addiction Rating Application"),
        ),
        body: WillPopScope(
        //Wrap out body with a `WillPopScope` widget that handles when a user is cosing current route
        onWillPop: () {
        show();
        },
        child:Center(
          child: Column(
            children: <Widget>[
              Text("\nDEVELOPED BY ",textDirection: TextDirection.ltr,style:TextStyle(fontSize: 25.0,color: Colors.black),),

                FlatButton(
                child: Text("JAYA PRAKASH REDDY",style: TextStyle(fontSize: 25.0,color:Colors.red),),
                color: Colors.lightGreen,
                onPressed: ()
                   async {
            if (await canLaunch("https://in.linkedin.com/in/jaya-prakash-veldanda-756b48179")){
              await launch("https://in.linkedin.com/in/jaya-prakash-veldanda-756b48179");
              }
            },
              ),


          ShowImage(1),
          FlatButton(
          child: Text("ABOUT"),
          color: Colors.blue,
          onPressed: (){
            count=0;
            Navigator.push(
              ctxt,
              new MaterialPageRoute(builder: (ctxt) => new AboutScreen(count)),
            );

          },
        ),
              FlatButton(
                child: Text("START"),
                color: Colors.green,
                onPressed: (){
                  count=0;
                  Navigator.push(
                ctxt,
                new MaterialPageRoute(builder: (ctxt) => new SecondScreen(count)),
              );

                },
              ),
              RaisedButton(
                child: Text("EXIT"),
                color: Colors.red,
                onPressed: (){
                  count=0;
                  show();
                  // exit(0);

                },
              )
            ],
          ),
        )

    )
    );
  }
}



class AboutScreen extends StatelessWidget {
  int count;
  AboutScreen(this.count);
  @override
  Widget build (BuildContext ctxt) {
    int CallMe(){
      count=0;
      return count;
    }
     void show() {
    // flutter defined function
    showDialog(
      context: ctxt,
      barrierDismissible: true,
      builder: (BuildContext ctxt) {
        // return object of type Dialog
        return AlertDialog(
          title: new Text("Exit Page",style: TextStyle(fontSize: 25.0),),
          content: new Text("Are you sure you want to exit from the APP",style: TextStyle(fontSize: 14.0),),
          actions: <Widget>[
            // usually buttons at the bottom of the dialog
            new FlatButton(
              child: new Text("NO"),
              onPressed: () {
                // Navigator.of(context).pop();
                Navigator.push(
              ctxt,
              new MaterialPageRoute(builder: (ctxt) => new AboutScreen(count)),
            );
              },
            ),
            new FlatButton(
              child: new Text("YES, EXIT"),
              onPressed: () {
                count=0;
                exit(0);
                // Navigator.of(context).pop();
              },
            ),
            
          ],
        );
      },
    );
  }
    return new Scaffold(
        appBar: new AppBar(
          title: new Text(" "),
         ),
         body: WillPopScope(
        //Wrap out body with a `WillPopScope` widget that handles when a user is cosing current route
        onWillPop: () {
        return Navigator.push(
                    ctxt,
                    new MaterialPageRoute(builder: (ctxt) => new FirstScreen(count)),
                  );//return a `Future` with false value so this route cant be popped or closed.
        },
        child:Center(
          child: Column(
            children: <Widget>[
            Text("ABOUT:",style:TextStyle(fontSize:35.0,color:Colors.green[500])),  
            Text("This app is about to show the rating of mobile addiction by a person.\n\nThis APP is Developed by: ",textDirection: TextDirection.ltr,style:TextStyle(fontSize: 20.0,color:Colors.red[500]),),
            InkWell(
                    child: new Text('JAYA PRAKASH REDDY',style:TextStyle(fontSize: 20.0,color: Colors.red, decoration: TextDecoration.underline)),
                onTap: () async {
            if (await canLaunch("https://in.linkedin.com/in/jaya-prakash-veldanda-756b48179")) {
              await launch("https://in.linkedin.com/in/jaya-prakash-veldanda-756b48179");
            }
                }
                
                // launch("https://in.linkedin.com/in/jaya-prakash-veldanda-756b48179"),
              ),
            Text("\nAnd You can exit the APP anytime by clicking the EXIT button in every Page.\n\nYou need to give correct information and should answer to every question.\n\nQuestions start by clicking READY button below or START button in HOME PAGE.\n",textDirection: TextDirection.ltr,style:TextStyle(fontSize: 20.0,color:Colors.red[500]),),
            Text("Your score starts from ${CallMe()}\n",style:TextStyle(fontSize:25.0,color:Colors.green[500])),

            FlatButton(
              child: Text("HOME PAGE"),
              color: Colors.blue,
              onPressed: (){
                Navigator.push(
                  ctxt,
                  new MaterialPageRoute(builder: (ctxt) => new FirstScreen(count)),
                );
              },
            ),
            Text("\n"),
              FlatButton(
                child: Text("READY"),
                color: Colors.green,
                onPressed: (){
                  count=0;
                  Navigator.push(
                    ctxt,
                    new MaterialPageRoute(builder: (ctxt) => new SecondScreen(count)),
                  );

                },
              ),
              Text("\n"),
              RaisedButton(
                child: Text("EXIT"),
                color: Colors.red,
                onPressed: (){
                  
                  show();
                  // exit(0);

                },
              )
            ],
          ),
        )

    )
    );
  }
}



class SecondScreen extends StatelessWidget {
  int count;
  SecondScreen(this.count);
  @override
  Widget build (BuildContext ctxt) {
     void show() {
    // flutter defined function
    showDialog(
      context: ctxt,
      barrierDismissible: true,
      builder: (BuildContext ctxt) {
        // return object of type Dialog
        return AlertDialog(
          title: new Text("Exit Page",style: TextStyle(fontSize: 25.0),),
          content: new Text("Are you sure you want to exit from the APP",style: TextStyle(fontSize: 14.0),),
          actions: <Widget>[
            // usually buttons at the bottom of the dialog
            new FlatButton(
              child: new Text("NO"),
              onPressed: () {
                // Navigator.of(context).pop();
                Navigator.push(
              ctxt,
              new MaterialPageRoute(builder: (ctxt) => new SecondScreen(count)),
            );
              },
            ),
            new FlatButton(
              child: new Text("YES, EXIT"),
              onPressed: () {
                count=0;
                exit(0);
                // Navigator.of(context).pop();
              },
            ),
            
          ],
        );
      },
    );
  }
    return new Scaffold(
        appBar: new AppBar(
          title: new Text(" "),
         ),
         body: WillPopScope(
        //Wrap out body with a `WillPopScope` widget that handles when a user is cosing current route
        onWillPop: () {
        return Navigator.push(
                    ctxt,
                    new MaterialPageRoute(builder: (ctxt) => new FirstScreen(count)),
                  );//return a `Future` with false value so this route cant be popped or closed.
        },
        child:Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Text("1",textDirection: TextDirection.ltr,style:TextStyle(fontSize: 50.0),),
              ShowImage2("mrg"),
              Text("Do you Use yor mobile early in the morning on the bed ?",textDirection: TextDirection.ltr,style:TextStyle(fontSize: 25.0,),),
              FlatButton(
                child: Text("Yes"),
                color: Colors.deepOrange  ,
                onPressed: (){
                  count+=2;
                  Navigator.push(
                    ctxt,
                    new MaterialPageRoute(builder: (ctxt) => new ThirdScreen(count)),
                  );
                },
              ),
              FlatButton(
                child: Text("No"),
                color: Colors.deepOrange,
                onPressed: (){
                  count=0;
                  Navigator.push(
                    ctxt,
                    new MaterialPageRoute(builder: (ctxt) => new ThirdScreen(count)),
                  );

                },
              ),
              // Text("\n"),
              FlatButton(
                child: Text("HOME PAGE"),
                color: Colors.green,
                onPressed: (){
                  count=0;
                  Navigator.push(
                    ctxt,
                    new MaterialPageRoute(builder: (ctxt) => new FirstScreen(count)),
                  );

                },
              ),
              RaisedButton(
                child: Text("EXIT"),
                color: Colors.blue,
                onPressed: (){
                  
                  // exit(0);
                  show();

                },
              )
            ],
          ),
        )

    )
    );
  }
}





class ThirdScreen extends StatelessWidget {
  int count;
  ThirdScreen(this.count);
  @override
  Widget build (BuildContext ctxt) {
     void show() {
    // flutter defined function
    showDialog(
      context: ctxt,
      barrierDismissible: true,
      builder: (BuildContext ctxt) {
        // return object of type Dialog
        return AlertDialog(
          title: new Text("Exit Page",style: TextStyle(fontSize: 25.0),),
          content: new Text("Are you sure you want to exit from the APP",style: TextStyle(fontSize: 14.0),),
          actions: <Widget>[
            // usually buttons at the bottom of the dialog
            new FlatButton(
              child: new Text("NO"),
              onPressed: () {
                // Navigator.of(context).pop();
                Navigator.push(
              ctxt,
              new MaterialPageRoute(builder: (ctxt) => new ThirdScreen(count)),
            );
              },
            ),
            new FlatButton(
              child: new Text("YES, EXIT"),
              onPressed: () {
                count=0;
                exit(0);
                // Navigator.of(context).pop();
              },
            ),
            
          ],
        );
      },
    );
  }
    return new Scaffold(
        appBar: new AppBar(
          title: new Text(" "),
         ),
         body: WillPopScope(
        //Wrap out body with a `WillPopScope` widget that handles when a user is cosing current route
        onWillPop: () {
        return Navigator.push(
                    ctxt,
                    new MaterialPageRoute(builder: (ctxt) => new FirstScreen(count)),
                  );//return a `Future` with false value so this route cant be popped or closed.
        },
        child:Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Text("2",textDirection: TextDirection.ltr,style:TextStyle(fontSize: 50.0),),
              ShowImage2("dr"),
              Text("Do you Use yor mobile while driving ?\n",textDirection: TextDirection.ltr,style:TextStyle(fontSize: 25.0),),
              FlatButton(
                child: Text("Yes"),
                color: Colors.deepOrange,
                onPressed: (){
                  count+=2;
                  Navigator.push(
                    ctxt,
                    new MaterialPageRoute(builder: (ctxt) => new FourthScreen(count)),
                  );

                },
              ),
              FlatButton(
                child: Text("No"),
                color: Colors.deepOrange,
                onPressed: (){
                  count+=0;
                  Navigator.push(
                    ctxt,
                    new MaterialPageRoute(builder: (ctxt) => new FourthScreen(count)),
                  );

                },
              ),
              // Text("\n"),
              FlatButton(
                child: Text("HOME PAGE"),
                color: Colors.green,
                onPressed: (){
                  count=0;
                  Navigator.push(
                    ctxt,
                    new MaterialPageRoute(builder: (ctxt) => new FirstScreen(count)),
                  );

                },
              ),
              RaisedButton(
                child: Text("EXIT"),
                color: Colors.blue,
                onPressed: (){
                  
                  show();
                  // exit(0);

                },
              )
            ],
          ),
        )

    )
    );
  }
}
class FourthScreen extends StatelessWidget {
  int count;
  FourthScreen(this.count);
  @override
  Widget build (BuildContext ctxt) {
     void show() {
    // flutter defined function
    showDialog(
      context: ctxt,
      barrierDismissible: true,
      builder: (BuildContext ctxt) {
        // return object of type Dialog
        return AlertDialog(
          title: new Text("Exit Page",style: TextStyle(fontSize: 25.0),),
          content: new Text("Are you sure you want to exit from the APP",style: TextStyle(fontSize: 14.0),),
          actions: <Widget>[
            // usually buttons at the bottom of the dialog
            new FlatButton(
              child: new Text("NO"),
              onPressed: () {
                // Navigator.of(context).pop();
                Navigator.push(
              ctxt,
              new MaterialPageRoute(builder: (ctxt) => new FourthScreen(count)),
            );
              },
            ),
            new FlatButton(
              child: new Text("YES, EXIT"),
              onPressed: () {
                count=0;
                exit(0);
                // Navigator.of(context).pop();
              },
            ),
            
          ],
        );
      },
    );
  }
    return new Scaffold(
        appBar: new AppBar(
          title: new Text(" "),
         ),
         body: WillPopScope(
        //Wrap out body with a `WillPopScope` widget that handles when a user is cosing current route
        onWillPop: () {
        return Navigator.push(
                    ctxt,
                    new MaterialPageRoute(builder: (ctxt) => new FirstScreen(count)),
                  );//return a `Future` with false value so this route cant be popped or closed.
        },
        child:Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Text("3",textDirection: TextDirection.ltr,style:TextStyle(fontSize: 50.0),),
              ShowImage2("game"),
              Text("Do you play atleast 2-3 hours on Mobile games ?\n",textDirection: TextDirection.ltr,style:TextStyle(fontSize: 25.0),),
              FlatButton(
                child: Text("Yes"),
                color: Colors.deepOrange,
                onPressed: (){
                  count+=2;
                  Navigator.push(
                    ctxt,
                    new MaterialPageRoute(builder: (ctxt) => new FifthScreen(count)),
                  );

                },
              ),
              FlatButton(
                child: Text("No"),
                color: Colors.deepOrange,
                onPressed: (){
                  Navigator.push(
                    ctxt,
                    new MaterialPageRoute(builder: (ctxt) => new FifthScreen(count)),
                  );

                },
              ),
              // Text("\n"),
              FlatButton(
                child: Text("HOME PAGE"),
                color: Colors.green,
                onPressed: (){
                  count=0;
                  Navigator.push(
                    ctxt,
                    new MaterialPageRoute(builder: (ctxt) => new FirstScreen(count)),
                  );

                },
              ),
              RaisedButton(
                child: Text("EXIT"),
                color: Colors.blue,
                onPressed: (){
                  
                  // exit(0);
                  show();
                },
              )
            ],
          ),
        )

    )
    );
  }
}


class FifthScreen extends StatelessWidget {
  int count;
  FifthScreen(this.count);
  @override
  Widget build (BuildContext ctxt) {
     void show() {
    // flutter defined function
    showDialog(
      context: ctxt,
      barrierDismissible: true,
      builder: (BuildContext ctxt) {
        // return object of type Dialog
        return AlertDialog(
          title: new Text("Exit Page",style: TextStyle(fontSize: 25.0),),
          content: new Text("Are you sure you want to exit from the APP",style: TextStyle(fontSize: 14.0),),
          actions: <Widget>[
            // usually buttons at the bottom of the dialog
            new FlatButton(
              child: new Text("NO"),
              onPressed: () {
                // Navigator.of(context).pop();
                Navigator.push(
              ctxt,
              new MaterialPageRoute(builder: (ctxt) => new FifthScreen(count)),
            );
              },
            ),
            new FlatButton(
              child: new Text("YES, EXIT"),
              onPressed: () {
                count=0;
                exit(0);
                // Navigator.of(context).pop();
              },
            ),
            
          ],
        );
      },
    );
  }
    return new Scaffold(
        appBar: new AppBar(
          title: new Text(" "),
         ),
         body: WillPopScope(
        //Wrap out body with a `WillPopScope` widget that handles when a user is cosing current route
        onWillPop: () {
        return Navigator.push(
                    ctxt,
                    new MaterialPageRoute(builder: (ctxt) => new FirstScreen(count)),
                  );//return a `Future` with false value so this route cant be popped or closed.
        },
        child:Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Text("4",textDirection: TextDirection.ltr,style:TextStyle(fontSize: 50.0),),
              ShowImage2("anx"),
              Text("Do you check your moble with anxiety frequently without any need ?\n",textDirection: TextDirection.ltr,style:TextStyle(fontSize: 25.0),),
             
              FlatButton(
                child: Text("Yes"),
                color: Colors.deepOrange,
                onPressed: (){
                  count+=2;
                  Navigator.push(
                    ctxt,
                    new MaterialPageRoute(builder: (ctxt) => new SixthScreen(count)),
                  );

                },
              ),
              FlatButton(
                child: Text("No"),
                color: Colors.deepOrange,
                onPressed: (){
                  count+=0;
                  Navigator.push(
                    ctxt,
                    new MaterialPageRoute(builder: (ctxt) => new SixthScreen(count)),
                  );

                },
              ),
              // Text("\n"),
               FlatButton(
                child: Text("HOME PAGE"),
                color: Colors.green,
                onPressed: (){
                  count=0;
                  Navigator.push(
                    ctxt,
                    new MaterialPageRoute(builder: (ctxt) => new FirstScreen(count)),
                  );

                },
              ),RaisedButton(
                child: Text("EXIT"),
                color: Colors.blue,
                onPressed: (){
                  
                  show();
                  // exit(0);

                },
              )

            ],
          ),
        )

    )
    );
  }
}


class SixthScreen extends StatelessWidget {
  int count;
  SixthScreen(this.count);
  @override
  Widget build (BuildContext ctxt) {
     void show() {
    // flutter defined function
    showDialog(
      context: ctxt,
      barrierDismissible: true,
      builder: (BuildContext ctxt) {
        // return object of type Dialog
        return AlertDialog(
          title: new Text("Exit Page",style: TextStyle(fontSize: 25.0),),
          content: new Text("Are you sure you want to exit from the APP",style: TextStyle(fontSize: 14.0),),
          actions: <Widget>[
            // usually buttons at the bottom of the dialog
            new FlatButton(
              child: new Text("NO"),
              onPressed: () {
                // Navigator.of(context).pop();
                Navigator.push(
              ctxt,
              new MaterialPageRoute(builder: (ctxt) => new SixthScreen(count)),
            );
              },
            ),
            new FlatButton(
              child: new Text("YES, EXIT"),
              onPressed: () {
                count=0;
                exit(0);
                // Navigator.of(context).pop();
              },
            ),
            
          ],
        );
      },
    );
  }
    return new Scaffold(
        appBar: new AppBar(
          title: new Text(" "),
         ),
         body: WillPopScope(
        //Wrap out body with a `WillPopScope` widget that handles when a user is cosing current route
        onWillPop: () {
        return Navigator.push(
                    ctxt,
                    new MaterialPageRoute(builder: (ctxt) => new FirstScreen(count)),
                  );//return a `Future` with false value so this route cant be popped or closed.
        },
        child:Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Text("5",textDirection: TextDirection.ltr,style:TextStyle(fontSize: 50.0),),
              ShowImage2("social"),
              Text("Do you influence by socialmedia to take any Decisions ?",textDirection: TextDirection.ltr,style:TextStyle(fontSize: 25.0),),
              
               FlatButton(
                child: Text("Yes"),
                color: Colors.deepOrange,
                onPressed: (){
                  count+=2;
                  Navigator.push(
                    ctxt,
                    new MaterialPageRoute(builder: (ctxt) => new SeventhScreen(count)),
                  );

                },
               ),
              FlatButton(
                child: Text("No"),
                color: Colors.deepOrange,
                onPressed: (){
                  Navigator.push(
                    ctxt,
                    new MaterialPageRoute(builder: (ctxt) => new SeventhScreen(count)),
                  );

                },
              ),
              // Text("\n"),
              FlatButton(
                child: Text("HOME PAGE"),
                color: Colors.green,
                onPressed: (){
                  count=0;
                  Navigator.push(
                    ctxt,
                    new MaterialPageRoute(builder: (ctxt) => new FirstScreen(count)),
                  );

                },
              ),
              RaisedButton(
                child: Text("EXIT"),
                color: Colors.blue,
                onPressed: (){
                  
                  show();
                  // exit(0);

                },
              )
            ],
          ),
        )

    )
    );
  }
}


class SeventhScreen extends StatelessWidget {
  int count;
  SeventhScreen(this.count);
  @override
  Widget build (BuildContext ctxt) {
     void show() {
    // flutter defined function
    showDialog(
      context: ctxt,
      barrierDismissible: true,
      builder: (BuildContext ctxt) {
        // return object of type Dialog
        return AlertDialog(
          title: new Text("Exit Page",style: TextStyle(fontSize: 25.0),),
          content: new Text("Are you sure you want to exit from the APP",style: TextStyle(fontSize: 14.0),),
          actions: <Widget>[
            // usually buttons at the bottom of the dialog
            new FlatButton(
              child: new Text("NO"),
              onPressed: () {
                // Navigator.of(context).pop();
                Navigator.push(
              ctxt,
              new MaterialPageRoute(builder: (ctxt) => new SeventhScreen(count)),
            );
              },
            ),
            new FlatButton(
              child: new Text("YES, EXIT"),
              onPressed: () {
                count=0;
                exit(0);
                // Navigator.of(context).pop();
              },
            ),
            
          ],
        );
      },
    );
  }
    return new Scaffold(
        appBar: new AppBar(
          title: new Text(" "),
         ),
         body: WillPopScope(
        //Wrap out body with a `WillPopScope` widget that handles when a user is cosing current route
        onWillPop: () {
        return Navigator.push(
                    ctxt,
                    new MaterialPageRoute(builder: (ctxt) => new FirstScreen(count)),
                  );//return a `Future` with false value so this route cant be popped or closed.
        },
        child:Center(
          child: Column(
            children: <Widget>[
              Text("6",textDirection: TextDirection.ltr,style:TextStyle(fontSize: 35.0),),
              ShowImage2("eat"),
              Text("Do you use mobile while eating ?\n",textDirection: TextDirection.ltr,style:TextStyle(fontSize: 25.0),),
              
               FlatButton(
                child: Text("Yes"),
                color: Colors.deepOrange,
                onPressed: (){
                  count+=2;
                  Navigator.push(
                    ctxt,
                    new MaterialPageRoute(builder: (ctxt) => new EighthScreen(count)),
                  );

                },
              ),
              FlatButton(
                child: Text("No"),
                color: Colors.deepOrange,
                onPressed: (){
                  count+=0;
                  Navigator.push(
                    ctxt,
                    new MaterialPageRoute(builder: (ctxt) => new EighthScreen(count)),
                  );

                },
              ),
              // Text("\n"),
              FlatButton(
                child: Text("HOME PAGE"),
                color: Colors.green,
                onPressed: (){
                  count=0;
                  Navigator.push(
                    ctxt,
                    new MaterialPageRoute(builder: (ctxt) => new FirstScreen(count)),
                  );

                },
              ),
              RaisedButton(
                child: Text("EXIT"),
                color: Colors.blue,
                onPressed: (){
                  
                  show();
                  // exit(0);

                },
              )
            ],
          ),
        )

    )
    );
  }
}


class EighthScreen extends StatelessWidget {
  int count;
  EighthScreen(this.count);
  @override
  Widget build (BuildContext ctxt) {
     void show() {
    // flutter defined function
    showDialog(
      context: ctxt,
      barrierDismissible: true,
      builder: (BuildContext ctxt) {
        // return object of type Dialog
        return AlertDialog(
          title: new Text("Exit Page",style: TextStyle(fontSize: 25.0),),
          content: new Text("Are you sure you want to exit from the APP",style: TextStyle(fontSize: 14.0),),
          actions: <Widget>[
            // usually buttons at the bottom of the dialog
            new FlatButton(
              child: new Text("NO"),
              onPressed: () {
                // Navigator.of(context).pop();
                Navigator.push(
              ctxt,
              new MaterialPageRoute(builder: (ctxt) => new EighthScreen(count)),
            );
              },
            ),
            new FlatButton(
              child: new Text("YES, EXIT"),
              onPressed: () {
                count=0;
                exit(0);
                // Navigator.of(context).pop();
              },
            ),
            
          ],
        );
      },
    );
  }
    return new Scaffold(
        appBar: new AppBar(
          title: new Text(" "),
         ),
         body: WillPopScope(
        //Wrap out body with a `WillPopScope` widget that handles when a user is cosing current route
        onWillPop: () {
        return Navigator.push(
                    ctxt,
                    new MaterialPageRoute(builder: (ctxt) => new FirstScreen(count)),
                  );//return a `Future` with false value so this route cant be popped or closed.
        },
        child:Center(
          child: Column(
            children: <Widget>[
              Text("7",textDirection: TextDirection.ltr,style:TextStyle(fontSize: 35.0),),
              ShowImage2("night"),
              Text("Do you use mobile in late night excessively?\n",textDirection: TextDirection.ltr,style:TextStyle(fontSize: 25.0),),
              
               FlatButton(
                child: Text("Yes"),
                color: Colors.deepOrange,
                onPressed: (){
                  count+=2;
                  Navigator.push(
                    ctxt,
                    new MaterialPageRoute(builder: (ctxt) => new NinethScreen(count)),
                  );

                },
              ),
              FlatButton(
                child: Text("No"),
                color: Colors.deepOrange,
                onPressed: (){
                  count+=0;
                  Navigator.push(
                    ctxt,
                    new MaterialPageRoute(builder: (ctxt) => new NinethScreen(count)),
                  );

                },
              ),
              // Text("\n"),
              FlatButton(
                child: Text("HOME PAGE"),
                color: Colors.green,
                onPressed: (){
                  count=0;
                  Navigator.push(
                    ctxt,
                    new MaterialPageRoute(builder: (ctxt) => new FirstScreen(count)),
                  );

                },
              ),
              RaisedButton(
                child: Text("EXIT"),
                color: Colors.blue,
                onPressed: (){
                  
                  show();
                  // exit(0);

                },
              )
            ],
          ),
        )

    )
    );
  }
}


class NinethScreen extends StatelessWidget {
  int count;
  NinethScreen(this.count);
  @override
  Widget build (BuildContext ctxt) {
     void show() {
    // flutter defined function
    showDialog(
      context: ctxt,
      barrierDismissible: true,
      builder: (BuildContext ctxt) {
        // return object of type Dialog
        return AlertDialog(
          title: new Text("Exit Page",style: TextStyle(fontSize: 25.0),),
          content: new Text("Are you sure you want to exit from the APP",style: TextStyle(fontSize: 14.0),),
          actions: <Widget>[
            // usually buttons at the bottom of the dialog
            new FlatButton(
              child: new Text("NO"),
              onPressed: () {
                // Navigator.of(context).pop();
                Navigator.push(
              ctxt,
              new MaterialPageRoute(builder: (ctxt) => new NinethScreen(count)),
            );
              },
            ),
            new FlatButton(
              child: new Text("YES, EXIT"),
              onPressed: () {
                count=0;
                exit(0);
                // Navigator.of(context).pop();
              },
            ),
            
          ],
        );
      },
    );
  }
    return new Scaffold(
        appBar: new AppBar(
          title: new Text(" "),
         ),
         body: WillPopScope(
        //Wrap out body with a `WillPopScope` widget that handles when a user is cosing current route
        onWillPop: () {
        return Navigator.push(
                    ctxt,
                    new MaterialPageRoute(builder: (ctxt) => new FirstScreen(count)),
                  );//return a `Future` with false value so this route cant be popped or closed.
        },
        child:Center(
          child: Column(
            children: <Widget>[
              Text("8",textDirection: TextDirection.ltr,style:TextStyle(fontSize: 35.0),),
              ShowImage2("meet"),
              Text("Do you use mobile in meeting ?\n",textDirection: TextDirection.ltr,style:TextStyle(fontSize: 25.0),),
              
               FlatButton(
                child: Text("Yes"),
                color: Colors.deepOrange,
                onPressed: (){
                  count+=2;
                  Navigator.push(
                    ctxt,
                    new MaterialPageRoute(builder: (ctxt) => new EndScreen(count)),
                  );

                },
              ),
              FlatButton(
                child: Text("No"),
                color: Colors.deepOrange,
                onPressed: (){
                  count+=0;
                  Navigator.push(
                    ctxt,
                    new MaterialPageRoute(builder: (ctxt) => new EndScreen(count)),
                  );

                },
              ),
              // Text("\n"),
              FlatButton(
                child: Text("HOME PAGE"),
                color: Colors.green,
                onPressed: (){
                  count=0;
                  Navigator.push(
                    ctxt,
                    new MaterialPageRoute(builder: (ctxt) => new FirstScreen(count)),
                  );

                },
              ),
              RaisedButton(
                child: Text("EXIT"),
                color: Colors.blue,
                onPressed: (){
                  
                  show();
                  // exit(0);

                },
              )
            ],
          ),
        )

    )
    );
  }
}

class EndScreen extends StatelessWidget {
  int count;
  String Ans;
  EndScreen(this.count);
  int CallMe(count)
  {
    return count;
  }
  String Rating(count)
  {
    if(count>=0 && count<=4)
    {
      return "You are well";
    }
    else if(count>4 && count<=12)
    {
      return "You need to control yourself from Addiction";
    }
    else if(count>12 && count<=16)
    {
      return "You need to consult a psychiatrist to stop addicting from mobile";
    }
    else
    {
      return "you went wrong somewhere, please START AGAIN";
    }
  }
  @override
  Widget build (BuildContext ctxt) {
     void show() {
    // flutter defined function
    showDialog(
      context: ctxt,
      barrierDismissible: true,
      builder: (BuildContext ctxt) {
        // return object of type Dialog
        return AlertDialog(
          title: new Text("Exit Page",style: TextStyle(fontSize: 25.0),),
          content: new Text("Are you sure you want to exit from the APP",style: TextStyle(fontSize: 14.0),),
          actions: <Widget>[
            // usually buttons at the bottom of the dialog
            new FlatButton(
              child: new Text("NO"),
              onPressed: () {
                // Navigator.of(context).pop();
                Navigator.push(
              ctxt,
              new MaterialPageRoute(builder: (ctxt) => new EndScreen(count)),
            );
              },
            ),
            new FlatButton(
              child: new Text("YES, EXIT"),
              onPressed: () {
                count=0;
                exit(0);
                // Navigator.of(context).pop();
              },
            ),
            
          ],
        );
      },
    );
  }
    return new Scaffold(
        appBar: new AppBar(
          title: new Text(" "),
         ),
          body: WillPopScope(
        //Wrap out body with a `WillPopScope` widget that handles when a user is cosing current route
        onWillPop: () {
        return Navigator.push(
                    ctxt,
                    new MaterialPageRoute(builder: (ctxt) => new FirstScreen(count)),
                  );//return a `Future` with false value so this route cant be popped or closed.
        },
        child:Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Text("Rating\n",textDirection: TextDirection.ltr,style:TextStyle(fontSize: 25.0,color: Colors.deepOrange),),
              Text(" * If your score is between 0 and 4  = You are well\n"
                  " * If your score is between 4 and 12  =You need to control yourself from addiction\n"
                  " * If your score is between 12 and 16  =You need to consult a psychiatrist to stop addicting from mobile\n"
                  ,textDirection: TextDirection.ltr,style:TextStyle(fontSize: 15.0,color:Colors.lightGreen),),
              Text("Your score is ${CallMe(count)}\n",style: TextStyle(fontSize: 25.0,color: Colors.black),),
              Text("${Rating(count)}\n",style: TextStyle(fontSize: 25.0,color: Colors.blue),),
              FlatButton(
                child: Text("HOME PAGE"),
                color: Colors.red,
                onPressed: (){
                  count=0;
                  Navigator.push(
                    ctxt,
                    new MaterialPageRoute(builder: (ctxt) => new FirstScreen(count)),
                  );

                },
              ),
              Text("\n"),
              FlatButton(
                child: Text("START AGAIN"),
                color: Colors.green,
                onPressed: (){
                  count=0;
                  Navigator.push(
                    ctxt,
                    new MaterialPageRoute(builder: (ctxt) => new SecondScreen(count)),
                  );

                },
              ),
              Text("\nTHANKING YOU\n",style: TextStyle(fontSize: 35.0,color:Colors.deepOrangeAccent),),
              // RaisedButton(
              //   child: Text("EXIT"),
              //   color: Colors.indigo,
              //   onPressed: (){
              //     count=0;
              //     exit(0);

              //   },
              // ),
              RaisedButton(
                child: Text("EXIT"),
                color: Colors.lightBlue,
                onPressed: (){
                  
                  show();
                  // exit(0);


                },
              )
            ],
          ),
        )

    )
    );
  }
}
