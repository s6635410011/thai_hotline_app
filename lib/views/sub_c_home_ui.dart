import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class SubCHomeUI extends StatelessWidget {
  const SubCHomeUI({super.key});

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
                  color: Colors.blue.shade100,
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Icon(icon,size:34,color:Colors.blue),
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

        card(Icons.account_balance,"Bangkok Bank","1333"),
        card(Icons.account_balance,"Government Savings Bank","1115"),
        card(Icons.account_balance,"Kasikorn Bank","02 888 8888"),
        card(Icons.account_balance,"Krungthai Bank","02 111 1111"),
        card(Icons.account_balance,"Krungsri","1572"),
        card(Icons.account_balance,"TMBThanachart","1428"),
        card(Icons.account_balance,"Citibank","1588"),
        card(Icons.account_balance,"LH Bank","1327"),
        card(Icons.account_balance,"SCB","02 777 7777"),
        card(Icons.account_balance,"UOB","02 285 1555"),

      ],
    );
  }
}