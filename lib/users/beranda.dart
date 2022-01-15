import 'package:diengku_app/constans.dart';
import 'package:diengku_app/users/depanpage.dart';
import 'package:diengku_app/users/kategoripage.dart';
import 'package:diengku_app/users/keranjangpage.dart';
import 'package:flutter/material.dart';

// ignore: camel_case_types
class Beranda extends StatefulWidget {
  @override
  _BerandaState createState() => _BerandaState();
}

// ignore: camel_case_types
class _BerandaState extends State<Beranda> with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    Widget tagList = Container(
      height: 60.0,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Row(
            children: <Widget>[
              new ActionChip(
                  backgroundColor: Colors.green,
                  padding: EdgeInsets.all(16.0),
                  label: new Text(
                    'Keripik',
                    style: TextStyle(color: Colors.white),
                  ),
                  side: BorderSide(color: Colors.white, width: 5),
                  onPressed: () {
                    KategoriPage();
                  }),
              new ActionChip(
                  backgroundColor: Colors.green,
                  padding: EdgeInsets.all(16.0),
                  label: new Text(
                    'Minuman',
                    style: TextStyle(color: Colors.white),
                  ),
                  side: BorderSide(color: Colors.white, width: 5),
                  onPressed: () {}),
              new ActionChip(
                  backgroundColor: Colors.green,
                  padding: EdgeInsets.all(16.0),
                  label: new Text(
                    'Sayuran',
                    style: TextStyle(color: Colors.white),
                  ),
                  side: BorderSide(color: Colors.white, width: 5),
                  onPressed: () {}),
              new ActionChip(
                  backgroundColor: Colors.green,
                  padding: EdgeInsets.all(16.0),
                  label: new Text(
                    'Kerajinan',
                    style: TextStyle(color: Colors.white),
                  ),
                  side: BorderSide(color: Colors.white, width: 5),
                  onPressed: () {
                    DepanPage();
                  }),
            ],
          )
        ],
      ),
    );
    Widget btnSearch = TextField(
      onTap: () {},
      //readOnly: true,
      style: TextStyle(fontSize: 15),
      decoration: InputDecoration(
          hintText: "Cari Oleh Oleh",
          prefixIcon: Icon(Icons.search, color: Palette.bg2),
          suffixIcon: Icon(Icons.filter_alt_outlined, color: Palette.bg2),
          contentPadding: const EdgeInsets.symmetric(vertical: 10),
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: new BorderSide(color: Colors.white)),
          fillColor: Color(0xfff3f3f4),
          filled: true),
    );
    Widget Items(String name, String category, String imgUrl, String price) {
      return Padding(
        padding: const EdgeInsets.all(8.0),
        child: InkWell(
          // this widget will make your container clickable
          onTap: () {},
          child: Container(
            width: 180.0,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(8.0),
            ),
            child: Column(
              children: [
                Image(
                  image: NetworkImage(imgUrl),
                  width: 170.0,
                  height: 160.0,
                  alignment: Alignment.center,
                ),
                Text(
                  name,
                  style: TextStyle(fontSize: 20.0),
                ),
                Text(
                  category,
                  style: TextStyle(
                    fontSize: 16.0,
                    color: Colors.grey,
                  ),
                ),
                Text(
                  "Rp. $price",
                  style: TextStyle(fontSize: 22.0, color: Colors.green),
                ),
              ],
            ),
          ),
        ),
      );
    }

    //Now I'm going to import a list of images that I collected from Unsplash and amazon website
    //you can choose the image that you want and add them into the list
    List<String> ImgUrl = [
      "https://akcdn.detik.net.id/community/media/visual/2016/12/23/f37f4199-3d02-4169-a1dc-f91f01f5ea3a.jpg?w=700&q=90",
      "https://awsimages.detik.net.id/community/media/visual/2017/03/11/44e72571-912a-427d-ba71-54773031b7fd.jpg?w=700&q=90",
      "https://s4.bukalapak.com/img/981236096/large/KERIPIK_KLOTAK_ORI.jpg",
      "https://images.tokopedia.net/img/cache/500-square/product-1/2019/7/13/1823383/1823383_3873a7c5-f324-4dca-afc9-7bd6c04e87ea_592_592.jpg",
      "https://jualcarica.com/wp-content/uploads/2014/12/asal-usul-buah-carica.jpg",
      "https://ksmtour.com/media/images/articles17/buah-carica-khas-dieng.jpg",
      "https://cf.shopee.co.id/file/3c43110d6ccf66333acce8093ce92c2f",
      "https://images.tokopedia.net/img/cache/500-square/product-1/2019/7/13/1823383/1823383_968936ea-1c89-4199-9cea-6d0a74c34455_592_592.jpg",
      "https://cf.shopee.com.my/file/862bf1df1b179b2c6d79b08a581ac57b",
      "https://cf.shopee.co.id/file/6cd39607b67de6a77323e348bb238a8c",
    ];
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "DiengKu",
            style: TextStyle(
              color: Colors.white,
              fontSize: 28.0,
            ),
          ),
          centerTitle: true,
          actions: [
            FlatButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => KeranjangPage()),
                );
              },
              child: Icon(
                Icons.shopping_cart,
                color: Colors.white,
              ),
            )
          ],
        ),
        body: new Container(
            padding: EdgeInsetsDirectional.fromSTEB(16, 8, 4, 0),
            child: ListView(
              children: <Widget>[
                btnSearch,
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text(
                    "Kategori",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 28.0,
                    ),
                  ),
                ),
                tagList,
                SingleChildScrollView(
                  child: Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Text(
                            "New Items",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 28.0,
                            ),
                          ),
                        ),
                        //Now we will add the items list
                        Container(
                          width: double
                              .infinity, // this line will make the container take the full width of the device
                          height:
                              270.0, // when you want to create a list view you should precise the height and width of it's container
                          child: ListView(
                            scrollDirection: Axis
                                .horizontal, // this will make the list scroll horizontally
                            children: [
                              //now let's add an item to test
                              Items("Kentang Super", "Sayuran", ImgUrl[0],
                                  "12.000"),
                              Items("Keripik Talas", "Makanan Ringan",
                                  ImgUrl[1], "18.000"),

                              Items("Klotak Batur", "Makanan Ringan", ImgUrl[2],
                                  "13.000"),
                              Items("Dodol carica", "Makanan Ringan", ImgUrl[3],
                                  "21.000"),
                              //Note that this is the UI of the App but you can easly implement a backend service via a REST API
                            ],
                          ),
                        ),
                        //for the second part of the app it's the same principale so let's just copy the first elements
                        //Let's add some space
                        SizedBox(
                          height: 20.0,
                        ),

                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Text(
                            "Terlaris",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 28.0,
                            ),
                          ),
                        ),
                        Container(
                          width: double
                              .infinity, // this line will make the container take the full width of the device
                          height:
                              270.0, // when you want to create a list view you should precise the height and width of it's container
                          child: ListView(
                            scrollDirection: Axis
                                .horizontal, // this will make the list scroll horizontally
                            children: [
                              //now let's add an item to test
                              Items("Carica", "Minuman", ImgUrl[4], "15.000"),
                              Items("Buah Carica", "Buah", ImgUrl[5], "5.000"),
                              Items("Terong", "Minuman", ImgUrl[6], "14.000"),
                              Items("Dodol Terong", "Makanan Ringan", ImgUrl[7],
                                  "17.000"),
                              Items("Belerang", "Obat", ImgUrl[8], "11.000"),
                              //Note that this is the UI of the App but you can easly implement a backend service via a REST API
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            )));
  }
}
