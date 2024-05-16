
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePageWidget extends StatefulWidget {
  const HomePageWidget({Key? key}) : super(key: key);

  @override
  State<HomePageWidget> createState() => _HomePageWidgetState();
}

class _HomePageWidgetState extends State<HomePageWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => (),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: Colors.white,
        appBar: AppBar(
          leading: IconButton(
            color: Colors.white,
            icon: const Icon(Icons.menu),
            tooltip: 'Menu Icon',
            onPressed: () {},
          ),
          backgroundColor: Color(0xFF064072),
          title: Text(
            "VINEETH K",
            style: TextStyle(
                color: const Color.fromARGB(255, 255, 255, 255),
                fontWeight: FontWeight.bold),
          ),
        ),
        body: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [

              
              SizedBox(height: 50),
              Container(
                child: Text(
                  'IPDT',

                  // textAlign: TextAlign.start,
                  style: TextStyle(fontSize: 20),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    child: Text(
                      'Shipment Summary', style: TextStyle(
                        
                      ),
                    ),
                  ),
                  const Spacer(),
                  Container(
                    child: Text(
                      'Change',
                      textAlign: TextAlign.start,
                    ),
                  ),
                ],
              ),
              Opacity(
                opacity: 0.3,
                child: Divider(
                  thickness: 2,
                  indent: 10,
                  endIndent: 10,
                  color: Colors.black,
                ),
              ),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    cardFunction("0", "Pending"),
                    cardFunction("0", "Open"),
                    cardFunction("0", "Completed"),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Expanded cardFunction(String countValue, String bucketName) {
  return Expanded(
    child: Padding(
      padding: EdgeInsetsDirectional.fromSTEB(10, 0, 10, 0),
      child: Container(
        height: 120,
        width: 100,
        child: Card(
          elevation: 4,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                child: Text(
                  countValue,
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                child: Text(bucketName),
              ),
            ],
          ),
        ),
      ),
    ),
  );
}
