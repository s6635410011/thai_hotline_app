import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class SubAHomeUI extends StatelessWidget {
  const SubAHomeUI({super.key});

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
                  color: Colors.amber.shade100,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Icon(icon,size:34,color:Colors.orange),
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
                      ),
                    ),

                    Text(number,
                      style: const TextStyle(
                        fontSize:17,
                        color: Colors.grey,
                      ),
                    ),

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

        card(Icons.map,"กรมทางหลวงชนบท","1146"),
        card(Icons.travel_explore,"ตำรวจท่องเที่ยว","1155"),
        card(Icons.local_police,"ตำรวจทางหลวง","1193"),
        card(Icons.traffic,"ข้อมูลจราจร","1197"),
        card(Icons.directions_bus,"ขสมก.","1348"),
        card(Icons.airport_shuttle,"บขส.","1490"),
        card(Icons.alt_route,"เส้นทางบนทางด่วน","1543"),
        card(Icons.route,"กรมทางหลวง","1586"),
        card(Icons.train,"การรถไฟแห่งประเทศไทย","1690"),

      ],
    );
  }
}