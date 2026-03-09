import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class SubBHomeUI extends StatelessWidget {
  const SubBHomeUI({super.key});

  Future<void> callNumber(String number) async {
    final Uri uri = Uri(scheme: 'tel', path: number);
    await launchUrl(uri);
  }

  Widget card(IconData icon,String name,String number){

    return Container(
      margin: const EdgeInsets.symmetric(horizontal:14,vertical:8),

      child: Card(
        elevation:8,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),

        child: Padding(
          padding: const EdgeInsets.all(16),

          child: Row(
            children: [

              Container(
                width:60,
                height:60,
                decoration: BoxDecoration(
                  color: Colors.red.shade100,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Icon(icon,size:34,color:Colors.red),
              ),

              const SizedBox(width:16),

              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [

                    Text(name,
                        style: const TextStyle(
                          fontSize:20,
                          fontWeight:FontWeight.bold,
                        )),

                    Text(number,
                        style: const TextStyle(
                          fontSize:17,
                          color: Colors.grey,
                        )),

                  ],
                ),
              ),

              ElevatedButton.icon(
                onPressed: (){
                  callNumber(number);
                },
                icon: const Icon(Icons.call),
                label: const Text("โทร"),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.red,
                ),
              )

            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {

    return ListView(
      children: [

        card(Icons.local_police,"เหตุด่วนเหตุร้าย","191"),
        card(Icons.fire_truck,"แจ้งไฟไหม้","199"),
        card(Icons.search,"คนหาย","1192"),
        card(Icons.directions_boat,"อุบัติเหตุทางน้ำ","1196"),
        card(Icons.people,"แจ้งคนหาย","1300"),
        card(Icons.security,"ศูนย์ปลอดภัยคมนาคม","1356"),
        card(Icons.medical_services,"หน่วยแพทย์กู้ชีพ","1554"),
        card(Icons.local_hospital,"ศูนย์เอราวัณ","1646"),
        card(Icons.health_and_safety,"แพทย์ฉุกเฉิน","1669"),

      ],
    );
  }
}