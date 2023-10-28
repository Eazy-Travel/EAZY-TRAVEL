import 'package:flutter/material.dart';
import 'ClientCustomRow.dart';
import 'FeaturedVehiclesClientside.dart';
class ClientHomePageSlider extends StatefulWidget {

  const ClientHomePageSlider({super.key});

  @override
  State<ClientHomePageSlider> createState() => _ClientHomePageSliderState();
}

class _ClientHomePageSliderState extends State<ClientHomePageSlider> {
  ScrollController _scrollController=ScrollController();

  @override
  void initState(){
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      double minScrollExtent1=_scrollController.position.minScrollExtent;
      double maxScrollExtent1=_scrollController.position.maxScrollExtent;

      animateToMaxMin(maxScrollExtent1, minScrollExtent1,
          maxScrollExtent1, 5, _scrollController);

    });

  }

  animateToMaxMin(double max,
        double min,double direction,
        int seconds,ScrollController scrollController){
    scrollController.animateTo(direction, duration: Duration(seconds:seconds),

        curve: Curves.linear).then(
            (value){
              direction=direction==max ? min :max;
              animateToMaxMin(max, min, direction, seconds, scrollController);
            });

  }

  @override
  Widget build(BuildContext context) {
    final heightBox = MediaQuery.of(context).size.height * 0.5;
    final widthBox = MediaQuery.of(context).size.width * 0.3;
    final width = MediaQuery.of(context).size.width;
    return SizedBox(

      height:220,
      child: ListView.separated(
          physics: const BouncingScrollPhysics(),
          scrollDirection: Axis.vertical,
          itemBuilder: (context, index) {

            return  SizedBox(
                width:300,
                height:400,
                child:Container(
                    padding: const EdgeInsets.only(top: 4, left: 20, right: 20),
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [
                            Colors.black12,
                            Colors.black26,
                          ],
                          begin: Alignment.topLeft,
                        )),
                    child: ListView(
                      children: [
                        ClientCustomRow(scrollController: _scrollController),
                        SizedBox(
                          height: 7,
                        ),
                        Container(
                            height: 25,
                            child: const  Text('Featured Busses',
                              style:TextStyle(
                                  fontSize: 20,
                                  color: Colors.black
                              ),
                            )),
                        SizedBox(
                          height: 4,
                        ),
                        FeaturedVehicleClientSide(),
                        SizedBox(height: 10),
                        Container(
                          height: 50,
                          color: Colors.lime[600],
                        )
                      ],
                    ))

            );
          },
          separatorBuilder: (context, index) => const Padding(
              padding: EdgeInsets.only(right: 10)),
          itemCount: 2),
    );
  }
}
