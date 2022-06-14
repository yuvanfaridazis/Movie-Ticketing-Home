import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import 'package:movie_ticketing_home/theme.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';

class Movix extends StatefulWidget {
  const Movix({Key? key}) : super(key: key);

  @override
  _MovixState createState() => _MovixState();
}

class _MovixState extends State<Movix> {
  RefreshController _refreshController =
  RefreshController(initialRefresh: false);
  @override
  Widget build(BuildContext context) {
    double defaultWidth =
    (MediaQuery.of(context).size.width - 2 * defaultMargin);
    return AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle(
            statusBarColor: Colors.transparent,
            systemNavigationBarColor: Colors.white,
            systemNavigationBarDividerColor: Colors.white,
            statusBarIconBrightness: Brightness.light
        ),

        child: Scaffold(
          // key: _scaffoldKey,
          body: Stack(
            children: [
              Container(
                color: Colors.white,
              ),
              SafeArea(
                bottom: false,
                child: Container(
                  color: Colors.white,
                ),
              ),
              SafeArea(
                  top: false,
                  bottom: false,
                  child:
                  Stack(
                    children: [
                      SmartRefresher(
                          enablePullUp: true,
                          header: WaterDropHeader(),
                          footer: CustomFooter(
                            builder: (BuildContext context, LoadStatus? mode){
                              Widget body ;
                              if(mode==LoadStatus.idle){

                              }
                              else if(mode==LoadStatus.loading){
                                body =  CupertinoActivityIndicator();
                              }
                              else if(mode == LoadStatus.failed){

                              }
                              else if(mode == LoadStatus.canLoading){

                              }
                              else{

                              }
                              return Container(
                                height: 55,
                                child: Center(
                                    child: SizedBox()
                                ),
                              );
                            },
                          ),
                          controller: _refreshController,
                          child: ListView(
                            physics: AlwaysScrollableScrollPhysics(),
                            children: [
                              Stack(
                                alignment: Alignment.topCenter,
                                children: [
                                  Column(
                                    children: [
                                      Container(
                                          height: 325,
                                          child: Stack(
                                              children: [
                                                ListView(
                                                  scrollDirection: Axis.horizontal,
                                                  children: [
                                                    Container(
                                                      width: MediaQuery.of(context).size.width,
                                                      height: 320,
                                                      child: Stack(
                                                          alignment: Alignment.topCenter,
                                                          children: [
                                                            Container(
                                                              width: MediaQuery.of(context).size.width,
                                                              height: 300,
                                                              decoration: BoxDecoration(
                                                                  image: DecorationImage(
                                                                      fit: BoxFit.cover,
                                                                      image: AssetImage("assets/banner_1.png")
                                                                  )
                                                              ),
                                                            ),
                                                            Positioned(
                                                                bottom: 70,
                                                                left: 0,
                                                                right: 0,
                                                                child: Container(
                                                                    padding: EdgeInsets.symmetric(horizontal: 30),
                                                                    child: Column(
                                                                      crossAxisAlignment: CrossAxisAlignment.start,
                                                                      children: [
                                                                        Container(
                                                                          alignment: Alignment.centerLeft,
                                                                          child: Text("Avengers: Endgame",
                                                                            textAlign: TextAlign.left,
                                                                            style: blackFontStyle.copyWith(
                                                                                color: Colors.white,
                                                                                fontSize: 20,
                                                                                fontWeight: FontWeight.w600
                                                                            ),
                                                                          ),
                                                                        ),
                                                                        SizedBox(height: 3),
                                                                        Container(
                                                                            alignment: Alignment.centerLeft,
                                                                            child: Row(
                                                                                crossAxisAlignment: CrossAxisAlignment.center,
                                                                                children: [
                                                                                  Text("Marvel Studio",
                                                                                    textAlign: TextAlign.left,
                                                                                    style: blackFontStyle.copyWith(
                                                                                        color: Colors.white,
                                                                                        fontSize: 13,
                                                                                        fontWeight: FontWeight.w400
                                                                                    ),
                                                                                  ),
                                                                                  SizedBox(width: 10),
                                                                                  Text("5.0",
                                                                                    textAlign: TextAlign.left,
                                                                                    style: blackFontStyle.copyWith(
                                                                                        color: Colors.yellow,
                                                                                        fontSize: 13,
                                                                                        fontWeight: FontWeight.w400
                                                                                    ),
                                                                                  ),
                                                                                  SizedBox(width: 5),
                                                                                  SmoothStarRating(
                                                                                      allowHalfRating: false,
                                                                                      starCount: 5,
                                                                                      rating: 4.5,
                                                                                      filledIconData: Icons.star,
                                                                                      halfFilledIconData: Icons.star_half,
                                                                                      defaultIconData: Icons.star_border,
                                                                                      size: 15.0,
                                                                                      isReadOnly: true,
                                                                                      color: Colors.yellow,
                                                                                      borderColor: Colors.yellow,
                                                                                      spacing: 1.0)
                                                                                ]
                                                                            )
                                                                        ),
                                                                      ],
                                                                    )
                                                                )
                                                            ),
                                                          ]
                                                      ),
                                                    ),
                                                    Container(
                                                      width: MediaQuery.of(context).size.width,
                                                      height: 320,
                                                      child: Stack(
                                                          alignment: Alignment.topCenter,
                                                          children: [
                                                            Container(
                                                              width: MediaQuery.of(context).size.width,
                                                              height: 300,
                                                              decoration: BoxDecoration(
                                                                  image: DecorationImage(
                                                                      fit: BoxFit.cover,
                                                                      image: AssetImage("assets/banner_2.png")
                                                                  )
                                                              ),
                                                            ),
                                                            Positioned(
                                                                bottom: 70,
                                                                left: 0,
                                                                right: 0,
                                                                child: Container(
                                                                    padding: EdgeInsets.symmetric(horizontal: 30),
                                                                    child: Column(
                                                                      crossAxisAlignment: CrossAxisAlignment.start,
                                                                      children: [
                                                                        Container(
                                                                          alignment: Alignment.centerLeft,
                                                                          child: Text("Transformers: The Last Knight",
                                                                            textAlign: TextAlign.left,
                                                                            style: blackFontStyle.copyWith(
                                                                                color: Colors.white,
                                                                                fontSize: 20,
                                                                                fontWeight: FontWeight.w600
                                                                            ),
                                                                          ),
                                                                        ),
                                                                        SizedBox(height: 3),
                                                                        Container(
                                                                            alignment: Alignment.centerLeft,
                                                                            child: Row(
                                                                                crossAxisAlignment: CrossAxisAlignment.center,
                                                                                children: [
                                                                                  Text("Paramount Pictures",
                                                                                    textAlign: TextAlign.left,
                                                                                    style: blackFontStyle.copyWith(
                                                                                        color: Colors.white,
                                                                                        fontSize: 13,
                                                                                        fontWeight: FontWeight.w400
                                                                                    ),
                                                                                  ),
                                                                                  SizedBox(width: 10),
                                                                                  Text("5.0",
                                                                                    textAlign: TextAlign.left,
                                                                                    style: blackFontStyle.copyWith(
                                                                                        color: Colors.yellow,
                                                                                        fontSize: 13,
                                                                                        fontWeight: FontWeight.w400
                                                                                    ),
                                                                                  ),
                                                                                  SizedBox(width: 5),
                                                                                  SmoothStarRating(
                                                                                      allowHalfRating: false,
                                                                                      starCount: 5,
                                                                                      rating: 4.5,
                                                                                      filledIconData: Icons.star,
                                                                                      halfFilledIconData: Icons.star_half,
                                                                                      defaultIconData: Icons.star_border,
                                                                                      size: 15.0,
                                                                                      isReadOnly: true,
                                                                                      color: Colors.yellow,
                                                                                      borderColor: Colors.yellow,
                                                                                      spacing: 1.0)
                                                                                ]
                                                                            )
                                                                        ),
                                                                      ],
                                                                    )
                                                                )
                                                            ),
                                                          ]
                                                      ),
                                                    )
                                                  ],
                                                ),
                                                Positioned(
                                                    bottom: 0,
                                                    left: 25,
                                                    right: 25,
                                                    child: Container(
                                                        alignment: Alignment.center,
                                                        width: defaultWidth,
                                                        padding: EdgeInsets.symmetric(horizontal: 25, vertical: 12),
                                                        decoration: BoxDecoration(
                                                            color: Colors.white,
                                                            borderRadius: BorderRadius.circular(5),
                                                            boxShadow: [
                                                              BoxShadow(
                                                                color: Colors.grey.withOpacity(0.4),
                                                                spreadRadius: 0,
                                                                blurRadius: 1,
                                                                offset: Offset(0, 0),
                                                              )
                                                            ]),
                                                        child: Row(
                                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                            crossAxisAlignment: CrossAxisAlignment.center,
                                                            children: [
                                                              Row(
                                                                  children: [
                                                                    Container(
                                                                        width: 25,
                                                                        height: 25,
                                                                        decoration: BoxDecoration(
                                                                            image: DecorationImage(
                                                                                image: AssetImage("assets/ic_profile.png")
                                                                            )
                                                                        )
                                                                    ),
                                                                    SizedBox(width: 10),
                                                                    Column(
                                                                        crossAxisAlignment: CrossAxisAlignment.start,
                                                                        children: [
                                                                          Text("Paijo Kece",
                                                                            textAlign: TextAlign.left,
                                                                            style: blackFontStyle.copyWith(
                                                                                fontSize: 10,
                                                                                fontWeight: FontWeight.w600
                                                                            ),
                                                                          ),
                                                                          Text("Traveler",
                                                                            textAlign: TextAlign.left,
                                                                            style: blackFontStyle.copyWith(
                                                                                fontSize: 10,
                                                                                fontWeight: FontWeight.w400
                                                                            ),
                                                                          ),
                                                                        ]
                                                                    )
                                                                  ]
                                                              ),
                                                              Row(
                                                                  children: [
                                                                    Container(
                                                                        width: 25,
                                                                        height: 25,
                                                                        decoration: BoxDecoration(
                                                                            image: DecorationImage(
                                                                                image: AssetImage("assets/ic_wallet.png")
                                                                            )
                                                                        )
                                                                    ),
                                                                    SizedBox(width: 10),
                                                                    Column(
                                                                        crossAxisAlignment: CrossAxisAlignment.start,
                                                                        children: [
                                                                          Text("IDR 1.000.000",
                                                                            textAlign: TextAlign.left,
                                                                            style: blackFontStyle.copyWith(
                                                                                fontSize: 10,
                                                                                fontWeight: FontWeight.w600
                                                                            ),
                                                                          ),
                                                                          Text("0 Poin",
                                                                            textAlign: TextAlign.left,
                                                                            style: blackFontStyle.copyWith(
                                                                                fontSize: 10,
                                                                                fontWeight: FontWeight.w400
                                                                            ),
                                                                          ),
                                                                        ]
                                                                    )
                                                                  ]
                                                              ),
                                                              Row(
                                                                  children: [
                                                                    Container(
                                                                        width: 25,
                                                                        height: 25,
                                                                        decoration: BoxDecoration(
                                                                            image: DecorationImage(
                                                                                image: AssetImage("assets/ic_coupon.png")
                                                                            )
                                                                        )
                                                                    ),
                                                                    SizedBox(width: 10),
                                                                    Column(
                                                                        crossAxisAlignment: CrossAxisAlignment.start,
                                                                        children: [
                                                                          Text("Kupon Anda",
                                                                            textAlign: TextAlign.left,
                                                                            style: blackFontStyle.copyWith(
                                                                                fontSize: 10,
                                                                                fontWeight: FontWeight.w600
                                                                            ),
                                                                          ),
                                                                          Text("10 Kupon",
                                                                            textAlign: TextAlign.left,
                                                                            style: blackFontStyle.copyWith(
                                                                                fontSize: 10,
                                                                                fontWeight: FontWeight.w400
                                                                            ),
                                                                          ),
                                                                        ]
                                                                    )
                                                                  ]
                                                              ),
                                                            ]
                                                        )
                                                    )
                                                )

                                              ]
                                          )
                                      ),
                                      SizedBox(height: 25),
                                      Container(
                                          height: 100,
                                          child: ListView(
                                              scrollDirection: Axis.horizontal,
                                              children: [
                                                SizedBox(width: 25),
                                                Container(
                                                    child: Column(
                                                        children: [
                                                          Container(
                                                              width: 55,
                                                              height: 55,
                                                              padding: EdgeInsets.all(10),
                                                              decoration: BoxDecoration(
                                                                  color: bcgMainColor,
                                                                  shape: BoxShape.circle
                                                              ),
                                                              child: Container(
                                                                  width: 30,
                                                                  height: 30,
                                                                  decoration: BoxDecoration(
                                                                      image: DecorationImage(
                                                                          fit: BoxFit.fill,
                                                                          image: AssetImage("assets/ic_menu1.png")
                                                                      )
                                                                  )
                                                              )
                                                          ),
                                                          SizedBox(height: 2),
                                                          Text(
                                                            "War",
                                                            textAlign: TextAlign.center,
                                                            style: blackFontStyle.copyWith(fontSize: 12, fontWeight: FontWeight.w400),
                                                          ),
                                                        ]
                                                    )
                                                ),
                                                SizedBox(width: 20),
                                                Container(
                                                    child: Column(
                                                        children: [
                                                          Container(
                                                              width: 55,
                                                              height: 55,
                                                              padding: EdgeInsets.all(10),
                                                              decoration: BoxDecoration(
                                                                  color: bcgMainColor,
                                                                  shape: BoxShape.circle
                                                              ),
                                                              child: Container(
                                                                  width: 30,
                                                                  height: 30,
                                                                  decoration: BoxDecoration(
                                                                      image: DecorationImage(
                                                                          fit: BoxFit.fill,
                                                                          image: AssetImage("assets/ic_menu2.png")
                                                                      )
                                                                  )
                                                              )
                                                          ),
                                                          SizedBox(height: 2),
                                                          Text(
                                                            "Action",
                                                            textAlign: TextAlign.center,
                                                            style: blackFontStyle.copyWith(fontSize: 12, fontWeight: FontWeight.w400),
                                                          ),
                                                        ]
                                                    )
                                                ),
                                                SizedBox(width: 20),
                                                Container(
                                                    child: Column(
                                                        children: [
                                                          Container(
                                                              width: 55,
                                                              height: 55,
                                                              padding: EdgeInsets.all(10),
                                                              decoration: BoxDecoration(
                                                                  color: bcgMainColor,
                                                                  shape: BoxShape.circle
                                                              ),
                                                              child: Container(
                                                                  width: 30,
                                                                  height: 30,
                                                                  decoration: BoxDecoration(
                                                                      image: DecorationImage(
                                                                          fit: BoxFit.fill,
                                                                          image: AssetImage("assets/ic_menu3.png")
                                                                      )
                                                                  )
                                                              )
                                                          ),
                                                          SizedBox(height: 2),
                                                          Text(
                                                            "Horror",
                                                            textAlign: TextAlign.center,
                                                            style: blackFontStyle.copyWith(fontSize: 12, fontWeight: FontWeight.w400),
                                                          ),
                                                        ]
                                                    )
                                                ),
                                                SizedBox(width: 20),
                                                Container(
                                                    child: Column(
                                                        children: [
                                                          Container(
                                                              width: 55,
                                                              height: 55,
                                                              padding: EdgeInsets.all(10),
                                                              decoration: BoxDecoration(
                                                                  color: bcgMainColor,
                                                                  shape: BoxShape.circle
                                                              ),
                                                              child: Container(
                                                                  width: 30,
                                                                  height: 30,
                                                                  decoration: BoxDecoration(
                                                                      image: DecorationImage(
                                                                          fit: BoxFit.fill,
                                                                          image: AssetImage("assets/ic_menu4.png")
                                                                      )
                                                                  )
                                                              )
                                                          ),
                                                          SizedBox(height: 2),
                                                          Text(
                                                            "Strategy",
                                                            textAlign: TextAlign.center,
                                                            style: blackFontStyle.copyWith(fontSize: 12, fontWeight: FontWeight.w400),
                                                          ),
                                                        ]
                                                    )
                                                ),
                                                SizedBox(width: 20),
                                                Container(
                                                    child: Column(
                                                        children: [
                                                          Container(
                                                              width: 55,
                                                              height: 55,
                                                              padding: EdgeInsets.all(10),
                                                              decoration: BoxDecoration(
                                                                  color: bcgMainColor,
                                                                  shape: BoxShape.circle
                                                              ),
                                                              child: Container(
                                                                  width: 30,
                                                                  height: 30,
                                                                  decoration: BoxDecoration(
                                                                      image: DecorationImage(
                                                                          fit: BoxFit.fill,
                                                                          image: AssetImage("assets/ic_menu5.png")
                                                                      )
                                                                  )
                                                              )
                                                          ),
                                                          SizedBox(height: 2),
                                                          Text(
                                                            "Scifi",
                                                            textAlign: TextAlign.center,
                                                            style: blackFontStyle.copyWith(fontSize: 12, fontWeight: FontWeight.w400),
                                                          ),
                                                        ]
                                                    )
                                                ),
                                                SizedBox(width: 20),
                                                Container(
                                                    child: Column(
                                                        children: [
                                                          Container(
                                                              width: 55,
                                                              height: 55,
                                                              padding: EdgeInsets.all(10),
                                                              decoration: BoxDecoration(
                                                                  color: bcgMainColor,
                                                                  shape: BoxShape.circle
                                                              ),
                                                              child: Container(
                                                                  width: 30,
                                                                  height: 30,
                                                                  decoration: BoxDecoration(
                                                                      image: DecorationImage(
                                                                          fit: BoxFit.fill,
                                                                          image: AssetImage("assets/ic_menu6.png")
                                                                      )
                                                                  )
                                                              )
                                                          ),
                                                          SizedBox(height: 2),
                                                          Text(
                                                            "Psycho",
                                                            textAlign: TextAlign.center,
                                                            style: blackFontStyle.copyWith(fontSize: 12, fontWeight: FontWeight.w400),
                                                          ),
                                                        ]
                                                    )
                                                ),
                                              ]
                                          )
                                      ),
                                      Container(
                                        width: defaultWidth,
                                        alignment: Alignment.centerLeft,
                                        child: Text(
                                          "Upcoming Movie",
                                          textAlign: TextAlign.center,
                                          style: blackFontStyle.copyWith(fontSize: 14, fontWeight: FontWeight.w600),
                                        ),
                                      ),
                                      SizedBox(height: 15),
                                      Container(
                                          height: 130,
                                          child: ListView(
                                              scrollDirection: Axis.horizontal,
                                              children: [
                                                SizedBox(width: 25),
                                                Container(
                                                    width: 105,
                                                    height: 130,
                                                    decoration: BoxDecoration(
                                                        borderRadius: BorderRadius.circular(5),
                                                        image: DecorationImage(
                                                            fit: BoxFit.cover,
                                                            image: AssetImage("assets/img_banner1.png")
                                                        )
                                                    )
                                                ),
                                                SizedBox(width: 15),
                                                Container(
                                                    width: 105,
                                                    height: 130,
                                                    decoration: BoxDecoration(
                                                        borderRadius: BorderRadius.circular(5),
                                                        image: DecorationImage(
                                                            fit: BoxFit.cover,
                                                            image: AssetImage("assets/img_banner2.png")
                                                        )
                                                    )
                                                ),
                                                SizedBox(width: 15),
                                                Container(
                                                    width: 105,
                                                    height: 130,
                                                    decoration: BoxDecoration(
                                                        borderRadius: BorderRadius.circular(5),
                                                        image: DecorationImage(
                                                            fit: BoxFit.cover,
                                                            image: AssetImage("assets/img_banner3.png")
                                                        )
                                                    )
                                                ),
                                                SizedBox(width: 15),
                                                Container(
                                                    width: 105,
                                                    height: 130,
                                                    decoration: BoxDecoration(
                                                        borderRadius: BorderRadius.circular(5),
                                                        image: DecorationImage(
                                                            fit: BoxFit.cover,
                                                            image: AssetImage("assets/img_banner4.png")
                                                        )
                                                    )
                                                ),
                                              ]
                                          )
                                      ),
                                      SizedBox(height: 25),
                                      Container(
                                        width: defaultWidth,
                                        alignment: Alignment.centerLeft,
                                        child: Text(
                                          "Promo Snack",
                                          textAlign: TextAlign.center,
                                          style: blackFontStyle.copyWith(fontSize: 14, fontWeight: FontWeight.w600),
                                        ),
                                      ),
                                      SizedBox(height: 15),
                                      Container(
                                          height: 156,
                                          child: ListView(
                                              scrollDirection: Axis.horizontal,
                                              children: [
                                                SizedBox(width: 25),
                                                Container(
                                                    width: 120,
                                                    decoration: BoxDecoration(
                                                        borderRadius: BorderRadius.circular(5),
                                                        color: Colors.white,
                                                        boxShadow: [
                                                          BoxShadow(
                                                            color: Colors.grey.withOpacity(0.3),
                                                            spreadRadius: 0,
                                                            blurRadius: 3,
                                                            offset: Offset(0, 0),
                                                          )
                                                        ]),
                                                    child: Container(
                                                        alignment: Alignment.center,
                                                        child: Column(
                                                            mainAxisAlignment: MainAxisAlignment.start,
                                                            children: [
                                                              Container(
                                                                  width: 80,
                                                                  height: 80,
                                                                  padding: EdgeInsets.symmetric(vertical: 15),
                                                                  alignment: Alignment.center,
                                                                  decoration: BoxDecoration(
                                                                      borderRadius: BorderRadius.circular(5),
                                                                      image: DecorationImage(
                                                                          fit: BoxFit.cover,
                                                                          image: AssetImage("assets/img_product1.png")
                                                                      )
                                                                  )
                                                              ),
                                                              SizedBox(height: 10),
                                                              Container(
                                                                  alignment: Alignment.centerLeft,
                                                                  child: Column(
                                                                      crossAxisAlignment: CrossAxisAlignment.start,
                                                                      children: [
                                                                        Container(
                                                                            margin: EdgeInsets.symmetric(horizontal: 15),
                                                                            child: Column(
                                                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                                                children: [
                                                                                  Text(
                                                                                    "Butter Pop Corn",
                                                                                    maxLines: 2,
                                                                                    overflow: TextOverflow.ellipsis,
                                                                                    style: blackFontStyle.copyWith(
                                                                                        fontSize: 11, fontWeight: FontWeight.w400),
                                                                                    textAlign: TextAlign.left,
                                                                                  ),
                                                                                  SizedBox(height: 2),
                                                                                  Text(
                                                                                    "IDR 18.000",
                                                                                    maxLines: 2,
                                                                                    overflow: TextOverflow.ellipsis,
                                                                                    style: blackFontStyle.copyWith(
                                                                                        fontSize: 11, fontWeight: FontWeight.w600),
                                                                                    textAlign: TextAlign.left,
                                                                                  ),
                                                                                  SizedBox(height: 10),
                                                                                ]
                                                                            )
                                                                        ),
                                                                        Container(
                                                                            width: 120,
                                                                            decoration: BoxDecoration(
                                                                                color: mainColor,
                                                                                borderRadius: BorderRadius.vertical(bottom: Radius.circular(5))
                                                                            ),
                                                                            child: Text("Order Now", textAlign: TextAlign.center, style: blackFontStyle.copyWith(color: Colors.white, fontSize: 12))
                                                                        )
                                                                      ]
                                                                  )
                                                              )
                                                            ]
                                                        )
                                                    )
                                                ),
                                                SizedBox(width: 15),
                                                Container(
                                                    width: 120,
                                                    decoration: BoxDecoration(
                                                        borderRadius: BorderRadius.circular(5),
                                                        color: Colors.white,
                                                        boxShadow: [
                                                          BoxShadow(
                                                            color: Colors.grey.withOpacity(0.3),
                                                            spreadRadius: 0,
                                                            blurRadius: 3,
                                                            offset: Offset(0, 0),
                                                          )
                                                        ]),
                                                    child: Container(
                                                        alignment: Alignment.center,
                                                        child: Column(
                                                            mainAxisAlignment: MainAxisAlignment.start,
                                                            children: [
                                                              Container(
                                                                  width: 80,
                                                                  height: 80,
                                                                  padding: EdgeInsets.symmetric(vertical: 15),
                                                                  alignment: Alignment.center,
                                                                  decoration: BoxDecoration(
                                                                      borderRadius: BorderRadius.circular(5),
                                                                      image: DecorationImage(
                                                                          fit: BoxFit.cover,
                                                                          image: AssetImage("assets/img_product2.png")
                                                                      )
                                                                  )
                                                              ),
                                                              SizedBox(height: 10),
                                                              Container(
                                                                  alignment: Alignment.centerLeft,
                                                                  child: Column(
                                                                      crossAxisAlignment: CrossAxisAlignment.start,
                                                                      children: [
                                                                        Container(
                                                                            margin: EdgeInsets.symmetric(horizontal: 15),
                                                                            child: Column(
                                                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                                                children: [
                                                                                  Text(
                                                                                    "Ice Cream Choc",
                                                                                    maxLines: 2,
                                                                                    overflow: TextOverflow.ellipsis,
                                                                                    style: blackFontStyle.copyWith(
                                                                                        fontSize: 11, fontWeight: FontWeight.w400),
                                                                                    textAlign: TextAlign.left,
                                                                                  ),
                                                                                  SizedBox(height: 2),
                                                                                  Text(
                                                                                    "IDR 27.000",
                                                                                    maxLines: 2,
                                                                                    overflow: TextOverflow.ellipsis,
                                                                                    style: blackFontStyle.copyWith(
                                                                                        fontSize: 11, fontWeight: FontWeight.w600),
                                                                                    textAlign: TextAlign.left,
                                                                                  ),
                                                                                  SizedBox(height: 10),
                                                                                ]
                                                                            )
                                                                        ),
                                                                        Container(
                                                                            width: 120,
                                                                            decoration: BoxDecoration(
                                                                                color: mainColor,
                                                                                borderRadius: BorderRadius.vertical(bottom: Radius.circular(5))
                                                                            ),
                                                                            child: Text("Order Now", textAlign: TextAlign.center, style: blackFontStyle.copyWith(color: Colors.white, fontSize: 12))
                                                                        )
                                                                      ]
                                                                  )
                                                              )
                                                            ]
                                                        )
                                                    )
                                                ),
                                                SizedBox(width: 15),
                                                Container(
                                                    width: 120,
                                                    decoration: BoxDecoration(
                                                        borderRadius: BorderRadius.circular(5),
                                                        color: Colors.white,
                                                        boxShadow: [
                                                          BoxShadow(
                                                            color: Colors.grey.withOpacity(0.3),
                                                            spreadRadius: 0,
                                                            blurRadius: 3,
                                                            offset: Offset(0, 0),
                                                          )
                                                        ]),
                                                    child: Container(
                                                        alignment: Alignment.center,
                                                        child: Column(
                                                            mainAxisAlignment: MainAxisAlignment.start,
                                                            children: [
                                                              Container(
                                                                  width: 80,
                                                                  height: 80,
                                                                  padding: EdgeInsets.symmetric(vertical: 15),
                                                                  alignment: Alignment.center,
                                                                  decoration: BoxDecoration(
                                                                      borderRadius: BorderRadius.circular(5),
                                                                      image: DecorationImage(
                                                                          fit: BoxFit.cover,
                                                                          image: AssetImage("assets/img_product3.png")
                                                                      )
                                                                  )
                                                              ),
                                                              SizedBox(height: 10),
                                                              Container(
                                                                  alignment: Alignment.centerLeft,
                                                                  child: Column(
                                                                      crossAxisAlignment: CrossAxisAlignment.start,
                                                                      children: [
                                                                        Container(
                                                                            margin: EdgeInsets.symmetric(horizontal: 15),
                                                                            child: Column(
                                                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                                                children: [
                                                                                  Text(
                                                                                    "French Fries",
                                                                                    maxLines: 2,
                                                                                    overflow: TextOverflow.ellipsis,
                                                                                    style: blackFontStyle.copyWith(
                                                                                        fontSize: 11, fontWeight: FontWeight.w400),
                                                                                    textAlign: TextAlign.left,
                                                                                  ),
                                                                                  SizedBox(height: 2),
                                                                                  Text(
                                                                                    "IDR 15.000",
                                                                                    maxLines: 2,
                                                                                    overflow: TextOverflow.ellipsis,
                                                                                    style: blackFontStyle.copyWith(
                                                                                        fontSize: 11, fontWeight: FontWeight.w600),
                                                                                    textAlign: TextAlign.left,
                                                                                  ),
                                                                                  SizedBox(height: 10),
                                                                                ]
                                                                            )
                                                                        ),
                                                                        Container(
                                                                            width: 120,
                                                                            decoration: BoxDecoration(
                                                                                color: mainColor,
                                                                                borderRadius: BorderRadius.vertical(bottom: Radius.circular(5))
                                                                            ),
                                                                            child: Text("Order Now", textAlign: TextAlign.center, style: blackFontStyle.copyWith(color: Colors.white, fontSize: 12))
                                                                        )
                                                                      ]
                                                                  )
                                                              )
                                                            ]
                                                        )
                                                    )
                                                ),
                                                SizedBox(width: 15),
                                                Container(
                                                    width: 120,
                                                    decoration: BoxDecoration(
                                                        borderRadius: BorderRadius.circular(5),
                                                        color: Colors.white,
                                                        boxShadow: [
                                                          BoxShadow(
                                                            color: Colors.grey.withOpacity(0.3),
                                                            spreadRadius: 0,
                                                            blurRadius: 3,
                                                            offset: Offset(0, 0),
                                                          )
                                                        ]),
                                                    child: Container(
                                                        alignment: Alignment.center,
                                                        child: Column(
                                                            mainAxisAlignment: MainAxisAlignment.start,
                                                            children: [
                                                              Container(
                                                                  width: 80,
                                                                  height: 80,
                                                                  padding: EdgeInsets.symmetric(vertical: 15),
                                                                  alignment: Alignment.center,
                                                                  decoration: BoxDecoration(
                                                                      borderRadius: BorderRadius.circular(5),
                                                                      image: DecorationImage(
                                                                          fit: BoxFit.cover,
                                                                          image: AssetImage("assets/img_product4.png")
                                                                      )
                                                                  )
                                                              ),
                                                              SizedBox(height: 10),
                                                              Container(
                                                                  alignment: Alignment.centerLeft,
                                                                  child: Column(
                                                                      crossAxisAlignment: CrossAxisAlignment.start,
                                                                      children: [
                                                                        Container(
                                                                            margin: EdgeInsets.symmetric(horizontal: 15),
                                                                            child: Column(
                                                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                                                children: [
                                                                                  Text(
                                                                                    "HotDog",
                                                                                    maxLines: 2,
                                                                                    overflow: TextOverflow.ellipsis,
                                                                                    style: blackFontStyle.copyWith(
                                                                                        fontSize: 11, fontWeight: FontWeight.w400),
                                                                                    textAlign: TextAlign.left,
                                                                                  ),
                                                                                  SizedBox(height: 2),
                                                                                  Text(
                                                                                    "IDR 25.000",
                                                                                    maxLines: 2,
                                                                                    overflow: TextOverflow.ellipsis,
                                                                                    style: blackFontStyle.copyWith(
                                                                                        fontSize: 11, fontWeight: FontWeight.w600),
                                                                                    textAlign: TextAlign.left,
                                                                                  ),
                                                                                  SizedBox(height: 10),
                                                                                ]
                                                                            )
                                                                        ),
                                                                        Container(
                                                                            width: 120,
                                                                            decoration: BoxDecoration(
                                                                                color: mainColor,
                                                                                borderRadius: BorderRadius.vertical(bottom: Radius.circular(5))
                                                                            ),
                                                                            child: Text("Order Now", textAlign: TextAlign.center, style: blackFontStyle.copyWith(color: Colors.white, fontSize: 12))
                                                                        )
                                                                      ]
                                                                  )
                                                              )
                                                            ]
                                                        )
                                                    )
                                                ),
                                              ]
                                          )
                                      ),
                                    ],
                                  ),

                                  Positioned(
                                    bottom: 20,
                                    left: 0,
                                    right: 0,
                                    child: Container(
                                      margin: EdgeInsets.only(bottom: 0),
                                    ),
                                  ),
                                ],
                              )
                            ],
                          )
                      ),
                      Positioned(
                        bottom: MediaQuery.of(context).viewInsets.top,
                        left: 0,
                        right: 0,
                        child: Container(
                            padding: EdgeInsets.symmetric(horizontal: 30),
                            height: MediaQuery.of(context).size.height * 0.080,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.5),
                                    spreadRadius: 0,
                                    blurRadius: 2,
                                    offset: Offset(0, 0),
                                  )
                                ]
                            ),
                            child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Container(
                                            alignment: Alignment.bottomCenter,
                                            width: 40,
                                            height: 40,
                                            child: SvgPicture.asset("assets/ic_home.svg")
                                        ),
                                        Text("Home",
                                          textAlign: TextAlign.center,
                                          style: blackFontStyle.copyWith(color: mainColor,fontSize: 12, fontWeight: FontWeight.w400),
                                        ),
                                        SizedBox(height: 15)
                                      ]
                                  ),
                                  Column(
                                      children: [
                                        Container(
                                            alignment: Alignment.bottomCenter,
                                            width: 40,
                                            height: 40,
                                            child: SvgPicture.asset("assets/ic_feed_unactive.svg")
                                        ),
                                        Text("Feed",
                                          textAlign: TextAlign.center,
                                          style: blackFontStyle.copyWith(color: Colors.grey,fontSize: 12, fontWeight: FontWeight.w400),
                                        ),
                                        SizedBox(height: 15)
                                      ]
                                  ),
                                  Column(
                                      children: [
                                        Container(
                                            alignment: Alignment.bottomCenter,
                                            width: 40,
                                            height: 40,
                                            child: SvgPicture.asset("assets/ic_wallet_unactive.svg")
                                        ),
                                        Text("My Wallet",
                                          textAlign: TextAlign.center,
                                          style: blackFontStyle.copyWith(color: Colors.grey,fontSize: 12, fontWeight: FontWeight.w400),
                                        ),
                                        SizedBox(height: 15)
                                      ]
                                  ),
                                  Column(
                                      children: [
                                        Container(
                                            alignment: Alignment.bottomCenter,
                                            width: 40,
                                            height: 40,
                                            child: SvgPicture.asset("assets/ic_coupon_unactive.svg")
                                        ),
                                        Text("My Ticket",
                                          textAlign: TextAlign.center,
                                          style: blackFontStyle.copyWith(color: Colors.grey,fontSize: 12, fontWeight: FontWeight.w400),
                                        ),
                                        SizedBox(height: 15)
                                      ]
                                  ),
                                  Column(
                                      children: [
                                        Container(
                                            alignment: Alignment.bottomCenter,
                                            width: 40,
                                            height: 40,
                                            child: SvgPicture.asset("assets/ic_profile_unactive.svg")
                                        ),
                                        Text("Profile",
                                          textAlign: TextAlign.center,
                                          style: blackFontStyle.copyWith(color: Colors.grey,fontSize: 12, fontWeight: FontWeight.w400),
                                        ),
                                        SizedBox(height: 15)
                                      ]
                                  ),
                                ]
                            )
                        ),
                      ),
                    ],
                  )
              ),
            ],
          ),
        )
    );
  }
}

