import 'package:flutter/material.dart';
import 'package:ui_medical/widgets/doctor_item.dart';
import 'package:ui_medical/widgets/specialist_item.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: false,
        showUnselectedLabels: false,
        type: BottomNavigationBarType.fixed,
        iconSize: 24,
        items: const [
          BottomNavigationBarItem(
            label: "Home",
            icon: Icon(
              Icons.home_outlined,
              size: 24.0,
            ),
          ),
          BottomNavigationBarItem(
            label: "Schedule",
            icon: Icon(
              Icons.calendar_today,
              size: 24.0,
            ),
          ),
          BottomNavigationBarItem(
            label: "Chat",
            icon: Icon(
              Icons.chat_bubble_outline,
              size: 24.0,
            ),
          ),
          BottomNavigationBarItem(
            label: "Notification",
            icon: Icon(
              Icons.notifications_outlined,
              size: 24.0,
            ),
          ),
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0),
            child: Column(
              children: [
                const SizedBox(height: 12.0),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Hello,",
                          style: TextStyle(
                            color: Colors.black38,
                          ),
                        ),
                        Text(
                          "Ananda Fitriani",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    CircleAvatar(
                      radius: 24,
                      backgroundImage: NetworkImage(
                        "https://cdn.pixabay.com/photo/2018/08/28/12/41/avatar-3637425_640.png",
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 16.0),
                Container(
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: Colors.pinkAccent.withOpacity(0.25),
                    borderRadius: const BorderRadius.all(Radius.circular(16)),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Image.network(
                        "https://cdn.pixabay.com/photo/2016/09/30/23/47/hospital-1706646_1280.png",
                        width: 120.0,
                        height: 120.0,
                        fit: BoxFit.contain,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "How do you feel?",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                          ),
                          const Text(
                            "Fill out your medical\nright now",
                            style: TextStyle(
                              color: Colors.black87,
                            ),
                          ),
                          const SizedBox(height: 12.0),
                          Container(
                            height: 36,
                            width: 150,
                            decoration: const BoxDecoration(
                              color: Colors.blue,
                              borderRadius: BorderRadius.all(Radius.circular(8)),
                            ),
                            child: const Center(
                                child: Text(
                              "Get Started",
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            )),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 16.0),
                Container(
                  height: 54,
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: Colors.grey.withOpacity(0.2),
                    borderRadius: const BorderRadius.all(Radius.circular(16)),
                  ),
                  child: const TextField(
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      hintText: "How can we help you?",
                      icon: Icon(
                        Icons.search_outlined,
                        size: 24.0,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 16.0),
                SizedBox(
                  height: 60,
                  child: Builder(
                    builder: (context) {
                      List dataSpecialist = [
                        {"image": "https://cdn.pixabay.com/photo/2012/04/24/13/06/lungs-39980_640.png", "title": "Penyakit Dalam"},
                        {"image": "https://cdn.pixabay.com/photo/2016/06/08/09/20/baby-girl-1443464_640.png", "title": "Dokter Anak"},
                        {"image": "https://cdn.pixabay.com/photo/2013/07/12/12/33/nerve-cell-145909_640.png", "title": "Dokter Saraf"},
                        {"image": "https://cdn.pixabay.com/photo/2013/07/13/12/21/embryo-159690_640.png", "title": "Dokter Kandungan"},
                        {"image": "https://cdn.pixabay.com/photo/2022/10/28/15/27/nurse-7553344_640.png", "title": "Dokter Bedah"},
                        {"image": "https://cdn.pixabay.com/photo/2012/04/13/00/09/shot-31144_640.png", "title": "Dokter Kulit"},
                      ];
                      return ListView.builder(
                        itemCount: dataSpecialist.length,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          var item = dataSpecialist[index];
                          return SpecialistItem(
                            title: item["title"],
                            image: item["image"],
                          );
                        },
                      );
                    },
                  ),
                ),
                const SizedBox(height: 16.0),
                const ListTile(
                  title: Text(
                    "Doctor list",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  trailing: Text("See all"),
                ),
                SizedBox(
                  height: 180,
                  child: Builder(builder: (context) {
                    List dataDoctor = [
                      {
                        "image":
                            "https://images.unsplash.com/photo-1559839734-2b71ea197ec2?auto=format&fit=crop&q=60&w=500&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTF8fGRvY3RvcnxlbnwwfHwwfHx8MA%3D%3D",
                        "name": "dr. MESRINA SIAHAAN, MM",
                        "specialist": "Kandungan",
                      },
                      {
                        "image":
                            "https://images.unsplash.com/photo-1622253692010-333f2da6031d?auto=format&fit=crop&q=60&w=500&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTh8fGRvY3RvcnxlbnwwfHwwfHx8MA%3D%3D",
                        "name": "dr. ALFIAN HUSIN, MARS",
                        "specialist": "Kulit",
                      },
                      {
                        "image":
                            "https://images.unsplash.com/photo-1550831107-1553da8c8464?auto=format&fit=crop&q=60&w=500&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mjd8fGRvY3RvcnxlbnwwfHwwfHx8MA%3D%3D",
                        "name": "Dr.dr. BOBBY SINGH, Sp.P.M.Kes, FISH.FAPSR",
                        "specialist": "Bedah",
                      },
                      {
                        "image":
                            "https://plus.unsplash.com/premium_photo-1661757221486-183030ef8670?auto=format&fit=crop&q=60&w=500&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mzd8fGRvY3RvcnxlbnwwfHwwfHx8MA%3D%3D",
                        "name": "dr. SELVI RELITA FITRI, MARS",
                        "specialist": "Saraf",
                      },
                      {
                        "image":
                            "https://plus.unsplash.com/premium_photo-1681996484614-6afde0d53071?auto=format&fit=crop&q=60&w=500&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mjl8fGRvY3RvcnxlbnwwfHwwfHx8MA%3D%3D",
                        "name": "dr. SYAFRIL ARMANSYAH",
                        "specialist": "Penyakit Dalam",
                      },
                    ];
                    return ListView.builder(
                      itemCount: dataDoctor.length,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        var item = dataDoctor[index];
                        return DoctorItem(
                          image: item["image"],
                          name: item["name"],
                          specialist: "Specialist ${item["specialist"]}",
                        );
                      },
                    );
                  }),
                ),
                const SizedBox(height: 30.0),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
