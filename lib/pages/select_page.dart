import 'package:flutter/material.dart';
import 'package:flutter_app/pages/InventoryonePage.dart';
import 'package:flutter_app/pages/tasks.dart';

class SelectPage extends StatefulWidget {
  const SelectPage({Key? key}) : super(key: key);
  @override
  State<SelectPage> createState() => _SelectPageState();
}

class _SelectPageState extends State<SelectPage> {
  @override
  Widget build(BuildContext context) {
    var screensize = MediaQuery.of(context).size;
    return Scaffold(
      body: Center(
        child: Stack(children: [
          Container(
            decoration: const BoxDecoration(
              color: Color(0xffE5E5E5),
            ),
          ),
          Align(
            alignment: Alignment.topCenter,
            child: Image.asset(
              'assets/images/bgimage.png',
              width: screensize.width,
              height: screensize.height * 0.36,
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
            left: 30,
            top: 46,
            child: InkWell(
                child: const Icon(
                  Icons.arrow_back_ios,
                  size: 30,
                ),
                onTap: () {
                  Navigator.of(context).pop();
                }),
          ),
          const Positioned(
            left: 30,
            top: 100,
            child: Text(
              "Select",
              style: TextStyle(fontSize: 30, fontFamily: 'ReadexPro'),
            ),
          ),
          Container(
            width: screensize.width,
            margin: EdgeInsets.only(
              top: screensize.height * 0.38,
            ),
            child: Column(
              children: <Widget>[
                Row(
                  children: [
                    Container(
                      width: screensize.width * 0.91,
                      height: screensize.height * 0.18625,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(24.0),
                        color: const Color(0xffFFFFFF),
                      ),
                      margin: EdgeInsets.only(
                        left: screensize.width * 0.04,
                      ),
                      child: InkWell(
                        child: Row(
                          children: [
                            Container(
                              alignment: Alignment.centerLeft,
                              margin: EdgeInsets.only(
                                  left: screensize.width * 0.045),
                              child: Image.asset(
                                'assets/images/dash_board_one.png',
                                width: screensize.width * 0.35,
                                height: screensize.height * 0.16,
                              ),
                            ),
                            Container(
                              width: screensize.width * 0.35,
                              height: screensize.height * 0.16,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(24.0),
                                color: const Color(0xffCAEBF3),
                              ),
                              margin: EdgeInsets.only(
                                  left: screensize.width * 0.133),
                              child: const Center(
                                child: Text(
                                  'Inventory',
                                  style: TextStyle(
                                      fontFamily: 'ReadexPro', fontSize: 23),
                                ),
                              ),
                            ),
                          ],
                        ),
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const InventoryPage()));
                        },
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Container(
                      width: screensize.width * 0.91,
                      height: screensize.height * 0.18625,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(24.0),
                        color: const Color(0xffFFFFFF),
                      ),
                      margin: EdgeInsets.only(
                        left: screensize.width * 0.04,
                        top: screensize.height * 0.015,
                      ),
                      child: InkWell(
                        child: Row(
                          children: [
                            Container(
                              margin: EdgeInsets.only(
                                  left: screensize.width * 0.045),
                              child: Image.asset(
                                'assets/images/pie_chart.png',
                                width: screensize.width * 0.35,
                                height: screensize.height * 0.16,
                              ),
                            ),
                            Container(
                              width: screensize.width * 0.35,
                              height: screensize.height * 0.16,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(24.0),
                                  color: const Color(0xffCAEBF3)),
                              margin: EdgeInsets.only(
                                  left: screensize.width * 0.133),
                              child: const Center(
                                child: Text(
                                  'Analytics',
                                  style: TextStyle(
                                      fontFamily: 'Readexpro', fontSize: 23),
                                ),
                              ),
                            ),
                          ],
                        ),
                        onTap: () {
                          /*Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const TasksPage()));*/
                          //print('Go to Analytics Page');
                        },
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Container(
                      width: screensize.width * 0.91,
                      height: screensize.height * 0.18625,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(24.0),
                        color: const Color(0xffFFFFFF),
                      ),
                      margin: EdgeInsets.only(
                        left: screensize.width * 0.04,
                        top: screensize.height * 0.015,
                      ),
                      child: InkWell(
                        child: Row(
                          children: [
                            Container(
                              alignment: Alignment.centerLeft,
                              margin: EdgeInsets.only(
                                  left: screensize.width * 0.045),
                              child: Image.asset(
                                'assets/images/checklist.png',
                                width: screensize.width * 0.35,
                                height: screensize.height * 0.16,
                              ),
                            ),
                            Container(
                              width: screensize.width * 0.35,
                              height: screensize.height * 0.16,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(24.0),
                                color: const Color(0xffCAEBF3),
                              ),
                              margin: EdgeInsets.only(
                                left: screensize.width * 0.133,
                              ),
                              child: const Center(
                                child: Text(
                                  'Tasks',
                                  style: TextStyle(
                                      fontFamily: 'ReadexPro', fontSize: 23),
                                ),
                              ),
                            ),
                          ],
                        ),
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const TasksPage()));
                          //print('Go to Tasks Page');
                        },
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
