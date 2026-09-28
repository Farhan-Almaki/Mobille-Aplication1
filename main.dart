void main() {
  // 1. EXPLICIT TYPING
  // Kita deklarasi variabel pake tipe data yang jelas (tanpa pake var)
  // Nilai variabel-variabel ini nantinya masih bisa kita ubah-ubah
  String movieTitle = 'Avatar: The Deep'; // Tipe String khusus teks
  int availableSeats = 50; // Tipe int khusus angka bulat
  double ticketPrice = 45000.0; // Tipe double buat angka desimal
  bool isCinemaOpen = true; // Tipe bool cuma ada true atau false

  // Contoh ubah isi variabel (masih diperbolehkan)
  availableSeats = 47; 
  // availableSeats = 'empat puluh tujuh'; // Ini pasti error karena tipe data gak boleh beda

  // 2. SOUND NULL SAFETY
  // Fitur keamanan dari Dart biar program gak gampang crash pas ketemu data kosong (null)
  
  // Non-nullable (bawaan default): variabel ini dijamin gak bakal bernilai null
  String cinemaName = 'XXI Grand Mall';
  // cinemaName = null; // Error! Kompiler bakal langsung nolak ini

  // Nullable (?): pake tanda tanya kalau datanya emang boleh kosong/null
  String? promoCode; // Boleh diisi teks, boleh juga null
  promoCode = 'DISKON10';
  promoCode = null; // Diisi null lagi gak masalah

  // Operator ?? buat ngasih nilai cadangan kalau promoCode ternyata null
  String activePromo = promoCode ?? 'Tidak ada promo';

  // Operator ! buat maksa kompiler percaya kalau nilainya pasti gak null
  if (promoCode != null) {
    print(promoCode!.toUpperCase());
  }

  // 3. IMMUTABILITY (final vs const)
  
  // final: nilainya dikunci pas program lagi jalan (runtime)
  final String transactionId = 'TRX-8801';
  final DateTime bookingTime = DateTime.now(); // Mengambil jam aktual saat ini

  // const: nilainya udah harus pasti dari sebelum program dijalankan (compile-time)
  const double taxRate = 0.11; // Tarif pajak tetap 11%
  const String appCurrency = 'IDR'; // Simbol mata uang konstan

  // 4. LATE MODIFIER
  // Dipake kalau variabel gak boleh null, tapi nilainya baru bisa ditentukan nanti
  late String ticketReceiptNumber;
  ticketReceiptNumber = 'TKT-${DateTime.now().millisecondsSinceEpoch}'; // Baru diisi di sini

  // 5. STRING DATA & INTERPOLATION
  // Nggakgabungin variabel ke dalam teks pake tanda $ atau ${}
  String customerName = 'Budi';
  int ticketAmount = 3;
  print('Nama pemesan: $customerName, membeli: $ticketAmount tiket');

  // 6. NUM (BILANGAN UMUM)
  // Bisa dipake buat nampung angka bulat (int) maupun desimal (double)
  num rating = 4; // Diisi int
  rating = 4.8; // Lalu diisi desimal (double)

  // 7. LIST (KUMPULAN DATA BERURUTAN)
  // Menyimpan banyak data berurutan dengan tipe yang sama. Indeks mulai dari 0
  List<String> movieGenres = [
    'Action',
    'Drama',
    'Sci-Fi',
  ];

  // Ambil data pake nomor indeks
  print(movieGenres[0]); // Nampilin 'Action'
  
  // Nambahin data baru ke dalam List
  movieGenres.add('Adventure');

  // 8. SET (KUMPULAN DATA UNIK)
  // Mirip List, tapi gak bakal nyimpan data yang kembar/duplikat
  Set<String> selectedCategories = {
    'Reguler',
    'VIP',
    'Reguler', // 'Reguler' yang kedua bakal otomatis diabaikan
  };

  // 9. MAP (DATA KEY & VALUE)
  // Menyimpan data berpasangan antara kunci (key) dan nilainya (value)
  Map<String, dynamic> movieJson = {
    'id': 101,
    'title': 'Avatar: The Deep',
    'price': 45000,
    'isAvailable': true,
  };

  // Cara ambil datanya tinggal sebutin nama key-nya
  print(movieJson['title']); // Nampilin 'Avatar: The Deep'

  // 10. OBJECT & DYNAMIC
  
  // Object: Bisa simpan data apa aja, tapi harus dicek dulu tipenya sebelum diolah
  Object studioData = 'Studio 1';
  if (studioData is String) {
    print(studioData.toUpperCase()); // Aman diproses setelah dicek tipenya String
  }

  // dynamic: Bebas diganti tipe datanya tanpa pemeriksaan ketat
  dynamic flexValue = 'Tipe String';
  flexValue = 200; // Berubah jadi int tanpa bikin error
}
