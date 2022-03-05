import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:favorite_button/favorite_button.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class ScreenHomeShopping extends StatefulWidget {
  const ScreenHomeShopping({Key? key}) : super(key: key);

  @override
  State<ScreenHomeShopping> createState() => _ScreenHomeShoppingState();
}

class _ScreenHomeShoppingState extends State<ScreenHomeShopping> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    /*24 is for notification bar on Android*/
    final double itemHeight = (size.height - kToolbarHeight - 24) / 2;
    final double itemWidth = size.width / 2;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                color: Colors.grey[100],
                child: Padding(
                  padding: const EdgeInsets.only(top: 5, bottom: 5),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "USell",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 30),
                            ),
                            Text(
                              "Up",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 30),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 20, right: 10),
                          child: Container(
                            decoration: BoxDecoration(
                                color: Colors.white,
                                border: Border.all(color: Colors.white),
                                borderRadius: BorderRadius.circular(2)),
                            child: Row(
                              children: [
                                Expanded(
                                  child: Container(
                                    width: 10,
                                    child: Padding(
                                      padding: const EdgeInsets.only(left: 5),
                                      child: TextFormField(
                                        decoration: InputDecoration(
                                          hintText: "Search",
                                          fillColor: Colors.grey,
                                          focusColor: Colors.grey,
                                          border: InputBorder.none,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Row(
                                  children: [
                                    Image.asset('assets/images/earphone.jpg',width:25,height:25),
                                    SizedBox(width:5),
                                    Image.asset('assets/images/time.jpg',width:25,height:25),
                                    SizedBox(width:5),
                                    Image.asset('assets/images/qr.jpg',width:25,height:25),
                                  /*  IconButton(
                                      //padding: EdgeInsets.zero,
                                      constraints: BoxConstraints(),
                                      icon: Icon(Icons.ac_unit,
                                          size: 20, color: Colors.blue),
                                      onPressed: () {},
                                    ),
                                    IconButton(
                                      //padding: EdgeInsets.zero,
                                      constraints: BoxConstraints(),
                                      icon: Icon(Icons.qr_code,
                                          size: 20, color: Colors.black),
                                      onPressed: () {},
                                    ),*/
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                color: Colors.grey[200],
                child: Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                          child: Text(
                        "HEAD TIL 1",
                        style: TextStyle(
                            //fontWeight: FontWeight.bold,
                            fontSize: 18),
                      )),
                      Expanded(
                          child: Text(
                        "HEAD TIL 2",
                        style: TextStyle(
                            //fontWeight: FontWeight.bold,
                            fontSize: 18),
                      )),
                      Expanded(
                          child: Text(
                        "HEAD TIL 3",
                        style: TextStyle(
                            //fontWeight: FontWeight.bold,
                            fontSize: 18),
                      )),
                      Expanded(
                          child: Text(
                        "HEAD TIL 4",
                        style: TextStyle(
                            //fontWeight: FontWeight.bold,
                            fontSize: 18),
                      )),
                    ],
                  ),
                ),
              ),
              Stack(
                children: [
                  Image.asset(
                    'assets/images/shopping_bags.jpg',
                  ),
                  Positioned(
                    // The Positioned widget is used to position the text inside the Stack widget
                    bottom: 0,

                    child: Container(
                      // We use this Container to create a black box that wraps the white text so that the user can read the text even when the image is white
                      width: MediaQuery.of(context).size.width,
                      color: Colors.black12,
                      padding: const EdgeInsets.all(2),
                      child: Row(
                        // mainAxisAlignment : MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'AED 300/-',
                            style: TextStyle(fontSize: 18, color: Colors.black45),
                          ),
                          Spacer(),
                          Text(
                            "AED 600/",
                            style: TextStyle(fontSize: 18, color: Colors.black26,decoration: TextDecoration.lineThrough),
                          ),
                          SizedBox(width: 5,),
                          ElevatedButton(
                              onPressed: () {},
                              style: ButtonStyle(
                                  backgroundColor:
                                      MaterialStateProperty.all<Color>(
                                          Colors.deepOrange)),
                              child: Text("50% Off",
                                  style: TextStyle(color: Colors.white))),
                        ],
                      ),
                    ),
                  )
                ],
              ),
              /* Stack(
              children: <Widget>[
                Container(

                    child:  Image.asset('assets/images/shopping_bags.jpg',),
                ),
                Positioned(
                  bottom: 0,  //give the values according to your requirement
                  child: Container(

                      color:Colors.grey,
                    child: Row(
                      mainAxisAlignment : MainAxisAlignment.spaceBetween,
                      children: [
                        Text("600 aed"),
                        Text("600 aed"),
                        Text("600 aed"),

                      ],
                    ),
                  ),
                ),
              ],
            ),*/
              // Image.asset('assets/images/shopping_bags.jpg',),
              Padding(
                padding: const EdgeInsets.only(left: 5, right: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Best Practice Definition & Meaning",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      child: Text(
                        "SHOP",
                        style: TextStyle(fontSize: 20, color: Colors.white),
                      ),
                    ),
                  ],
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: <Widget>[
                    Card(
                      child: Padding(
                        padding: const EdgeInsets.all(10),
                        child: Column(
                          children: [
                            Image.asset(
                              'assets/images/category.jpg',
                              width: 100,
                              height: 100,
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              "Main Category 1",
                              maxLines: 2,
                              style: TextStyle(
                                  //fontWeight: FontWeight.bold,

                                  overflow: TextOverflow.ellipsis,
                                  fontSize: 20),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Card(
                      child: Padding(
                        padding: const EdgeInsets.all(10),
                        child: Column(
                          children: [
                            Image.asset(
                              'assets/images/category.jpg',
                              width: 100,
                              height: 100,
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              "Main Category 2",
                              maxLines: 2,
                              style: TextStyle(
                                  //fontWeight: FontWeight.bold,

                                  overflow: TextOverflow.ellipsis,
                                  fontSize: 20),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Card(
                      child: Padding(
                        padding: const EdgeInsets.all(10),
                        child: Column(
                          children: [
                            Image.asset(
                              'assets/images/category.jpg',
                              width: 100,
                              height: 100,
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              "Main Category 3",
                              maxLines: 2,
                              style: TextStyle(
                                  //fontWeight: FontWeight.bold,

                                  overflow: TextOverflow.ellipsis,
                                  fontSize: 20),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Card(
                      child: Padding(
                        padding: const EdgeInsets.all(10),
                        child: Column(
                          children: [
                            Image.asset(
                              'assets/images/category.jpg',
                              width: 100,
                              height: 100,
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              "Main Category 4",
                              maxLines: 2,
                              style: TextStyle(
                                  //fontWeight: FontWeight.bold,

                                  overflow: TextOverflow.ellipsis,
                                  fontSize: 20),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                color: Colors.grey[100],
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    children: [
                      Text("#BEST TITLE",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20))
                    ],
                  ),
                ),
              ),

              Container(

                child: Padding(
                    padding: const EdgeInsets.all(1.0),
                    child: GridView(
                      shrinkWrap: true,
                      physics: ScrollPhysics(),
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 3,
                        childAspectRatio: (itemWidth / itemHeight),
                      ),
                      children: [
                        Card(
                          child: Column(
                            children: [
                              Stack(
                                children: [
                                  Image.asset(
                                    'assets/images/product_new.jpg',
                                  ),
                                  Positioned(
                                    right: 2,
                                    top: 2,
                                    child: FavoriteButton(
                                      isFavorite: true,

                                      // iconDisabledColor: Colors.white,

                                      valueChanged: (_isFavorite) {
                                        print('Is Favorite : $_isFavorite');
                                      },
                                    ),
                                  ),
                                ],
                              ),
                              Padding(
                                padding: const EdgeInsets.all(4.0),
                                child: Column(
                                  crossAxisAlignment : CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(right: 4),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text("0.00/",style: TextStyle(decoration: TextDecoration.lineThrough),),
                                          Container(
                                              color: Colors.orange,//remove color to make it transpatrent
                                              child: Padding(
                                                padding: const EdgeInsets.all(3.0),
                                                child: Center(child: Text("0.00%")),
                                              )),
                                        ],
                                      ),
                                    ),
                                    Text("00.00/-",
                                      style: TextStyle(fontWeight:  FontWeight.bold, fontSize: 20),
                                    ),
                                    Text("Product Service",
                                      style: TextStyle( fontSize: 20),
                                    ),
                                    Text("Title Product",
                                      style: TextStyle( fontSize: 20),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                        Card(
                          child: Column(
                            children: [
                              Stack(
                                children: [
                                  Image.asset(
                                    'assets/images/product_new.jpg',
                                  ),
                                  Positioned(
                                    right: 2,
                                    top: 2,
                                    child: FavoriteButton(
                                      isFavorite: true,

                                      // iconDisabledColor: Colors.white,

                                      valueChanged: (_isFavorite) {
                                        print('Is Favorite : $_isFavorite');
                                      },
                                    ),
                                  ),
                                ],
                              ),
                              Padding(
                                padding: const EdgeInsets.all(4.0),
                                child: Column(
                                  crossAxisAlignment : CrossAxisAlignment.start,
                                  children: [

                                    Text("00.00/-",
                                      style: TextStyle(fontWeight:  FontWeight.bold, fontSize: 20),
                                    ),
                                    Text("Product Service",
                                      style: TextStyle( fontSize: 20),
                                    ),
                                    Text("Title Product",
                                      style: TextStyle( fontSize: 20),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                        Card(
                          child: Column(
                            children: [
                              Stack(
                                children: [
                                  Image.asset(
                                    'assets/images/product_new.jpg',
                                  ),
                                  Positioned(
                                    right: 2,
                                    top: 2,
                                    child: FavoriteButton(
                                      isFavorite: true,

                                      // iconDisabledColor: Colors.white,

                                      valueChanged: (_isFavorite) {
                                        print('Is Favorite : $_isFavorite');
                                      },
                                    ),
                                  ),
                                ],
                              ),
                              Padding(
                                padding: const EdgeInsets.all(4.0),
                                child: Column(
                                  crossAxisAlignment : CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(right: 4),
                                      child: Row(
                                        mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text("0.00/",style: TextStyle(decoration: TextDecoration.lineThrough),),
                                          Container(
                                              color: Colors.orange,//remove color to make it transpatrent
                                              child: Padding(
                                                padding: const EdgeInsets.all(3.0),
                                                child: Center(child: Text("0.00%")),
                                              )),
                                        ],
                                      ),
                                    ),
                                    Text("00.00/-",
                                      style: TextStyle(fontWeight:  FontWeight.bold, fontSize: 20),
                                    ),
                                    Text("Product Service",
                                      style: TextStyle( fontSize: 20),
                                    ),
                                    Text("Title Product",
                                      style: TextStyle( fontSize: 20),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                        Card(
                          child: Column(
                            children: [
                              Stack(
                                children: [
                                  Image.asset(
                                    'assets/images/product_new.jpg',
                                  ),
                                  Positioned(
                                    right: 2,
                                    top: 2,
                                    child: FavoriteButton(
                                      isFavorite: true,

                                      // iconDisabledColor: Colors.white,

                                      valueChanged: (_isFavorite) {
                                        print('Is Favorite : $_isFavorite');
                                      },
                                    ),
                                  ),
                                ],
                              ),
                              Padding(
                                padding: const EdgeInsets.all(4.0),
                                child: Column(
                                  crossAxisAlignment : CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(right: 4),
                                      child: Row(
                                        mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text("0.00/",style: TextStyle(decoration: TextDecoration.lineThrough),),
                                          Container(
                                              color: Colors.orange,//remove color to make it transpatrent
                                              child: Padding(
                                                padding: const EdgeInsets.all(3.0),
                                                child: Center(child: Text("0.00%")),
                                              )),
                                        ],
                                      ),
                                    ),
                                    Text("00.00/-",
                                      style: TextStyle(fontWeight:  FontWeight.bold, fontSize: 20),
                                    ),
                                    Text("Product Service",
                                      style: TextStyle( fontSize: 20),
                                    ),
                                    Text("Title Product",
                                      style: TextStyle( fontSize: 20),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                        Card(
                          child: Column(
                            children: [
                              Stack(
                                children: [
                                  Image.asset(
                                    'assets/images/product_new.jpg',
                                  ),
                                  Positioned(
                                    right: 2,
                                    top: 2,
                                    child: FavoriteButton(
                                      isFavorite: true,

                                      // iconDisabledColor: Colors.white,

                                      valueChanged: (_isFavorite) {
                                        print('Is Favorite : $_isFavorite');
                                      },
                                    ),
                                  ),
                                ],
                              ),
                              Padding(
                                padding: const EdgeInsets.all(4.0),
                                child: Column(
                                  crossAxisAlignment : CrossAxisAlignment.start,
                                  children: [

                                    Text("00.00/-",
                                      style: TextStyle(fontWeight:  FontWeight.bold, fontSize: 20),
                                    ),
                                    Text("Product Service",
                                      style: TextStyle( fontSize: 20),
                                    ),
                                    Text("Title Product",
                                      style: TextStyle( fontSize: 20),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                        Card(
                          child: Column(
                            children: [
                              Stack(
                                children: [
                                  Image.asset(
                                    'assets/images/product_new.jpg',
                                  ),
                                  Positioned(
                                    right: 2,
                                    top: 2,
                                    child: FavoriteButton(
                                      isFavorite: true,

                                      // iconDisabledColor: Colors.white,

                                      valueChanged: (_isFavorite) {
                                        print('Is Favorite : $_isFavorite');
                                      },
                                    ),
                                  ),
                                ],
                              ),
                              Padding(
                                padding: const EdgeInsets.all(4.0),
                                child: Column(
                                  crossAxisAlignment : CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(right: 4),
                                      child: Row(
                                        mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text("0.00/",style: TextStyle(decoration: TextDecoration.lineThrough),),
                                          Container(
                                              color: Colors.orange,//remove color to make it transpatrent
                                              child: Padding(
                                                padding: const EdgeInsets.all(3.0),
                                                child: Center(child: Text("0.00%")),
                                              )),
                                        ],
                                      ),
                                    ),
                                    Text("00.00/-",
                                      style: TextStyle(fontWeight:  FontWeight.bold, fontSize: 20),
                                    ),
                                    Text("Product Service",
                                      style: TextStyle( fontSize: 20),
                                    ),
                                    Text("Title Product",
                                      style: TextStyle( fontSize: 20),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                        Card(
                          child: Column(
                            children: [
                              Stack(
                                children: [
                                  Image.asset(
                                    'assets/images/product_new.jpg',
                                  ),
                                  Positioned(
                                    right: 2,
                                    top: 2,
                                    child: FavoriteButton(
                                      isFavorite: true,

                                      // iconDisabledColor: Colors.white,

                                      valueChanged: (_isFavorite) {
                                        print('Is Favorite : $_isFavorite');
                                      },
                                    ),
                                  ),
                                ],
                              ),
                              Padding(
                                padding: const EdgeInsets.all(4.0),
                                child: Column(
                                  crossAxisAlignment : CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(right: 4),
                                      child: Row(
                                        mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text("0.00/",style: TextStyle(decoration: TextDecoration.lineThrough),),
                                          Container(
                                              color: Colors.orange,//remove color to make it transpatrent
                                              child: Padding(
                                                padding: const EdgeInsets.all(3.0),
                                                child: Center(child: Text("0.00%")),
                                              )),
                                        ],
                                      ),
                                    ),
                                    Text("00.00/-",
                                      style: TextStyle(fontWeight:  FontWeight.bold, fontSize: 20),
                                    ),
                                    Text("Product Service",
                                      style: TextStyle( fontSize: 20),
                                    ),
                                    Text("Title Product",
                                      style: TextStyle( fontSize: 20),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                        Card(
                          child: Column(
                            children: [
                              Stack(
                                children: [
                                  Image.asset(
                                    'assets/images/product_new.jpg',
                                  ),
                                  Positioned(
                                    right: 2,
                                    top: 2,
                                    child: FavoriteButton(
                                      isFavorite: true,

                                      // iconDisabledColor: Colors.white,

                                      valueChanged: (_isFavorite) {
                                        print('Is Favorite : $_isFavorite');
                                      },
                                    ),
                                  ),
                                ],
                              ),
                              Padding(
                                padding: const EdgeInsets.all(4.0),
                                child: Column(
                                  crossAxisAlignment : CrossAxisAlignment.start,
                                  children: [

                                    Text("00.00/-",
                                      style: TextStyle(fontWeight:  FontWeight.bold, fontSize: 20),
                                    ),
                                    Text("Product Service",
                                      style: TextStyle( fontSize: 20),
                                    ),
                                    Text("Title Product",
                                      style: TextStyle( fontSize: 20),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                        Card(
                          child: Column(
                            children: [
                              Stack(
                                children: [
                                  Image.asset(
                                    'assets/images/product_new.jpg',
                                  ),
                                  Positioned(
                                    right: 2,
                                    top: 2,
                                    child: FavoriteButton(
                                      isFavorite: true,

                                      // iconDisabledColor: Colors.white,

                                      valueChanged: (_isFavorite) {
                                        print('Is Favorite : $_isFavorite');
                                      },
                                    ),
                                  ),
                                ],
                              ),
                              Padding(
                                padding: const EdgeInsets.all(4.0),
                                child: Column(
                                  crossAxisAlignment : CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(right: 4),
                                      child: Row(
                                        mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text("0.00/",style: TextStyle(decoration: TextDecoration.lineThrough),),
                                          Container(
                                              color: Colors.orange,//remove color to make it transpatrent
                                              child: Padding(
                                                padding: const EdgeInsets.all(3.0),
                                                child: Center(child: Text("0.00%")),
                                              )),
                                        ],
                                      ),
                                    ),
                                    Text("00.00/-",
                                      style: TextStyle(fontWeight:  FontWeight.bold, fontSize: 20),
                                    ),
                                    Text("Product Service",
                                      style: TextStyle( fontSize: 20),
                                    ),
                                    Text("Title Product",
                                      style: TextStyle( fontSize: 20),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),

                      ],
                    )),
              ),
              Container(
                color: Colors.grey[100],
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    children: [
                      Text("#TOP TITLE",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20))
                    ],
                  ),
                ),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: <Widget>[
                    Card(
                      child: Padding(
                        padding: const EdgeInsets.all(10),
                        child: Column(
                          children: [
                            Image.asset(
                              'assets/images/user1.jpg',
                              width: 100,
                              height: 100,
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              "@_user1",
                              style: TextStyle(
                                color: Colors.grey,
                                //fontWeight: FontWeight.bold,

                                  overflow: TextOverflow.ellipsis,
                                  fontSize: 20),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Card(
                      child: Padding(
                        padding: const EdgeInsets.all(10),
                        child: Column(
                          children: [
                            Image.asset(
                              'assets/images/user2.jpg',
                              width: 100,
                              height: 100,
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              "@_user2",
                              style: TextStyle(
                                  color: Colors.grey,
                                  //fontWeight: FontWeight.bold,

                                  overflow: TextOverflow.ellipsis,
                                  fontSize: 20),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Card(
                      child: Padding(
                        padding: const EdgeInsets.all(10),
                        child: Column(
                          children: [
                            Image.asset(
                              'assets/images/user1.jpg',
                              width: 100,
                              height: 100,
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              "@_user3",
                              style: TextStyle(
                                  color: Colors.grey,
                                  //fontWeight: FontWeight.bold,

                                  overflow: TextOverflow.ellipsis,
                                  fontSize: 20),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Card(
                      child: Padding(
                        padding: const EdgeInsets.all(10),
                        child: Column(
                          children: [
                            Image.asset(
                              'assets/images/user2.jpg',
                              width: 100,
                              height: 100,
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              "@_user4",
                              style: TextStyle(
                                  color: Colors.grey,
                                  //fontWeight: FontWeight.bold,

                                  overflow: TextOverflow.ellipsis,
                                  fontSize: 20),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Card(
                      child: Padding(
                        padding: const EdgeInsets.all(10),
                        child: Column(
                          children: [
                            Image.asset(
                              'assets/images/user1.jpg',
                              width: 100,
                              height: 100,
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              "@_user5",
                              style: TextStyle(
                                  color: Colors.grey,
                                  //fontWeight: FontWeight.bold,

                                  overflow: TextOverflow.ellipsis,
                                  fontSize: 20),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Card(
                      child: Padding(
                        padding: const EdgeInsets.all(10),
                        child: Column(
                          children: [
                            Image.asset(
                              'assets/images/user2.jpg',
                              width: 100,
                              height: 100,
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              "@_user6",
                              style: TextStyle(
                                  color: Colors.grey,
                                  //fontWeight: FontWeight.bold,

                                  overflow: TextOverflow.ellipsis,
                                  fontSize: 20),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Card(
                      child: Padding(
                        padding: const EdgeInsets.all(10),
                        child: Column(
                          children: [
                            Image.asset(
                              'assets/images/user1.jpg',
                              width: 100,
                              height: 100,
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text(
                              "@_user7",
                              style: TextStyle(
                                  color: Colors.grey,
                                  //fontWeight: FontWeight.bold,

                                  overflow: TextOverflow.ellipsis,
                                  fontSize: 20),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                color: Colors.grey[100],
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    mainAxisAlignment : MainAxisAlignment.spaceBetween,
                    children: [
                      Text("#SHOP BY CATEGORY",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20)),

                      Text("View All",
                          style: TextStyle(
                              fontSize: 20)),
                    ],
                  ),
                ),
              ),
              Row(children: [
                SizedBox(width:5),
                Image.asset(
                  'assets/images/category.jpg',
                  width: 75,
                  height: 75,
                ),
                SizedBox(width:5),
                Text("Sub Category"),
                SizedBox(width:5),
                Image.asset(
                  'assets/images/category.jpg',
                  width: 75,
                  height: 75,
                ),
                SizedBox(width:5),
                Text("Sub Category"),
              ],),
              SizedBox(height: 5,),
              Container(

                child: Padding(
                    padding: const EdgeInsets.all(1.0),
                    child: GridView(
                      shrinkWrap: true,
                      physics: ScrollPhysics(),
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 3,
                        childAspectRatio: (itemWidth / itemHeight),
                      ),
                      children: [
                        Card(
                          child: Column(
                            children: [
                              Stack(
                                children: [
                                  Image.asset(
                                    'assets/images/product_new.jpg',
                                  ),
                                  Positioned(
                                    right: 2,
                                    top: 2,
                                    child: FavoriteButton(
                                      isFavorite: true,

                                      // iconDisabledColor: Colors.white,

                                      valueChanged: (_isFavorite) {
                                        print('Is Favorite : $_isFavorite');
                                      },
                                    ),
                                  ),
                                ],
                              ),
                              Padding(
                                padding: const EdgeInsets.all(4.0),
                                child: Column(
                                  crossAxisAlignment : CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(right: 4),
                                      child: Row(
                                        mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text("0.00/",style: TextStyle(decoration: TextDecoration.lineThrough),),
                                          Container(
                                              color: Colors.orange,//remove color to make it transpatrent
                                              child: Padding(
                                                padding: const EdgeInsets.all(3.0),
                                                child: Center(child: Text("0.00%")),
                                              )),
                                        ],
                                      ),
                                    ),
                                    Text("00.00/-",
                                      style: TextStyle(fontWeight:  FontWeight.bold, fontSize: 20),
                                    ),
                                    Text("Product Service",
                                      style: TextStyle( fontSize: 20),
                                    ),
                                    Text("Title Product",
                                      style: TextStyle( fontSize: 20),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                        Card(
                          child: Column(
                            children: [
                              Stack(
                                children: [
                                  Image.asset(
                                    'assets/images/product_new1.jpg',
                                  ),
                                  Positioned(
                                    right: 2,
                                    top: 2,
                                    child: FavoriteButton(
                                      isFavorite: true,

                                      // iconDisabledColor: Colors.white,

                                      valueChanged: (_isFavorite) {
                                        print('Is Favorite : $_isFavorite');
                                      },
                                    ),
                                  ),
                                ],
                              ),
                              Padding(
                                padding: const EdgeInsets.all(4.0),
                                child: Column(
                                  crossAxisAlignment : CrossAxisAlignment.start,
                                  children: [

                                    Text("00.00/-",
                                      style: TextStyle(fontWeight:  FontWeight.bold, fontSize: 20),
                                    ),
                                    Text("Product Service",
                                      style: TextStyle( fontSize: 20),
                                    ),
                                    Text("Title Product",
                                      style: TextStyle( fontSize: 20),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                        Card(
                          child: Column(
                            children: [
                              Stack(
                                children: [
                                  Image.asset(
                                    'assets/images/product_new1.jpg',
                                  ),
                                  Positioned(
                                    right: 2,
                                    top: 2,
                                    child: FavoriteButton(
                                      isFavorite: true,

                                      // iconDisabledColor: Colors.white,

                                      valueChanged: (_isFavorite) {
                                        print('Is Favorite : $_isFavorite');
                                      },
                                    ),
                                  ),
                                ],
                              ),
                              Padding(
                                padding: const EdgeInsets.all(4.0),
                                child: Column(
                                  crossAxisAlignment : CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(right: 4),
                                      child: Row(
                                        mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text("0.00/"),
                                          Container(
                                              color: Colors.orange,//remove color to make it transpatrent
                                              child: Padding(
                                                padding: const EdgeInsets.all(3.0),
                                                child: Center(child: Text("0.00%")),
                                              )),
                                        ],
                                      ),
                                    ),
                                    Text("00.00/-",
                                      style: TextStyle(fontWeight:  FontWeight.bold, fontSize: 20),
                                    ),
                                    Text("Product Service",
                                      style: TextStyle( fontSize: 20),
                                    ),
                                    Text("Title Product",
                                      style: TextStyle( fontSize: 20),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),


                      ],
                    )),
              ),
              Row(
                mainAxisAlignment : MainAxisAlignment.spaceBetween,
                children: [
                Text("TERM OF USE", style: TextStyle(color: Colors.grey),),
                Text("CONTACT",style: TextStyle(color: Colors.grey),),
                Text("CAREER",style: TextStyle(color: Colors.grey),),
                Text("AREA RANGE",style: TextStyle(color: Colors.grey),),
              ],),
              SizedBox(height: 5,),
              Row(
                mainAxisAlignment : MainAxisAlignment.spaceBetween,
                children: [
                Column(
                  children: [
                    Text("USELL",style: TextStyle(color: Colors.grey),),
                    Text("UP",style: TextStyle(color: Colors.grey),)
                  ],
                ),
                Text("PROJECT BY EZENESS TECHNOLOGY",style: TextStyle(color: Colors.grey,fontWeight: FontWeight.bold),)
              ],)
            ],
          ),
        ),
      ),
    );
  }
}
