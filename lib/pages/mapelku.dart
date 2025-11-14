import 'package:flutter/material.dart';
import 'package:smartschool/pages/dashboardpage.dart';

class Mapelku extends StatefulWidget {
  const Mapelku({super.key});

  @override
  State<Mapelku> createState() => _MapelkuState();
}

class _MapelkuState extends State<Mapelku> {
  void showDialogBiasa(BuildContext context) {
  showDialog(
    context: context,
    barrierDismissible: false,
    builder: (context) {
      return AlertDialog(
        backgroundColor: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),

        // supaya dialog menyesuaikan tinggi konten
        title: const Text(
          'Absensi',
          style: TextStyle(fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,
        ),

        content: Column(
          mainAxisSize: MainAxisSize.min, // <--- penting
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              'assets/animasi/check.gif',
              width: 90,
            ),
            const SizedBox(height: 12),

            const Text(
              'Terima Kasih..',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 8),

            const Text(
              'Sudah melakukan absensi dan mengikuti pelajaran hari ini dengan baik. Sampai jumpa kembali!',
              style: TextStyle(fontSize: 14, height: 1.4),
              textAlign: TextAlign.center, // biar rapi
            ),
          ],
        ),

        actionsAlignment: MainAxisAlignment.center,
        actions: [
          TextButton(
            onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => Dashboardpage() ));
            },
            child: const Text(
              "OK",
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 16,
              ),
            ),
          ),
        ],
      );
    },
  );
}


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff7CCBB3),
      body: SafeArea(
        child: Column(
          children: [
            Stack(
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width,
                  height: 200,
                  child: Image.asset('assets/images/mapeldetail.png'),
                ),
                Positioned(
                  top: 10,
                  left: 0,
                  child: IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: const Icon(
                      Icons.arrow_back_ios_new,
                      color: Colors.black,
                    ),
                  ),
                ),
              ],
            ),

            SizedBox(height: 40),
            Expanded(
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(40),
                  ),
                ),
                child: SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 30, right: 30),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 40),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Jumat 14 Nov 2025',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                              ),
                            ),
                            Icon(Icons.arrow_circle_right_outlined),
                          ],
                        ),
                        Row(
                          children: [
                            Icon(Icons.av_timer_outlined, size: 18),
                            Text(
                              '07:30 - 08:30',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 11,
                              ),
                            ),
                            SizedBox(width: 10),
                            Text('|'),
                            SizedBox(width: 10),
                            Text(
                              'Sedang berlangsung',
                              style: TextStyle(
                                color: Color(0xff7CCBB3),
                                fontSize: 11,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 40),
                        Text(
                          'Bahasa Indonesia',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),
                        Text(
                          'Oleh : Siti Humairah, Spd',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 11,
                          ),
                        ),
                        SizedBox(height: 20),
                        Text(
                          'Cerita Fiksi',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),
                        Text(
                          'Siswa mempelajari struktur cerita fiksi (orientasi, komplikasi, resolusi), tokoh, latar, dan alur cerita. Siswa juga dilatih menulis cerita sederhana menggunakan bahasa yang runtut dan menarik.',
                        ),
                        SizedBox(height: 20),
                        MouseRegion(
                          cursor: SystemMouseCursors.click,
                          child: GestureDetector(
                            onTap: () {
                              showDialogBiasa(context);
                            },
                            child: Container(
                              width: MediaQuery.of(context).size.width,
                              decoration: BoxDecoration(
                                color: Colors.greenAccent,
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Center(
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    'Absen Sekarang',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
