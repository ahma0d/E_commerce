// import 'dart:async';

// import 'package:e_commerce/app/featcures/auth/presentation/pages/login.dart';
// import 'package:e_commerce/core/utils/components/customAppButton.dart';
// import 'package:flutter/material.dart';

// import '../../../../../core/utils/routes/route_manager.dart';
// import '../../../../../core/utils/theme/color_manager.dart';

// class SplashPage extends StatefulWidget {
//   const SplashPage({super.key});

//   @override
//   State<SplashPage> createState() => _SplashPageState();
// }

// class _SplashPageState extends State<SplashPage> {
//   Timer? _timer;

//   void _startDelay() {
//     _timer = Timer(const Duration(seconds: 3), _goNext);
//   }

//   void _goNext() {
//     Navigator.pushReplacementNamed(context, Routes.onBoardinghRoute);
//   }

//   @override
//   void initState() {
//     super.initState();
//     _startDelay();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: ColorManager.primary,
//       body: Column(
//         children: [
//           AppButton(
//             title: 'go',
//             bgColor: ColorManager.primary,
//             onPressed: () {
//               Navigator.push(
//                 context,
//                 MaterialPageRoute(
//                   builder: (context) => LoginPage(),
//                 ),
//               );
//             },
//           )
//         ],
//       ),
//     );
//   }

//   @override
//   void dispose() {
//     _timer?.cancel();
//     super.dispose();
//   }
// }
import 'package:e_commerce/app/featcures/auth/presentation/pages/login.dart';
import 'package:e_commerce/core/utils/components/customTextButton.dart';
import 'package:flutter/material.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: CustomAppTextButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => LoginPage(),
                ),
              );
            },
            text: 'go'),
      ),
    );
  }
}
