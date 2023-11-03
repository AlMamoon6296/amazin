import 'package:amazin/screen2.dart';
import 'package:flutter/material.dart';
import 'dart:io';
import 'package:image_picker/image_picker.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  late File _image;

  Future getImageFromCamera() async {
    final pickedFile =
        await ImagePicker().pickImage(source: ImageSource.camera);

    if (pickedFile != null) {
      setState(() {
        _image = File(pickedFile.path);
      });
    }
  }

  List<Map<String, dynamic>> load = [
    {
      'image': 'assets/images/asusVivobook.jpg',
      'deal': 'Deal Of the Day',
      'festival': 'Great Indian Festival',
      'tile':
          'Graphics are powered by Nvidia GeForce MX150. Connectivity options include Bluetooth, Ethernet and it comes with 4 USB ports (2 x USB 2.0, 1 x USB 3.0), Multi Card Slot, Mic In ports.'
    },
    {
      'image': 'assets/images/CHUWI.jpg',
      'deal': 'Deal Of the Day',
      'festival': 'Great Indian Festival',
      'tile':
          'Graphics are powered by Nvidia GeForce MX150. Connectivity options include Bluetooth, Ethernet and it comes with 4 USB ports (2 x USB 2.0, 1 x USB 3.0), Multi Card Slot, Mic In ports.'
    },
    {
      'image': 'assets/images/DellInspiron.jpg',
      'deal': 'Deal Of the Day',
      'festival': 'Great Indian Festival',
      'tile':
          'Graphics are powered by Nvidia GeForce MX150. Connectivity options include Bluetooth, Ethernet and it comes with 4 USB ports (2 x USB 2.0, 1 x USB 3.0), Multi Card Slot, Mic In ports.'
    },
    {
      'image': 'assets/images/hp360.jpg',
      'deal': 'Deal Of the Day',
      'festival': 'Great Indian Festival',
      'tile':
          'Graphics are powered by Nvidia GeForce MX150. Connectivity options include Bluetooth, Ethernet and it comes with 4 USB ports (2 x USB 2.0, 1 x USB 3.0), Multi Card Slot, Mic In ports.'
    },
    {
      'image': 'assets/images/infinixY1.jpg',
      'deal': 'Deal Of the Day',
      'festival': 'Great Indian Festival',
      'tile':
          'Graphics are powered by Nvidia GeForce MX150. Connectivity options include Bluetooth, Ethernet and it comes with 4 USB ports (2 x USB 2.0, 1 x USB 3.0), Multi Card Slot, Mic In ports.'
    },
    {
      'image': 'assets/images/laptop.jpg',
      'deal': 'Deal Of the Day',
      'festival': 'Great Indian Festival',
      'tile':
          'Graphics are powered by Nvidia GeForce MX150. Connectivity options include Bluetooth, Ethernet and it comes with 4 USB ports (2 x USB 2.0, 1 x USB 3.0), Multi Card Slot, Mic In ports.'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Color(0xfff014131),
        toolbarHeight: 80,
        centerTitle: true,
        title: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
          ),
          child: TextField(
            decoration: InputDecoration(
                // fillColor: Colors.red,
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
                //labelText: 'Search Amazon.in',
                hintText: 'Search Amazon.in'),
          ),
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.camera),
            onPressed: getImageFromCamera,
          ),
        ],
        leading: IconButton(onPressed: () {}, icon: Icon(Icons.arrow_back)),
      ),
      body: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 20.0,
            mainAxisSpacing: 20.0,
          ),
          itemCount: load.length,
          itemBuilder: (context, index) {
            return InkWell(
              onTap: () {
                // Navigate to the next page when an item is tapped
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ShowDescription(receivedList: load),
                  ),
                );
              },
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Flexible(
                        flex: 10,
                        fit: FlexFit.tight,
                        child: Image.asset(
                          load[index]['image'],
                          height: 100,
                        ),
                      ),
                      // SizedBox(
                      //   height: 5,
                      //),
                      Flexible(
                        flex: 2,
                        fit: FlexFit.tight,
                        child: Container(
                          color: Colors.red,
                          child: Padding(
                            padding: const EdgeInsets.only(top: 2),
                            child: Text(
                              load[index]['deal'],
                              style:
                                  TextStyle(color: Colors.white, fontSize: 9),
                            ),
                          ),
                        ),
                      ),
                      Flexible(
                        flex: 2,
                        fit: FlexFit.tight,
                        child: Text(
                          load[index]['festival'],
                          style: TextStyle(color: Colors.red),
                        ),
                      ),
                      Flexible(
                          flex: 4,
                          fit: FlexFit.tight,
                          child: Text(
                            load[index]['tile'],
                            style: TextStyle(fontSize: 15, color: Colors.white),
                            maxLines: 2,
                          )),
                      Flexible(
                          flex: 2,
                          fit: FlexFit.tight,
                          child: ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                primary: Colors.white,
                                onPrimary: Colors.red,
                              ),
                              child: Icon(Icons.delete)))
                    ],
                  ),
                ),
              ),
            );
          }),
    );
  }
}
