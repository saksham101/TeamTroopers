// import 'package:flutter/material.dart';

// // class SearchScreen extends StatelessWidget {
// //   @override
// //   Widget build(BuildContext context) {
       
// //       return new Center(
// //       child: new Text(
// //         "Search",
// //       style: new TextStyle(fontSize: 30),
      
      
// //       ),
// //     );
   
// // }
// // }
// class SearchScreen extends StatefulWidget {
//   @override
//   _SearchScreenState createState() => new _SearchScreenState();
// }

// class _SearchScreenState extends State<SearchScreen> {
//   final scaffoldKey = new GlobalKey<ScaffoldState>();
//   final formKey = new GlobalKey<FormState>();

//   String _email;
//   String _password;

//   get textController => null;

//   @override
//   void initState() {
//     super.initState();
//     textController.addListener(printSomeValues);
//   }
//   printSomeValues(){
//     print("Controller Values ${textController.text}");
//   }

//   @override
//   void dispose() {
//     textController.removeListener(printSomeValues);
//     textController.dispose();
//     super.dispose();

//   }

//   void _submit() {
//     final form = formKey.currentState;

//     if (form.validate()) {
//       form.save();

//       performLogin();
//     }
//   }

//   void performLogin() {
//     final snackbar = new SnackBar(
//       content: new Text("Email : $_email, password : $_password"),
//     );
//     scaffoldKey.currentState.showSnackBar(snackbar);
//   }

//   @override
//   Widget build(BuildContext context) {
//     return new Scaffold(
//         key: scaffoldKey,
//         // appBar: new AppBar(
//         //   title: new Text("Form Page"),
//         // ),
//         body: new Padding(
//           padding: const EdgeInsets.all(20.0),
//           child: new Form(
//             key: formKey,
//             child: new Column(
//               children: <Widget>[
//                 new TextFormField(
//                   decoration: new InputDecoration(labelText: "Email"),
//                   validator: (val) =>
//                       !val.contains('@') ? 'Invalid Email' : null,
//                   onSaved: (val) => _email = val,
//                 ),
//                 new TextFormField(
//                   decoration: new InputDecoration(labelText: "Password"),
//                   validator: (val) =>
//                       val.length < 6 ? 'Password too short' : null,
//                   onSaved: (val) => _password = val,
//                   obscureText: true,
//                 ),
//                 new Padding(
//                   padding: const EdgeInsets.only(top: 20.0),
//                 ),
//                 new RaisedButton(
//                   child: new Text(
//                     "login",
//                     style: new TextStyle(color: Colors.white),
//                   ),
//                   color: Colors.blue,
//                   onPressed: _submit,
//                 )
//               ],
//             ),
//           ),
//         ));
//   }
// }

// import 'package:flutter/material.dart';
// class SearchScreen extends StatefulWidget {
//    final Set listDynamic ={};
//     addDynamic(){
//     if(listDynamic.length >= 5){
//       return;
//     }
//     listDynamic.add(new  Symptoms());
//   setState((){});
//     }
//     submitData(){
//       listDynamic.forEach((Widget)=>print(Widget.controller.text));
//     }
//     @override
//     _SearchScreenState createState() => _SearchScreenState();
  
//     void setState(Null Function() param0) {}
// }

// class _SearchScreenState extends State<SearchScreen> {
//   get submitData => null;

//   get listDynamic => null;

//   get addDynamic => null;

//   @override
//   Widget build(BuildContext context) {
//     return new Scaffold(
//       body: new Container(
//         child: new Column(
//           children: <Widget>[
//             new Flexible(child: new ListView.builder(
//               itemCount: listDynamic.length,
//               itemBuilder: (_,index)=>listDynamic[index])),
//               new Container(
//                 child: new RaisedButton(onPressed: submitData,child: new Text('Search'),),
//           ),
//           ],
//         ),
//       ),
//       floatingActionButton: new FloatingActionButton(onPressed: addDynamic,
//       child: new Icon(Icons.add),
//       ),
//     );
//   }
// }

// class Symptoms extends StatelessWidget {
//   TextEditingController controller = new  TextEditingController();
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       margin: new EdgeInsets.all(8.0),
//       child: new TextField(
//         controller: controller,
//         decoration: new InputDecoration(hintText: "Enter a Symptom"),
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';
class SearchScreen extends StatefulWidget {
  @override
  _SearchScreenState createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  List<DynamicWidget> listDynamic = [];
  List<String> data = [];

  Icon floatingIcon = new Icon(Icons.add);

  addDynamic() {
    if (data.length != 0) {
      floatingIcon = new Icon(Icons.add);

      data = [];
      listDynamic = [];
      print('if');
    }
    setState(() {});
    if (listDynamic.length >= 5) {
      return;
    }
    listDynamic.add(new DynamicWidget());
  }

  submitData() {
    floatingIcon = new Icon(Icons.arrow_back);
    data = [];
    listDynamic.forEach((widget) => data.add(widget.controller.text));
    setState(() {});
    print(data.length);
  }

  @override
  Widget build(BuildContext context) {
    Widget result = new Flexible(
        flex: 1,
        child: new Card(
          child: ListView.builder(
            itemCount: data.length,
            itemBuilder: (_, index) {
              return new Padding(
                padding: new EdgeInsets.all(10.0),
                child: new Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    new Container(
                      margin: new EdgeInsets.only(left: 10.0),
                      child: new Text("${index + 1} : ${data[index]}"),
                    ),
                    new Divider()
                  ],
                ),
              );
            },
          ),
        ));

    Widget dynamicTextField = new Flexible(
      flex: 2,
      child: new ListView.builder(
        itemCount: listDynamic.length,
        itemBuilder: (_, index) => listDynamic[index],
      ),
    );

    Widget submitButton = new Container(
      child: new RaisedButton(
        onPressed: submitData,
        child: new Padding(
          padding: new EdgeInsets.all(16.0),
          child: new Text('Submit Data'),
        ),
      ),
    );

    return new MaterialApp(
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text('What Symptoms do you see?',style: TextStyle(color: Colors.black),),
          backgroundColor: Colors.white,
        ),
        body: new Container(
          margin: new EdgeInsets.all(10.0),
          child: new Column(
            children: <Widget>[
              data.length == 0 ? dynamicTextField : result,
              data.length == 0 ? submitButton : new Container(),
            ],
          ),
        ),
        floatingActionButton: new FloatingActionButton(
          onPressed: addDynamic,
          child: floatingIcon,
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.endTop,
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}

class DynamicWidget extends StatelessWidget {
  TextEditingController controller = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: new EdgeInsets.all(8.0),
      child: new TextField(
        controller: controller,
        decoration: new InputDecoration(hintText: 'Enter Data '),
      ),
    );
  }
}