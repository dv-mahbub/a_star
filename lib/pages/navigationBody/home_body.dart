import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeBody extends StatefulWidget {
  const HomeBody({Key? key}) : super(key: key);

  @override
  State<HomeBody> createState() => _HomeBodyState();
}

class _HomeBodyState extends State<HomeBody> {
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context, designSize: const Size(360, 690));
    double height = ScreenUtil().screenHeight;
    return Stack(
      children: <Widget>[
        Container(height: double.infinity,),
        Container(
          height: height/3.5,
          decoration: BoxDecoration(
              color: Colors.green[500],
              borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(200),
                bottomRight: Radius.circular(200),
              )
          ),
          child: const Center(child: Text('WelCome to you in A Star Apps\n\n', style: TextStyle(fontSize: 23, color: Colors.white),)),
        ),
        Positioned(
            top: height/3.5-25,
            left: 0.1,
            right: 0.1,
            bottom: 0,
            child: SizedBox(
              width: ScreenUtil().screenWidth,
              //height: height-90,
              child: Wrap(
                spacing: 10,
                runSpacing: 20,
                alignment: WrapAlignment.center,
                children: [
                  GestureDetector(
                    onTap: (){},
                    child: Container(
                      height: 100,
                      width: 130,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow:  const [
                          BoxShadow(
                            color: Colors.grey,
                            offset: Offset(2,2), // Shadow position
                          ),
                        ],
                      ),
                      child: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Icon(Icons.abc_outlined, size: 55, color: Colors.green,),
                            Text('A Star Stationary', style: TextStyle(fontWeight: FontWeight.bold),)
                          ],
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: (){},
                    child: Container(
                      height: 100,
                      width: 130,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow:  const [
                          BoxShadow(
                            color: Colors.grey,
                            offset: Offset(2,2), // Shadow position
                          ),
                        ],
                      ),
                      child: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Icon(Icons.abc_outlined, size: 55, color: Colors.green,),
                            Text('A Star Stationary', style: TextStyle(fontWeight: FontWeight.bold),)
                          ],
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: (){},
                    child: Container(
                      height: 100,
                      width: 130,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow:  const [
                          BoxShadow(
                            color: Colors.grey,
                            offset: Offset(2,2), // Shadow position
                          ),
                        ],
                      ),
                      child: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Icon(Icons.abc_outlined, size: 55, color: Colors.green,),
                            Text('A Star Stationary', style: TextStyle(fontWeight: FontWeight.bold),)
                          ],
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: (){},
                    child: Container(
                      height: 100,
                      width: 130,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow:  const [
                          BoxShadow(
                            color: Colors.grey,
                            offset: Offset(2,2), // Shadow position
                          ),
                        ],
                      ),
                      child: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Icon(Icons.abc_outlined, size: 55, color: Colors.green,),
                            Text('A Star Stationary', style: TextStyle(fontWeight: FontWeight.bold),)
                          ],
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: (){},
                    child: Container(
                      height: 100,
                      width: 130,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow:  const [
                          BoxShadow(
                            color: Colors.grey,
                            offset: Offset(2,2), // Shadow position
                          ),
                        ],
                      ),
                      child: Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            Icon(Icons.abc_outlined, size: 55, color: Colors.green,),
                            Text('A Star Stationary', style: TextStyle(fontWeight: FontWeight.bold),)
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            )
        )
      ],
    );
  }
}
