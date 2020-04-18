import 'package:aid/screens/search_screen.dart';
import 'package:aid/screens/shop_screen.dart';
import 'package:flutter/material.dart';
import 'Newpage1.dart';
class AidHome extends StatefulWidget {
  @override
  _AidHomeState createState() => _AidHomeState();
}

class _AidHomeState extends State<AidHome> with SingleTickerProviderStateMixin {
  TabController _tabController;

    @override
  void initState(){
    super.initState();
    _tabController = new TabController(length: 2, vsync: this, initialIndex: 1);
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("aid"),
        elevation: 0.7,
        actions: <Widget>[
          IconButton(icon: Icon(Icons.search), onPressed: (){
            showSearch(context: context, delegate: DataSearch()); 
          }),

        ],
        bottom: new TabBar(
          controller: _tabController,
          indicatorColor: Colors.white,
          tabs: <Widget>[
            new Tab(text: "Search"),
            new Tab(text: "Shop",),
          ],
        ),
      ),
      // body: new TabBarView(
      //   controller: _tabController,
      //   children: <Widget>[
      //     new Shop(null),
      //   ],
      // ),
       drawer: new Drawer(
         child: new ListView(
           children: <Widget>[
             new UserAccountsDrawerHeader(
               accountName: new Text("Jack Sparrow"), 
               accountEmail: new Text("wackjacky@gmail.com"),
               currentAccountPicture: 
                  new CircleAvatar(
                   backgroundColor: Colors.blueAccent, 
                   child: new Text("J",style: TextStyle(fontSize: 40 ,fontWeight:FontWeight.w400,color: Colors.white),),
                 ),
                otherAccountsPictures: <Widget>[
                  new CircleAvatar(
                   backgroundColor: Colors.green, 
                   child: new Text("P",style: TextStyle(fontSize: 20 ,fontWeight:FontWeight.w400,color: Colors.white),),
                  ),
                  new CircleAvatar(
                   backgroundColor: Colors.red, 
                   child: new Text("K",style: TextStyle(fontSize: 20 ,fontWeight:FontWeight.w400,color: Colors.white),),
                  ),
                ],
                ),
             new Divider(),
             new ListTile(
               title: new Text("Orders", style: TextStyle(fontSize: 20 ,fontWeight:FontWeight.w400,color: Colors.black),),
               trailing: new Icon(Icons.arrow_forward_ios, color: Colors.black, size: 10,),
              //  onTap: () { 
              //    Navigator.of(context).pop();
              //    Navigator.of(context).push(
              //      new MaterialPageRoute(
              //      builder: (BuildContext context) => 
              //     //  new Newpage1("Tips & Strategies") 
              //      ));
              //  },
             ),
             new Divider(),
              new ListTile(
               title: new Text("Payment Methods", style: TextStyle(fontSize: 20 ,fontWeight:FontWeight.w400,color: Colors.black),),
               trailing: new Icon(Icons.arrow_forward_ios, color: Colors.black, size: 10,),
              //   onTap: () { 
              //    Navigator.of(context).pop();
              //    Navigator.of(context).push(
              //      new MaterialPageRoute(
              //      builder: (BuildContext context) => 
              //     //  new Newpage2("Exercise") 
              //      ));
              //  },
             ),
             new Divider(),
             new ListTile(
               title: new Text("Membership", style: TextStyle(fontSize: 20 ,fontWeight:FontWeight.w400,color: Colors.black),),
               trailing: new Icon(Icons.arrow_forward_ios, color: Colors.black, size: 10,),
                // onTap: () { 
                //  Navigator.of(context).pop();
                //  Navigator.of(context).push(
                //    new MaterialPageRoute(
                //    builder: (BuildContext context) => 
                //   //  new Newpage3("Water") 
                //    ));
                // },
             ),
             new Divider(),
             new ListTile(
               title: new Text("My Prescription", style: TextStyle(fontSize: 20 ,fontWeight:FontWeight.w400,color: Colors.black),),
               trailing: new Icon(Icons.arrow_forward_ios, color: Colors.black, size: 10,),
              //   onTap: () { 
              //    Navigator.of(context).pop();
              //    Navigator.of(context).push(
              //      new MaterialPageRoute(
              //      builder: (BuildContext context) => 
              //     //  new Newpage4("Running")
              //       ));
              //  },
             ),
             new Divider(),
             new ListTile(
               title: new Text("Help?", style: TextStyle(fontSize: 20 ,fontWeight:FontWeight.w400,color: Colors.black),),
               trailing: new Icon(Icons.arrow_forward_ios, color: Colors.black, size: 10,),
              //   onTap: () { 
              //    Navigator.of(context).pop();
              //    Navigator.of(context).push(
              //      new MaterialPageRoute(
              //      builder: (BuildContext context) => 
              //     //  new Newpage5("Steps")
              //       ));
              //  },
             ),
             new Divider(),
             new ListTile(
               title: new Text("Legal Information", style: TextStyle(fontSize: 20 ,fontWeight:FontWeight.w400,color: Colors.black),),
               trailing: new Icon(Icons.arrow_forward_ios, color: Colors.black, size: 10,),
              //   onTap: () { 
              //    Navigator.of(context).pop();
              //    Navigator.of(context).push(
              //      new MaterialPageRoute(
              //      builder: (BuildContext context) => 
              //     //  new Newpage6("Sleep")
              //       ));
              //  },
             ),
             new Divider(),
             new ListTile(
               title: new Text("Logout", style: TextStyle(fontSize: 20 ,fontWeight:FontWeight.w400,color: Colors.black),),
               trailing: new Icon(Icons.arrow_forward_ios, color: Colors.black, size: 10,),
              //   onTap: () { 
              //    Navigator.of(context).pop();
              //    Navigator.of(context).push(
              //      new MaterialPageRoute(
              //      builder: (BuildContext context) => 
              //     //  new Newpage7("Diet")
              //       ));
              //  },
             ),
             new Divider(),
           ],
         ),
       ), 
      body: new TabBarView(
        controller: _tabController,
        children: <Widget>[
           new SearchScreen(),
            new ShopScreen(),
        ],
        ),
        floatingActionButton: new  FloatingActionButton(
          backgroundColor: Theme.of(context).accentColor,
          child: new Icon(Icons.account_balance_wallet),
           onPressed: () { 
                 debugPrint('Wallet');
                 Navigator.push(context, MaterialPageRoute(builder: (context){
                   return Newpage1(null);
                 })) ;              },
         // onPressed: () => print("Wallet")),
    ),);
  }
}

class DataSearch extends SearchDelegate<String>{
    
    final diseases = [
"Achilles Tendonitis",
"Acne Vulgaris",
"Acute Appendicitis",
"Acute Aspiration of Oropharyngeal or Gastric Contents",
"Acute Bronchitis",
"Acute Gastritis",
"Acute HIV Infection",
"Baby Eczema",
"Bacterial Conjunctivitis",
"Bacterial Gastroenteritis",
"Bacterial Meningitis",
"Bacterial Prostatitis",
"Bacterial Sinusitis",
"Bacterial Vaginosis",
"Chronic Bronchitis",
"Chronic Gastritis",
"Chronic Heart Failure",
"Chronic Idiopathic Constipation",
"Chronic Laryngitis",
"Chronic Pancreatitis",
"Chronic Pelvic Pain",
"Chronic Pharyngitis",
"Chronic Renal Failure",
"Cluster Headaches (CHs)",
"Chronic Bronchitis",
"Chronic Gastritis",
"Chronic Heart Failure",
"Chronic Idiopathic Constipation",
"Chronic Laryngitis",
"Chronic Pancreatitis",
"Chronic Pelvic Pain",
"Chronic Pharyngitis",
"Chronic Renal Failure",
"Cluster Headaches (CHs)",
"Early Disseminated Lyme Disease",
"Early Localized Lyme Disease",
"Ebola Virus Disease",
"Ectopic Pregnancy",
"Endocarditis",
"Endometrial Cancer",
"Endometrial Polyps",
"Endometriosis",
"Enlarged Prostate",
"Epstein-Barr Virus",
"Erectile Dysfunction",
"Failure to Thrive",
"Familial Hypercholesterolemia",
"Febrile Seizure",
"Fetal Alcohol Spectrum Disorders",
"Fibrocystic Breasts",
"Fibromyalgia",
"Folate Deficiency",
"Food Allergy",
"Foods to Avoid During Pregnancy",
"Foods to Eat During Pregnancy",
"Foreign Body Aspiration",
"Measles",
"Melanoma",
"Menopause",
"Middle Ear Infection",
"Migraine",
"Migraine Headache",
"Minor Head Trauma",
"Miscarriage",
"Molar Pregnancy",
"Morning Sickness",
"Multiple Myeloma",
"Osteoporosis",
"Otitis Externa",
"Parkinson’s Disease",
"Pediatric Acute Otitis Media",
"Pediatric Pneumonia",
"Pediatric Urinary Tract Infection",
"Pediatric Viral Gastroenteritis",
"Pelvic Inflammatory Disease",

"Peptic Ulcer Disease",
"Pericardial Effusion",
"Pericarditis (Inflammation of the Heart Membrane)",
"Peripheral Vascular Disease",
"Subluxation and Dislocation of the Hip",
"Subluxation or Dislocation of the Radial Head",
"Syphilis Infection",
"Systemic Lupus Erythematosus",
"Tendonitis",
"Tension-Type Headache",
"Testicular Cancer",
"Testicular Torsion",
"Tetanus",
"Thalassemia",
"Thyroiditis",
"Tonsillitis",
"Transient Ischemic Attack",
"Trichomonas Vulvovaginitis",
    ];
    final recentdisease = [
      "Acute HIV Infection",
      "Baby Eczema",
      "Ovarian Cancer",
      "Pancreatic Cancer"
      ];    
  @override
  List<Widget> buildActions(BuildContext context) {
    // actions for appbar
    return [IconButton(icon: Icon(Icons.clear), onPressed:(){
      query = "";
    } )];
  }

  @override
  Widget buildLeading(BuildContext context) {
    // icon on the left of appbar onpressed
    return IconButton(
      icon: AnimatedIcon(
        icon: AnimatedIcons.menu_arrow,
         progress: transitionAnimation,
         ),
          onPressed: () {
            close(context, null);
          },
          );
  }

  @override
  Widget buildResults(BuildContext context) {
    // results based on seletion
    return null;
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    // when someone searches something
    final suggestionList = query.isEmpty?recentdisease:diseases.where((p)=> p.startsWith(query)).toList();
    return ListView.builder(itemBuilder: (context,index)=>ListTile(
      onTap: (){
        showResults(context);
      },
      leading: Icon(Icons.bubble_chart),
      title: RichText(text: TextSpan(
        text: suggestionList[index].substring(0,query.length),
        style: TextStyle(color: Colors.black,fontWeight:FontWeight.bold),
        children: [TextSpan(
          text: suggestionList[index].substring(query.length),
          style: TextStyle(color:Colors.grey)
        )]
      ),
      ),
    ),
    itemCount: suggestionList.length,
    );
  }
  
}