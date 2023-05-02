import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

import 'BuyNow.dart';

class ProductDetail extends StatelessWidget {
  const ProductDetail({Key? key});
  static List<Color> colors = [
    Colors.black54,
    Colors.brown,
    Colors.blueGrey,
    Colors.amber
  ];
  static List<double> sizes = [9.5, 10.5, 11, 12];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.arrow_back,
              color: Colors.black54,
            )),
        title: Text(
          'Details',
          style: Theme.of(context)
              .textTheme
              .headlineMedium
              ?.copyWith(color: Colors.black),
        ),
        centerTitle: true,
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.shopping_bag_outlined,
                color: Colors.black54,
              )),
        ],
      ),
      body: Column(
        children: [
          SizedBox(height: 360,width: double.infinity,child: WebView(
            debuggingEnabled: false,backgroundColor: Colors.transparent,initialUrl: 'https://elegant-tanuki-0787ed.netlify.app/',
            javascriptMode: JavascriptMode.unrestricted,
          ),),
          Text(
            "Matrix Watch Mens watch",
            style: Theme.of(context)
                .textTheme
                .bodyMedium!
                .copyWith(color: Colors.black54),
          ),
          SizedBox(),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.star_border_rounded, color: Colors.black54),
              Text(
                '4.9/5.0 (150 Reviews)',
                style: Theme.of(context)
                    .textTheme
                    .bodyMedium!
                    .copyWith(color: Colors.black54),
              ),
            ],
          ),
          Spacer(),
          Row(
            children: [
              Expanded(
                  child: Column(
                children: [
                  Text(
                    'Colors',
                    style: Theme.of(context)
                        .textTheme
                        .bodyMedium!
                        .copyWith(color: Colors.black54),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List.generate(
                        4,
                        (index) => Container(
                              height: 25,
                              margin: EdgeInsets.symmetric(horizontal: 4),
                              width: 25,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle, color: colors[index]),
                            )),
                  )
                ],
              )),
              SizedBox(
                width: 10,
              ),
              Expanded(
                  child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'sizes',
                    style: Theme.of(context)
                        .textTheme
                        .bodyMedium!
                        .copyWith(color: Colors.black54),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List.generate(
                        4,
                        (index) => Padding(
                              padding: EdgeInsets.only(right: 8),
                              child: Text(
                                sizes[index].toString(),
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyMedium!
                                    .copyWith(color: Colors.black54),
                              ),
                            )),
                  )
                ],
              ))
            ],
          ),
          Spacer(),
        ],
      ),
      bottomNavigationBar: Row(
        children: [
          Expanded(
              child: Container(
            height: 70,
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(10)),
                child: Center(child: Column(mainAxisAlignment: MainAxisAlignment.center,crossAxisAlignment: CrossAxisAlignment.start,children: [
                  Text('Price',
                    style: Theme.of(context)
                        .textTheme
                        .bodyMedium!
                        .copyWith(color: Colors.black54),),
                        Text('Rs 1499.00',
                    style: Theme.of(context)
                        .textTheme
                        .bodyMedium!
                        .copyWith(color: Colors.black87),)
                ],),),
          ),
          ),
          SizedBox(width: 10,),
          Expanded(child: Container(height: 70,color: Color(0xff26B4D6),child: Center(
            child: GestureDetector(onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>BuyNow()));
            },
              child: Text('Buy now',
                        style: Theme.of(context)
                            .textTheme
                            .bodyLarge!
                            .copyWith(color: Colors.white),),
            ),
          ),))
        ],
      ),
    ));
  }
}
