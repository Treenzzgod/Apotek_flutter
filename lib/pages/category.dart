import 'package:flutter/material.dart';
import 'package:loginpage/ListProduct/detail_product.dart';
import 'package:hexcolor/hexcolor.dart';
import '../Model/ListItem.dart';

class Category extends StatelessWidget {
  const Category({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;
    final _biggerFont = const TextStyle(fontSize: 18);

    final List<item> items = [
      item(
        nama: 'ultraflu',
        deskripsi: 'adawdasda',
        gambar: 'assets/images/drug.jpg',
        harga: '5000',
        kategori: 'obat keras',
        stok: '5',
      ),
      item(
        nama: 'ultraflu',
        deskripsi: 'adawdasda',
        gambar: 'assets/images/drug.jpg',
        harga: '5000',
        kategori: 'obat keras',
        stok: '5',
      ),
      item(
        nama: 'ultraflu',
        deskripsi: 'adawdasda',
        gambar: 'assets/images/drug.jpg',
        harga: '5000',
        kategori: 'obat keras',
        stok: '5',
      ),
      item(
        nama: 'ultraflu',
        deskripsi: 'adawdasda',
        gambar: 'assets/images/drug.jpg',
        harga: '5000',
        kategori: 'obat keras',
        stok: '5',
      ),
      item(
        nama: 'ultraflu',
        deskripsi: 'adawdasda',
        gambar: 'assets/images/drug.jpg',
        harga: '5000',
        kategori: 'obat keras',
        stok: '5',
      ),
    ];
    return Scaffold(
      appBar: AppBar(
        title: Text('Category'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 150,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(50),
                ),
                color: Colors.blue,
              ),
              child: Stack(
                children: [
                  Positioned(
                    top: 50,
                    left: 0,
                    child: Container(
                      height: 60,
                      width: 300,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(50),
                          bottomRight: Radius.circular(50),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 70,
                    left: 70,
                    child: Text(
                      'Category',
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Colors.blue,
                      ),
                    ),
                  )
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                left: 20,
                right: 20,
              ),
              width: MediaQuery.of(context).size.width,
              child: Image(
                image: AssetImage('assets/images/promo.png'),
              ),
            ),
            Container(
              margin: EdgeInsets.only(
                top: 10,
                left: 20,
                right: 20,
                bottom: 5,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Daftar Obat',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: Text('Lihat Semua'),
                  )
                ],
              ),
            ),
            ListView.builder(
              physics: ScrollPhysics(parent: null),
              shrinkWrap: true,
              itemCount: items.length,
              itemBuilder: (context, index) {
                return InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Details(),
                        settings: RouteSettings(arguments: items[index]),
                      ),
                    );
                  },
                  child: Container(
                    padding: EdgeInsets.all(20),
                    margin: EdgeInsets.only(
                      bottom: 10,
                      left: 10,
                      right: 10,
                    ),
                    height: 100,
                    decoration: BoxDecoration(
                      color: HexColor('#FFFFFF'),
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 50,
                          offset: Offset(10, 20),
                          color: Color.fromRGBO(0, 0, 0, 0.05),
                        ),
                      ],
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Container(
                              width: 80,
                              height: 100,
                              decoration: BoxDecoration(
                                color: Colors.grey,
                              ),
                              child: Icon(Icons.lock_clock),
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  items[index].nama,
                                  style: TextStyle(
                                    fontFamily: 'Montserrat',
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20,
                                  ),
                                ),
                                Text(
                                  'Rp. ' + items[index].harga,
                                  style: TextStyle(
                                      color: Color.fromRGBO(57, 73, 171, 1),
                                      fontSize: 18),
                                ),
                                Text(items[index].stok),
                              ],
                            ),
                          ],
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            primary: Color.fromRGBO(255, 195, 33, 1),
                            elevation: 3,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(14),
                            ),
                            minimumSize: Size(25, 45),
                          ),
                          onPressed: () {
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(
                                content: Text('anda menambahkan ' +
                                    items[index].nama +
                                    ' dengan harga ' +
                                    items[index].harga +
                                    ' ke keranjang'),
                              ),
                            );
                          },
                          child: Icon(Icons.add),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
