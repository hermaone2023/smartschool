import 'package:flutter/material.dart';

class Rosterku extends StatelessWidget {
  const Rosterku({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF4F4F4),
      body: SafeArea(
        top: false, // biar container bisa nempel ke atas
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // HEADER UNGU
            Stack(
              clipBehavior: Clip.none,
              children: [
                Container(
                  width: double.infinity, // full lebar
                  height: 180,
                  decoration: const BoxDecoration(
                    color: Color(0xFFB3A1FE),
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(24),
                      bottomRight: Radius.circular(24),
                    ),
                  ),
                  padding: const EdgeInsets.fromLTRB(
                    20,
                    10,
                    20,
                    20,
                  ), // ruang teks
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Icon(Icons.arrow_back_ios, color: Colors.white),
                      ),
                      SizedBox(height: 20),
                      Text(
                        "Jadwal\nPelajaranku",
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                      SizedBox(height: 4),
                      Text(
                        "Rajin belajar, pangkal pandai",
                        style: TextStyle(color: Colors.white70),
                      ),
                    ],
                  ),
                ),
                Positioned(
                  top: -5,
                  right: 10,
                  child: Image.asset('assets/images/maskot.png', height: 220),
                ),
              ],
            ),

            const SizedBox(height: 40),

            // BAGIAN ROSTER
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    "Rosterku",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                  Text(
                    "Kelas V",
                    style: TextStyle(color: Colors.grey, fontSize: 16),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 16),

            // roster harian
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      //roster hari senin
                      Container(
                        width: MediaQuery.of(context).size.width,
                        padding: const EdgeInsets.all(16),
                        decoration: BoxDecoration(
                          color: Colors.orange[200],
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Senin',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(right: 110),
                              child: Divider(height: 1, color: Colors.black26),
                            ),
                            Row(
                              children: [
                                Flexible(
                                  flex: 3,
                                  child: SizedBox(
                                    width: MediaQuery.of(context).size.width,
                                    child: Column(
                                      children: [
                                        Row(
                                          children: [
                                            Icon(
                                              Icons
                                                  .check_circle_outline_rounded,
                                              color: Colors.white,
                                            ),
                                            SizedBox(width: 15),
                                            Text(
                                              'Bhs. Indonesia',
                                            ), // ganti dengan roster yang sebenarnya disekolahta
                                            Spacer(),
                                            Text('07:30 – 08:30'),
                                          ],
                                        ),
                                        Row(
                                          children: [
                                            Icon(
                                              Icons
                                                  .check_circle_outline_rounded,
                                              color: Colors.white,
                                            ),
                                            SizedBox(width: 15),
                                            Text(
                                              'MateMatika',
                                            ), // ganti dengan roster yang sebenarnya disekolahta
                                            Spacer(),
                                            Text('08:30 – 09:30'),
                                          ],
                                        ),
                                        Row(
                                          children: [
                                            Icon(
                                              Icons
                                                  .check_circle_outline_rounded,
                                              color: Colors.white,
                                            ),
                                            SizedBox(width: 15),
                                            Text(
                                              'Bhs. Inggris',
                                            ), // ganti dengan roster yang sebenarnya disekolahta
                                            Spacer(),
                                            Text('09:30 – 10:30'),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                SizedBox(width: 10),
                                Flexible(
                                  child: Image.asset(
                                    'assets/images/scheduling.png',
                                    width: 100,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 10),

                      //buat roster hari selasa disini--------------------------------------------->
                      SizedBox(height: 10),

                      //buat roster hari Rabu disini--------------------------------------------->
                      SizedBox(height: 10),

                      //buat roster hari Kamis disini--------------------------------------------->
                      SizedBox(height: 10),

                      //buat roster hari jumat disini--------------------------------------------->
                      SizedBox(height: 10),

                      //buat roster hari Sabtu disini--------------------------------------------->
                    ],
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
