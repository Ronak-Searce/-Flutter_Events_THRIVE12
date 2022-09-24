// import 'package:flutter/material.dart';
// import 'package:barcode_scan2/barcode_scan2.dart';
// import 'package:flutter/services.dart';
// import 'package:async/async.dart';
//
// class ScanCode extends StatefulWidget {
//   @override
//   _ScanCodeState createState() => _ScanCodeState();
// }
//
// class _ScanCodeState extends State<ScanCode> {
//   String result = "Scan here";
//   Future _scanQr() async{
//     try{
//       String qrResult = await BarcodeScanner.scan();
//       setState(() {
//         result=qrResult;
//       });
//     }on PlatformException catch(ex){
//       if(ex.code? = BarcodeScanner.cameraAccessDenied){
//         setState(() {
//           result =" camera permission was denied";
//         });
//       }else{
//         setState(() {
//           result = "Unknown error $ex";
//         });
//       }
//     }on FormatException{
//       setState(() {
//         result = "You pressed the back button before scanning anything";
//       });
//     }catch(ex){
//       setState(() {
//         result = "Unknown Error $ex";
//       });
//     }
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     //email text field
//
//     return Scaffold(
//         backgroundColor: Colors.white,
//         body: Center(
//           child: Padding(
//               padding: EdgeInsets.all(15),
//               child: SingleChildScrollView(
//                 child: Column(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   crossAxisAlignment: CrossAxisAlignment.center,
//                   children: <Widget>[
//                     SizedBox(
//                       height: 200,
//                      child: Text(result),
//                     ),
//                     SizedBox(
//                       width: 330.0,
//                       height: 50.0,
//                       child: ElevatedButton(
//                         // padding: const EdgeInsets.fromLTRB(20,15,20,15),
//                         // color: Colors.blue
//                         child: Text('Expand Your Network'),
//                         onPressed: _scanQr,
//                       ),
//                     ),
//                   ],
//                 ),
//               )
//           ),
//         )
//     );
//   }
// }
//
//
//
