import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart'; // Import url_launcher

class PassportVisaPage extends StatelessWidget {
  const PassportVisaPage({super.key});

  void _contactWhatsApp() async {
    const phoneNumber = '082252043765'; // Ganti dengan nomor WhatsApp tujuan
    final url = 'https://wa.me/$phoneNumber';

    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context); // Kembali ke halaman sebelumnya
          },
        ),
        title: const Text('Passport & Visa'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Passport Section
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Passport',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.orange,
                    ),
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    'Informasi Persyaratan:',
                    style: TextStyle(fontSize: 16),
                  ),
                  const SizedBox(height: 5),
                  const Text(
                    '• Kartu Tanda Penduduk (KTP) asli dan fotokopi.\n'
                    '• Kartu Keluarga (KK) asli dan fotokopi.\n'
                    '• Akan dikenakan biaya sesuai dengan waktu pengurusan.\n'
                    '• Paspor lama (jika pergantian).\n'
                    '• Foto berwarna ukuran 4x6 (latar belakang putih).',
                    style: TextStyle(fontSize: 14),
                  ),
                  const SizedBox(height: 20),
                  const Text(
                    'Biaya',
                    style: TextStyle(fontSize: 16),
                  ),
                  const SizedBox(height: 5),
                  const Text(
                    '• Paspor 24 halaman: Rp X.XXX.XXX.\n'
                    '• Paspor 48 halaman: Rp X.XXX.XXX.',
                    style: TextStyle(fontSize: 14),
                  ),
                  const SizedBox(height: 20),
                  const Text(
                    'Proses Pemesanan',
                    style: TextStyle(fontSize: 16),
                  ),
                  const SizedBox(height: 5),
                  const Text(
                    'Hubungi kontak WhatsApp kami untuk membuat janji temu.',
                    style: TextStyle(fontSize: 14),
                  ),
                  const SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: _contactWhatsApp, // Panggil fungsi untuk menghubungi melalui WhatsApp
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.orange,
                      minimumSize: const Size(double.infinity, 50),
                    ),
                    child: const Text('Contact me'),
                  ),
                  const SizedBox(height: 20),
                  const Text(
                    'Jam Layanan:\nSenin–Jumat, 09:00–17:00.',
                    style: TextStyle(fontSize: 14),
                  ),
                ],
              ),
            ),
            const Divider(),
            // Visa Section
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Visa',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.orange,
                    ),
                  ),
                  const SizedBox(height: 10),
                  const Text(
                    'Informasi Persyaratan:',
                    style: TextStyle(fontSize: 16),
                  ),
                  const SizedBox(height: 5),
                  const Text(
                    '• Paspor asli yang masih berlaku.\n'
                    '• Formulir aplikasi visa diisi dengan lengkap.\n'
                    '• Surat undangan resmi (jika diperlukan).\n'
                    '• Bukti keuangan mencukupi untuk bulan terakhir.\n'
                    '• Bukti keberangkatan (tiket pesawat, dll).\n'
                    '• Surat pemesanan hotel (jika diperlukan).',
                    style: TextStyle(fontSize: 14),
                  ),
                  const SizedBox(height: 20),
                  const Text(
                    'Biaya',
                    style: TextStyle(fontSize: 16),
                  ),
                  const SizedBox(height: 5),
                  const Text(
                    '• Visa untuk Rp X.XXX.XXX.\n'
                    '• Visa single entry: Rp X.XXX.XXX.',
                    style: TextStyle(fontSize: 14),
                  ),
                  const SizedBox(height: 20),
                  const Text(
                    'Proses Pemesanan',
                    style: TextStyle(fontSize: 16),
                  ),
                  const SizedBox(height: 5),
                  const Text(
                    'Hubungi kontak WhatsApp kami untuk membuat janji temu.',
                    style: TextStyle(fontSize: 14),
                  ),
                  const SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: _contactWhatsApp, // Panggil fungsi untuk menghubungi melalui WhatsApp
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.orange,
                      minimumSize: const Size(double.infinity, 50),
                    ),
                    child: const Text('Contact me'),
                  ),
                  const SizedBox(height: 20),
                  const Text(
                    'Jam Layanan:\nSenin–Jumat, 09:00–17:00.',
                    style: TextStyle(fontSize: 14),
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
