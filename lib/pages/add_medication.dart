import 'package:flutter/material.dart';
import 'package:flutter_app/firebase_service.dart';
import 'package:flutter_app/obat_model.dart';
import 'package:flutter_app/pages/list_medication.dart';
import 'package:google_fonts/google_fonts.dart';

class AddMedication extends StatefulWidget {
  const AddMedication({super.key});

  @override
  State<AddMedication> createState() => _AddMedicationState();
}

class _AddMedicationState extends State<AddMedication> {
  FirebaseService firebaseService = FirebaseService();
  final List<String> _images = [
    'assets/images/pill_01_v_1_w_1.png',
    'assets/images/caps_79_dsddssd_1.png',
    'assets/images/amp_022.png',
    'assets/images/ing_2.png',
  ];
  final List<String> _keterangan = [
    'nevermind',
    'after meal',
    'before meal',
  ];

  String _pilihan = 'nevermind';
  int _selectedIndex = 0;

  bool isLoading = false;
  bool _isButtonDisabled = true;

  final TextEditingController _namaObat = TextEditingController();
  final TextEditingController _dosis = TextEditingController();

  void _showErrorSnackbar(BuildContext context, String message) {
    final snackBar = SnackBar(
      content: Text(message),
      backgroundColor: Colors.red,
      duration: const Duration(seconds: 3),
    );
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }

  void _showSuccessSnackbar(BuildContext context, String message) {
    final snackBar = SnackBar(
      content: Text(message),
      backgroundColor: Colors.green,
      duration: const Duration(seconds: 3),
    );
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }

  void _validateForm() {
    setState(() {
      _isButtonDisabled = _namaObat.text.isEmpty || _dosis.text.isEmpty;
    });
  }

  @override
  void initState() {
    super.initState();
    _namaObat.addListener(_validateForm);
    _dosis.addListener(_validateForm);
  }

  @override
  void dispose() {
    _namaObat.removeListener(_validateForm);
    _dosis.removeListener(_validateForm);
    _namaObat.dispose();
    _dosis.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Container(
          decoration: const BoxDecoration(
            color: Color(0xFFFFFFFF),
          ),
          child: SingleChildScrollView(
            child: Container(
              padding: const EdgeInsets.all(15),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Add medication',
                    style: GoogleFonts.inter(
                      fontWeight: FontWeight.w700,
                      fontSize: 24,
                      height: 1.1,
                      letterSpacing: -0.4,
                      color: const Color(0xFF191D30),
                    ),
                  ),
                  const SizedBox(height: 20),
                  Column(
                    children: [
                      SizedBox(
                        height: 120,
                        child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: _images.length,
                          itemBuilder: (context, index) {
                            return GestureDetector(
                              onTap: () {
                                setState(() {
                                  if (index == 0) {
                                    _namaObat.text = "Pil";
                                  } else if (index == 1) {
                                    _namaObat.text = "Kapsul";
                                  } else if (index == 2) {
                                    _namaObat.text = "Sirup";
                                  } else if (index == 3) {
                                    _namaObat.text = "Asma";
                                  }
                                });
                              },
                              child: Container(
                                width: 100,
                                margin:
                                    const EdgeInsets.symmetric(horizontal: 10),
                                child: Image.asset(
                                  _images[index],
                                  fit: BoxFit.cover,
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                      const SizedBox(height: 20),
                    ],
                  ),
                  const SizedBox(height: 20),
                  TextFormField(
                    style: GoogleFonts.inter(
                      fontWeight: FontWeight.w600,
                      fontSize: 20,
                      height: 1.2,
                      color: Colors.black,
                    ),
                    controller: _namaObat,
                    decoration: InputDecoration(
                      hintText: 'Name',
                      hintStyle: GoogleFonts.inter(
                        fontWeight: FontWeight.w600,
                        fontSize: 20,
                        height: 1.2,
                        color: Colors.grey,
                      ),
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.zero,
                      isDense: true,
                    ),
                  ),
                  const SizedBox(
                    height: 30.0,
                  ),
                  TextFormField(
                    controller: _dosis,
                    style: GoogleFonts.inter(
                      fontWeight: FontWeight.w600,
                      fontSize: 20,
                      height: 1.2,
                      color: Colors.black,
                    ),
                    decoration: InputDecoration(
                      hintText: 'Single dose, e.g. 1 tablet',
                      hintStyle: GoogleFonts.inter(
                        fontWeight: FontWeight.w600,
                        fontSize: 20,
                        height: 1.2,
                        color: Colors.grey,
                      ),
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.zero,
                      isDense: true,
                    ),
                  ),
                  const SizedBox(
                    height: 30.0,
                  ),
                  SizedBox(
                    height: 50,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: _keterangan.length,
                      itemBuilder: (context, index) {
                        return ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              elevation: 0,
                              backgroundColor: _selectedIndex == index
                                  ? const Color.fromARGB(255, 208, 207, 207)
                                  : const Color.fromARGB(255, 251, 251, 251),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(25),
                              ),
                            ),
                            onPressed: () {
                              setState(() {
                                _pilihan = _keterangan[index];
                                _selectedIndex = index;
                              });
                            },
                            child: Text(
                              _keterangan[index],
                              style: GoogleFonts.inter(
                                fontWeight: FontWeight.w600,
                                fontSize: 20,
                                height: 1.2,
                                color: _selectedIndex == index
                                    ? Colors.black
                                    : Colors.grey,
                              ),
                            ));
                      },
                    ),
                  ),
                  const SizedBox(height: 40),
                  SizedBox(
                    width: double.infinity,
                    height: 50,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFF1892FA),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(16),
                        ),
                      ),
                      onPressed: _isButtonDisabled
                          ? null
                          : () async {
                              setState(() {
                                isLoading = true;
                              });

                              Obat obat = Obat(
                                  nama: _namaObat.text,
                                  dosis: _dosis.text,
                                  kondisi: _pilihan);
                              bool hasil = false;
                              try {
                                hasil = await firebaseService.tambah(obat);
                                _showSuccessSnackbar(
                                    context, "behasil mengirim data");
                              } catch (e) {
                                _showErrorSnackbar(
                                    context, 'gagal mengirim data');
                              } finally {
                                setState(() {
                                  isLoading = false;
                                });
                              }

                              print(hasil);

                              if (hasil) {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const ListMedication()),
                                );
                              } else {
                                _showErrorSnackbar(
                                    context, 'gagal mengirim data');
                              }
                            },
                      child: isLoading
                          ? const CircularProgressIndicator(
                              valueColor:
                                  AlwaysStoppedAnimation<Color>(Colors.white),
                            )
                          : Text(
                              'Add',
                              style: GoogleFonts.inter(
                                fontWeight: FontWeight.w600,
                                fontSize: 20,
                                height: 1.2,
                                color: Colors.white,
                              ),
                            ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
