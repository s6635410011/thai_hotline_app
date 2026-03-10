import 'package:flutter/material.dart';

import 'sub_a_home_ui.dart';
import 'sub_b_home_ui.dart';
import 'sub_c_home_ui.dart';
import 'sub_d_home_ui.dart';
import 'about_ui.dart'; // 👉 อย่าลืม import หน้า AboutUI ด้วยนะครับ

class HomeUI extends StatefulWidget {
  const HomeUI({super.key});

  @override
  State<HomeUI> createState() => _HomeUIState();
}

class _HomeUIState extends State<HomeUI> {

  int _index = 0;

  final pages = const [
    SubAHomeUI(),
    SubBHomeUI(),
    SubCHomeUI(),
    SubDHomeUI(),
  ];

  final titles = [
    "การเดินทาง",
    "อุบัติเหตุ",
    "ธนาคาร",
    "สาธารณูปโภค"
  ];

  /// 👇 รูปของแต่ละหมวด
  final images = [
    "assets/images/travel.png",
    "assets/images/accident.png",
    "assets/images/bank.png",
    "assets/images/utility.png"
  ];

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      appBar: AppBar(
        title: const Text(
          "สายด่วน THAILAND",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: Colors.amber,
        // 👇 เพิ่มส่วน actions ตรงนี้ครับ สำหรับปุ่มมุมขวาบน
        actions: [
          IconButton(
            onPressed: () {
              // คำสั่งสำหรับเปลี่ยนหน้าไปที่ AboutUI
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const AboutUI(),
                ),
              );
            },
            icon: const Icon(Icons.info_outline, color: Colors.black), // ไอคอนตัว i แบบวงกลม
          ),
        ],
      ),

      body: Column(
        children: [

          const SizedBox(height: 10),

          /// ชื่อหมวด
          Text(
            titles[_index],
            style: const TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
            ),
          ),

          const SizedBox(height: 10),

          /// 👇 รูปใต้หมวด
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 12),
            height: 140,
            width: double.infinity,

            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),

              image: DecorationImage(
                image: AssetImage(images[_index]),
                fit: BoxFit.contain,
              ),
            ),
          ),

          const SizedBox(height: 10),

          /// รายการสายด่วน
          Expanded(
            child: pages[_index],
          ),

        ],
      ),

      bottomNavigationBar: BottomNavigationBar(

        currentIndex: _index,

        type: BottomNavigationBarType.fixed,

        selectedItemColor: Colors.orange,
        unselectedItemColor: Colors.grey,

        onTap: (value) {
          setState(() {
            _index = value;
          });
        },

        items: const [

          BottomNavigationBarItem(
            icon: Icon(Icons.directions_car),
            label: "การเดินทาง",
          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.warning),
            label: "อุบัติเหตุ",
          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.account_balance),
            label: "ธนาคาร",
          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.power),
            label: "สาธารณูปโภค",
          ),

        ],
      ),
    );
  }
}