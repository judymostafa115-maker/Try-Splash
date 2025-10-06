import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:trysplash/core/manager/app_cubit.dart';
import 'package:trysplash/core/manager/app_state.dart';
import 'package:trysplash/core/resources/app_styles.dart';
class SplashBody extends StatefulWidget {
  const SplashBody({super.key});

  @override
  State<SplashBody> createState() => _SplashBodyState();
}

class _SplashBodyState extends State<SplashBody>with TickerProviderStateMixin {
  late AnimationController animationController;
  late Animation <Offset>SlidingAnimation1 ;
  late Animation <Offset>SlidingAnimation2 ;

  @override
  void initState() {
    goToHomeScreen();
    //animationText();

    // TODO: implement initState
    super.initState();
    context.read<SplashCubit>().startAnimation(this);

  }
  // animationText(){
  //   animationController =AnimationController(vsync: this ,duration: Duration(seconds: 5));
  //   //SlidingAnimation1 =Tween<Offset>(begin:Offset(0,-10 ) ,end:Offset(0, 0) ).animate(animationController);
  //   //SlidingAnimation2 =Tween<Offset>(begin:Offset(0,10 ) ,end:Offset(0, 0) ).animate(animationController);
  //   animationController.forward();
  // }
  goToHomeScreen(){
    Future.delayed(Duration(seconds: 6),(){
      Navigator.pushReplacementNamed(context, "HomeScreen");
    });
  }
  @override
  Widget build(BuildContext context) {
    return BlocListener<SplashCubit,SplashState>(
        listener: (context,state){
      if(state is SplashNavigate){
        Navigator.pushReplacementNamed(context, "HomeScreen");
      }
    },
    child: BlocBuilder<SplashCubit,SplashState>(
        builder: (context,state){
      if(state is SplashAnimating){
        return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(child: SlideTransition(
                  position: state.animation1,
                  child: Text("Welcome",style: AppStyles.text22)),),
              SizedBox(height: 10,),
              Center(child: SlideTransition(
                  position:state.animation2,
                  child: Text("To My Online Store",style: AppStyles.text22)),),
            ]
        );

      }else{
        return const Center(child: CircularProgressIndicator());
      }
    }),
    );

  }//
}
