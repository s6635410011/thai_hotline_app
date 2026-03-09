import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class SubDHomeUI extends StatelessWidget {
  const SubDHomeUI({super.key});

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
                  color: Colors.green.shade100,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Icon(icon,size:34,color:Colors.green),
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
                  backgroundColor: Colors.green,
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

        card(Icons.flash_on,"ไฟฟ้านครหลวง","1130"),
        card(Icons.flash_on,"ไฟฟ้าส่วนภูมิภาค","1129"),
        card(Icons.bolt,"ไฟฟ้าฝ่ายผลิต","1416"),
        card(Icons.water_drop,"การประปานครหลวง","1125"),
        card(Icons.water,"การประปาส่วนภูมิภาค","1662"),
        card(Icons.phone_android,"True","1242"),
        card(Icons.phone_android,"Dtac","1678"),
        card(Icons.phone_android,"AIS","1175"),

      ],
    );
  }
}