import 'package:flutter/material.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter_app/pages/DesignRequirement.dart';
import 'package:get/get.dart';
class MaterialReport extends StatefulWidget {
  const MaterialReport({Key? key}) : super(key: key);

  @override
  State<MaterialReport> createState() => _MaterialReportState();
}

class _MaterialReportState extends State<MaterialReport> {
  final List<String> items = [
    'Add new column',
  ];

  String? selectedValue;

  List<DropdownMenuItem<String>> _addDividersAfterItems(List<String> items) {
    List<DropdownMenuItem<String>> menuItems = [];
    for (var item in items) {
      menuItems.addAll(
        [
          DropdownMenuItem<String>(
            value: item,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Text(
                item,
                style: const TextStyle(
                  fontSize: 14,
                ),
              ),
            ),
          ),
          //If it's last item, we will not add Divider after it.
          if (item != items.last)
            const DropdownMenuItem<String>(
              enabled: false,
              child: Divider(),
            ),
        ],
      );
    }
    return menuItems;
  }

  List<int> getDividersIndexes() {
    List<int> dividersIndexes = [];
    for (var i = 0; i < (items.length * 2) - 1; i++) {
      //Dividers indexes will be the odd indexes
      if (i.isOdd) {
        dividersIndexes.add(i);
      }
    }
    return dividersIndexes;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffE5E5E5),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Color(0xffE5E5E5),
        title: const Text(
          "Material Report:",
          style: TextStyle(color: Colors.black),
        ),
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: const Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
        ),
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: GestureDetector(
                onTap: () {},
                child: const CircleAvatar(
                  radius: 20,
                  backgroundColor: Colors.white,
                  child: Icon(
                    Icons.person,
                    size: 30,
                    color: Colors.blue,
                  ),
                ),
            ),
          ),
        ],
      ),
      body: ListView(
        shrinkWrap: true,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.all(20),
            child: Container(
              padding: EdgeInsets.only(left: 20),
              height: 50,
              margin: EdgeInsets.only(right: 160),
              decoration: BoxDecoration(
                color: Colors.blue.shade100,
                borderRadius: BorderRadius.circular(20),
              ),
              child:  DropdownButtonHideUnderline(
                child: DropdownButton2(
                  isExpanded: true,
                  hint: const TextField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Add Data',
                    ),
                  ),
                  items: _addDividersAfterItems(items),
                  // customItemsIndexes: _getDividersIndexes(),
                  // customItemsHeight: 4,
                  value: selectedValue,
                  onChanged: (value) {
                    setState(() {
                      selectedValue = value as String;
                    });
                  },
                  buttonHeight: 40,
                  buttonWidth: 140,
                  itemHeight: 40,
                  itemPadding: const EdgeInsets.symmetric(horizontal: 8.0),
                ),
              ),
            ),
          ),
          SizedBox(height: 10,),
          Padding(
              padding: EdgeInsets.only(left: 25),
              child: Text.rich(
                TextSpan(
                  children: [
                    TextSpan(text: 'Item',style: TextStyle(color: Colors.black, fontSize: 20)),
                    WidgetSpan(child: SizedBox(width: MediaQuery.of(context).devicePixelRatio,)),
                    WidgetSpan(child: Icon(Icons.more_horiz)),
                    // TextSpan(text: 'to add'),
                  ],
                ),
              )
          ),
          Padding(
            padding: EdgeInsets.all(20),
            child: Container(
              height: 50,
              margin: EdgeInsets.only(right: 100),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
              ),
            ),
          ),
          Padding(
              padding: EdgeInsets.only(left: 25),
              child: Text.rich(
                TextSpan(
                  children: [
                    TextSpan(text: 'Description',style: TextStyle(color: Colors.black, fontSize: 20)),
                    WidgetSpan(child: SizedBox(width: MediaQuery.of(context).devicePixelRatio,)),
                    WidgetSpan(child: Icon(Icons.more_horiz)),
                    // TextSpan(text: 'to add'),
                  ],
                ),
              )
          ),
          Padding(
            padding: EdgeInsets.all(20),
            child: Container(
              padding: EdgeInsets.only(left: 20),
              height: 50,
              margin: EdgeInsets.only(right: 100),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
              ),
              child: TextField(
                decoration: InputDecoration(
                  hintText: '-Give Work Description-',
                  border: InputBorder.none,
                ),
              ),
            ),
          ),
          //SizedBox(height: 10,),
          Padding(
              padding: EdgeInsets.only(left: 25),
              child: Text.rich(
                TextSpan(
                  children: [
                    TextSpan(text: 'Status',style: TextStyle(color: Colors.black, fontSize: 20)),
                    WidgetSpan(child: SizedBox(width: MediaQuery.of(context).devicePixelRatio,)),
                    WidgetSpan(child: Icon(Icons.more_horiz)),
                    // TextSpan(text: 'to add'),
                  ],
                ),
              )
          ),
          Padding(
            padding: EdgeInsets.all(20),
            child: Container(
              padding: EdgeInsets.only(left: 20),
              height: 55,
              margin: EdgeInsets.only(right: 100),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
              ),
              child: TextField(
                decoration: InputDecoration(
                  hintText: '-Select Work Status',
                  border: InputBorder.none,
                ),
              ),
            ),
          ),
          //SizedBox(height: 10,),
          //SizedBox(height: 10,),
          Padding(
              padding: EdgeInsets.only(left: 25),
              child: Text.rich(
                TextSpan(
                  children: [
                    TextSpan(text: 'Remarks',style: TextStyle(color: Colors.black, fontSize: 20)),
                    WidgetSpan(child: SizedBox(width: MediaQuery.of(context).devicePixelRatio,)),
                    WidgetSpan(child: Icon(Icons.more_horiz)),
                    // TextSpan(text: 'to add'),
                  ],
                ),
              )
          ),
          Padding(
            padding: EdgeInsets.all(20),
            child: Container(
              height: 50,
              margin: EdgeInsets.only(right: 100),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
              ),
            ),
          ),
          SizedBox(height: 40,),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ElevatedButton(onPressed: (){
                  Get.defaultDialog(
                    middleText: "Do you want to continue?",
                    titleStyle: const TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'ReadexPro',
                        fontSize: 15),
                    middleTextStyle: const TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'ReadexPro',
                        fontSize: 15),
                    textCancel: "NO",
                    cancelTextColor: Color(0xff685D5D),
                    textConfirm: "YES",
                    confirmTextColor: Colors.lightGreenAccent,
                    radius: 40,
                    buttonColor: Color(0xff685D5D),
                    //barrierDismissible: false,
                    backgroundColor: Color(0xff009AFF),
                    onConfirm: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>DesignRequirement()));
                    },
                  );
                }, child: const Text(
                  "Make Report",
                  // style: TextStyle(
                  //     color: Colors.white,
                  //     fontWeight: FontWeight.bold,
                  //     fontFamily: 'ReadexPro',
                  //     fontSize: 15),
                ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
