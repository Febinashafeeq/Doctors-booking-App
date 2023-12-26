import 'package:flutter/material.dart';
import 'package:tesla_laborotory/Widgets/widgets.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final GlobalKey<ScaffoldState> _key = GlobalKey();

    return Scaffold(
      key: _key,
      drawer: Drawer(),
      appBar: AppBar(
        elevation: .5,
        leading: InkWell(
            onTap: () {
              _key.currentState!.openDrawer();
            },
            child: Icon(
              Icons.menu,
              color: Colors.black,
            )),
        backgroundColor: Colors.white,
        title: Text(
          "TESLA LABORATORY",
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        actions: [
          Container(
            padding: EdgeInsets.all(20),
            child: const Badge(
              label: Text("0"),
              child: Icon(
                Icons.shopping_cart_outlined,
                color: Colors.black,
              ),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.symmetric(horizontal: 15.0, vertical: 20.0),
              height: 48,
              width: 350,
              decoration: BoxDecoration(
                  color: Colors.grey.shade200,
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(color: Colors.grey, width: 0.2)),
              child: TextFormField(
                decoration: InputDecoration(hintText: "Search Tests",prefixIcon: Icon(Icons.search_outlined),
                    border: border, enabledBorder: border, focusedBorder: border),
              ),
            ),
            SizedBox(height: 15,),
            Row(
              children: [
                SizedBox(width: 8,),
                Icon(Icons.book_online_outlined,size: 15,),SizedBox(width: 3,),
                Text("Book  Tests",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),SizedBox(width: 140,),
                Text("Show all >",style: TextStyle(color: Colors.blue),),
              ],
            ),
            SizedBox(height: 20,),
            SizedBox(
              child: GridView.builder(shrinkWrap:true,
                physics: ScrollPhysics(),
                itemCount: 18,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                    childAspectRatio: 1.5,
                    crossAxisSpacing: .5,
                    mainAxisSpacing: .50

              ), itemBuilder: (context, index) {
                return Column(
                  children: [
                    Container(height: 100,
                    width: 140,color: Colors.blueGrey,
                    decoration: BoxDecoration(image: DecorationImage(fit:BoxFit.cover,image: AssetImage("assets/lab.png"))),
                    ),
                    Text("Profiles")
                  ],
                );

              },),
            )
          ],
        ),
      ),
    );
  }
}
