import 'package:flutter/material.dart';

import '../widgets/province.dart';


class DetailPage extends StatefulWidget {
  // ini untuk memanggil data variable penampung nya
  // ctrl + . generate constructor
  final Province province;
  const DetailPage({
    super.key,
    required this.province,
  });

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // ini untuk memanggil nama provinsi saat di klik
        title: Text(
          widget.province.nama,
          style: const TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        elevation: 2,
        backgroundColor: Colors.red,
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          Text(
            widget.province.laguDaerah,
            style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: 4,
          ),
          Text(
            '${widget.province.nama} - ${widget.province.ibuKota}',
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: 12,
          ),
          // ini untuk memanggil gambar
          Image.network(
            widget.province.photo,
            height: 300,
          ),
          const SizedBox(
            height: 12,
          ),
          // container membungkus teks lirik
          Container(
            padding: const EdgeInsets.all(16),
            decoration: const BoxDecoration(
                color: Color.fromARGB(255, 240, 230, 230),
                // ini untuk membuat border radius lengkungan kiri kanan pada lirik
                borderRadius: BorderRadius.all(Radius.circular(20))),
            child: Text(
              widget.province.lirikLaguDaerah,
              textAlign: TextAlign.center,
              style: const TextStyle(fontSize: 14),
            ),
          )
        ],
      ),
    );
  }
}
