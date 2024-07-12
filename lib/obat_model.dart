class Obat {
  final String nama;

  final String dosis;
  final String kondisi;

  Obat({required this.nama, required this.dosis, required this.kondisi});

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'nama': nama,
      'dosis': dosis,
      'kondisi': kondisi,
    };
  }
}
