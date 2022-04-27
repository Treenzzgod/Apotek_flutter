class item {
  final String nama;
  final String deskripsi;
  final String gambar;
  final String harga;
  final String kategori;
  final String stok;

  String get getNama => nama;
  String get getDeskripsi => deskripsi;
  String get getGambar => gambar;
  String get getHarga => harga;
  String get getKategori => kategori;
  String get getStok => stok;



  item({
    required this.nama,
    required this.deskripsi,
    required this.gambar,
    required this.harga,
    required this.kategori,
    required this.stok,

  });

  
}
