import 'package:flutter/material.dart';

class AboutUI extends StatelessWidget {
  const AboutUI({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.amber, // คุมตีมสีเหลืองเหมือนหน้า Home
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_new, color: Colors.black),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: const Text(
          "สายด่วน THAILAND",
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "ผู้จัดทำ",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 30),

              // 👇 โลโก้มหาวิทยาลัย (แก้ Path ตรงนี้แล้ว)
              Image.asset(
                'assets/images/saulogo.png', 
                height: 120, 
                fit: BoxFit.contain,
              ),
              const SizedBox(height: 15),

              const Text(
                "มหาวิทยาลัยเอเชียอาคเนย์",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 30),

              // 👇 รูปโปรไฟล์ (แก้ Path ตรงนี้แล้ว)
              const CircleAvatar(
                radius: 65, // ปรับขนาดความกว้างรูปโปรไฟล์
                backgroundColor: Colors.grey, // สีพื้นหลังเผื่อรูปโหลดไม่ขึ้น
                backgroundImage: AssetImage('assets/images/profile.jpg'), 
              ),
              const SizedBox(height: 25),

              // ข้อมูลส่วนตัว
              const Text(
                "6635410011",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 8),
              const Text(
                "นาย บดินทร์ ฤทธิ์เดชา",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 8),
              const Text(
                "s6635410011@sau.ac.th",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 8),
              const Text(
                "สารสนเทศเพื่อธุรกิจดิจิทัล",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 8),
              const Text(
                "คณะบริหารธุรกิจ",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 40), // เว้นระยะด้านล่างสุด
            ],
          ),
        ),
      ),
    );
  }
}