import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'RPL Document Viewer',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xFF1565C0)),
        useMaterial3: true,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const RplDocumentScreen(),
      },
    );
  }
}

class RplDocumentScreen extends StatelessWidget {
  const RplDocumentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Dokumen RPL BK',
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
        ),
        backgroundColor: Theme.of(context).colorScheme.primary,
        elevation: 0,
      ),
      body: Container(
        color: Colors.grey[100],
        child: ListView(
          padding: const EdgeInsets.all(16.0),
          children: [
            const Card(
              elevation: 0,
              color: Colors.transparent,
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 16.0),
                child: Column(
                  children: [
                    Text(
                      'RENCANA PELAKSANAAN LAYANAN (RPL)',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'BIMBINGAN DAN KONSELING',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 8),
                    Text(
                      'Tahun Pelajaran 2023/2024',
                      style: TextStyle(fontSize: 14, color: Colors.black54),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 8),
            _buildSectionCard(
              context,
              title: 'A. Identitas',
              icon: Icons.info_outline,
              content: '''
1. Komponen Layanan : Layanan Dasar
2. Bidang Layanan : Belajar
3. Topik / Tema Layanan : Orientasi Belajar di SMK
4. Sasaran / Kelas : Siswa Kelas X
5. Alokasi Waktu : 2 x 45 Menit (1 Kali Pertemuan)
''',
            ),
            _buildSectionCard(
              context,
              title: 'B. Tujuan Layanan',
              icon: Icons.flag_outlined,
              content: '''
1. Peserta didik dapat memahami perbedaan sistem belajar di SMP dan SMK.
2. Peserta didik dapat memahami pentingnya keseimbangan antara teori dan praktik kejuruan.
3. Peserta didik dapat menerapkan strategi dan kebiasaan belajar yang efektif di lingkungan SMK.
''',
            ),
            _buildSectionCard(
              context,
              title: 'C. Metode, Alat dan Media',
              icon: Icons.build_circle_outlined,
              content: '''
1. Metode : Ceramah, Curah Pendapat (Brainstorming), Diskusi Kelompok, dan Tanya Jawab.
2. Alat / Media : Laptop, LCD Projector, Slide PowerPoint (PPT), Video inspiratif tentang dunia vokasi/SMK.
''',
            ),
            _buildSectionCard(
              context,
              title: 'D. Langkah-langkah Kegiatan',
              icon: Icons.format_list_numbered,
              content: '''
1. Tahap Awal / Pendahuluan (10 Menit)
   • Guru BK membuka dengan salam dan berdoa.
   • Membina hubungan baik (menanyakan kabar, presensi, ice breaking).
   • Menyampaikan tujuan layanan materi "Orientasi Belajar di SMK".

2. Tahap Inti (70 Menit)
   • Guru BK menayangkan media slide/video tentang budaya belajar dan praktik di SMK.
   • Peserta didik mengamati dan melakukan curah pendapat terkait video tersebut.
   • Peserta didik dibagi menjadi beberapa kelompok untuk mendiskusikan tantangan belajar di SMK dan solusinya.
   • Perwakilan kelompok mempresentasikan hasil diskusi di depan kelas.

3. Tahap Penutup (10 Menit)
   • Guru BK mengajak peserta didik membuat kesimpulan terkait materi.
   • Guru BK memberikan penguatan materi dan motivasi.
   • Mengakhiri kegiatan dengan evaluasi, doa, dan salam penutup.
''',
            ),
            _buildSectionCard(
              context,
              title: 'E. Evaluasi',
              icon: Icons.fact_check_outlined,
              content: '''
1. Evaluasi Proses : 
   Guru BK memperhatikan proses layanan dengan pengamatan sikap, antusiasme, dan keaktifan peserta didik dalam mengikuti kegiatan diskusi.
   
2. Evaluasi Hasil :
   • Understanding (Pemahaman): Pemahaman peserta didik terhadap sistem belajar di SMK.
   • Comfort (Perasaan): Perasaan positif peserta didik terhadap lingkungan belajar yang baru.
   • Action (Tindakan): Rencana tindakan peserta didik dalam mengatur jadwal belajar teori dan praktik.
''',
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSectionCard(BuildContext context, {required String title, required IconData icon, required String content}) {
    return Card(
      margin: const EdgeInsets.only(bottom: 16.0),
      elevation: 2,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Icon(icon, color: Theme.of(context).colorScheme.primary),
                const SizedBox(width: 8),
                Expanded(
                  child: Text(
                    title,
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Theme.of(context).colorScheme.primary,
                    ),
                  ),
                ),
              ],
            ),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 8.0),
              child: Divider(),
            ),
            Text(
               content.trim(),
               style: const TextStyle(fontSize: 14, height: 1.6, color: Colors.black87),
            ),
          ],
        ),
      ),
    );
  }
}
