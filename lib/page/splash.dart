import 'package:flutter/material.dart';
import 'package:wechat_app/config/fluro/navigator_util.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SplashPage extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<SplashPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        swipeImage(),
        btn()
      ],
    ));
  }

  Widget swipeImage() {
    List<String> imgs = ["assets/splash1.jpg", "assets/splash2.jpg"];
    return new Swiper(
      itemBuilder: (BuildContext context, int index) {
        return new Image.asset(
          imgs[index],
          fit: BoxFit.fill,
        );
      },
      itemCount: imgs.length,
      pagination: new SwiperPagination(),
      control: null,
    );
  }

  Widget btn(){
    return Positioned(
        right: 30,
        top:50,
        child: InkWell(
          onTap: (){
              NavigatorUtil.homePage(context);
          },
          child: Container(
            height: 30.h,
            width:60.w,
            decoration:BoxDecoration(
              color: Colors.grey[500],
              borderRadius: BorderRadius.circular(6.0)
            ) ,
            child: Center(child: Text("跳转",style: TextStyle(color: Colors.white,),) ,)  ,
          ),
        )
    );
  }
  @override
  void initState() {
    super.initState();
    // Future.delayed(const Duration(seconds: 2),(){
    //   NavigatorUtil.homePage(context);
    // });
  }
}
