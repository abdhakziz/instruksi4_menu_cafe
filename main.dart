import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DetailMenuPage(),
    );
  }
}

class DetailMenuPage extends StatelessWidget {
  const DetailMenuPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Detail Menu')),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Tugas 1: gambar menu
            Image.network(
              'https://picsum.photos/600/400',
              width: double.infinity,
              height: 250,
              fit: BoxFit.cover,
            ),
            Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Tugas 2: nama menu di kiri, harga di kanan
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Kopi Susu Gula Aren',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        'Rp 25.000',
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF795548),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 16),

                  // Tugas 3: kotak info (3 ikon beserta teks)
                  Container(
                    width: double.infinity,
                    padding: const EdgeInsets.symmetric(vertical: 12),
                    decoration: BoxDecoration(
                      color: const Color(0xFFEFEBE9),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          children: [
                            Icon(Icons.star, color: Colors.amber),
                            SizedBox(height: 4),
                            Text('4.9'),
                          ],
                        ),
                        Column(
                          children: [
                            Icon(Icons.schedule, color: Colors.brown),
                            SizedBox(height: 4),
                            Text('10 menit'),
                          ],
                        ),
                        Column(
                          children: [
                            Icon(
                              Icons.local_fire_department,
                              color: Colors.deepOrange,
                            ),
                            SizedBox(height: 4),
                            Text('150 kal'),
                          ],
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 16),

                  // Tugas 4: judul "Deskripsi" dan paragraf
                  const Text(
                    'Deskripsi',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 8),
                  const Text(
                    'Perpaduan espresso, susu segar, dan gula aren asli. '
                    'Rasanya manis legit dengan aroma karamel. '
                    'Rasanya manis legit dengan aroma karamel. '
                    'Rasanya manis legit dengan aroma karamel. '
                    'Rasanya manis legit dengan aroma karamel. '
                    'Rasanya manis legit dengan aroma karamel. '
                    'Rasanya manis legit dengan aroma karamel. '
                    'Rasanya manis legit dengan aroma karamel. '
                    'Rasanya manis legit dengan aroma karamel. '
                    'Rasanya manis legit dengan aroma karamel. '
                    'Rasanya manis legit dengan aroma karamel. '
                    'Rasanya manis legit dengan aroma karamel. '
                    'Rasanya manis legit dengan aroma karamel. '
                    'Rasanya manis legit dengan aroma karamel. '
                    'Paling enak diminum dingin di siang hari.',
                  ),
                  const SizedBox(height: 16),

                  // Tugas 5: tombol "Pesan Sekarang" selebar layar
                  SizedBox(
                    width: double.infinity,
                    height: 50,
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFF795548),
                        foregroundColor: Colors.white,
                      ),
                      child: const Text('Pesan Sekarang'),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
