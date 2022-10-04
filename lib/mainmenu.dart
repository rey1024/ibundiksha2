import 'package:flutter/material.dart';
import 'categoryButton.dart';
class MainMenu extends StatelessWidget {

  const MainMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[900],
        title: Text("Koperasi Undiksha",
        style: TextStyle(
          color: Colors.white
        ),),
        centerTitle: true,
        actions: [
          IconButton(onPressed: ()=>{},
              icon: Icon(Icons.logout,
                color: Colors.white,
              ))
        ],
      ),
        body:
          SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                Card(
                  elevation: 10,
                  margin: EdgeInsets.all(10),
                  child: 
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                          child: Container(
                          margin: EdgeInsets.only( right: 5),

                            child:  ClipRRect(
                             borderRadius: BorderRadius.circular(8.0),
                              child: Image(image:AssetImage("./images/resika3.png" ))
                          ),
                         ),

                        flex: 1,
                      ),
                      Expanded(
                          child: Column(
                            children: [

                              ClipRRect(
                                borderRadius:BorderRadius.circular(8.0),
                                child: Container(
                                  width: double.infinity,
                                  margin: EdgeInsets.only(bottom: 10),
                                  color: Colors.blue,
                                 padding: EdgeInsets.all(10),
                                 child: Column(
                                   crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                     Text("Nasabah"),
                                     Text("I Ketut Resika Arthana")
                                  ],
                                ),
                                )
                              ),
                              ClipRRect(
                                  borderRadius:BorderRadius.circular(8.0),
                                  child: Container(
                                    width: double.infinity,
                                    color: Colors.blue,
                                    padding: EdgeInsets.all(10),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text("Saldo"),
                                        Text("Rp. 1.000.0000")
                                      ],
                                    ),
                                  )
                              )
                            ],
                          ),
                        flex: 2,
                      )

                    ],
                  ),

                ),
                Card(
                  elevation: 10,
                  child: Wrap(
                    children: [
                      CategoryButton(Icon(Icons.wallet, color: Colors.purple), "Cek Saldo"),
                      CategoryButton(Icon(Icons.money, color: Colors.blue), "Transfer"),
                      CategoryButton(Icon(Icons.money, color: Colors.orange), "Deposito"),
                      CategoryButton(Icon(Icons.payment, color: Colors.cyanAccent), "Pembayaran"),
                      CategoryButton(Icon(Icons.money, color: Colors.deepPurpleAccent), "Pinjaman"),
                      CategoryButton(Icon(Icons.wallet, color: Colors.pinkAccent), "Mutasi"),



                    ],
                  )
                ),
                Container(
                  margin: EdgeInsets.only(top: 20),
                  width: double.infinity,
                  color: Colors.blue[100],
                  height: 100,
                  child: Row(
                    children: [
                      Expanded(
                          flex:5,
                          child: Container(
                            margin: EdgeInsets.only(left: 20),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text("Butuh Bantuan?",
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold
                                  ),
                                ),
                                Text("0878-1234-1024",
                                  style: TextStyle(
                                    fontSize: 30,
                                    fontWeight: FontWeight.bold
                                  ),
                                ),
                              ],
                            ),
                          )
                      ),
                      Expanded(
                          flex:2,
                          child: Container(
                            child: Icon(Icons.phone,color: Colors.blue, size: 90),
                          )
                      ),

                    ],
                  ),
                )
              ],
            )
         )
    ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon:  Icon(Icons.settings), label: "Setting"),
          BottomNavigationBarItem(icon:  Icon(Icons.qr_code), label: "Bayar QR"),
          BottomNavigationBarItem(icon:  Icon(Icons.person), label: "Profile"),

        ],
      ),
    );
  }
}
