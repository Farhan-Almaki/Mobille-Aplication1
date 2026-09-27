void main() {
  String movieTitle = 'Avatar: The Deep';
  int availableSeats = 50;
  int ticketPrice = 45000;
  int ticketAmount = 3;
  bool isOpen = true;
  double tax = 0.11; // Pajak pemerintah 11%

  // Menghitung total harga sebelum pajak
  int totalTicketPrice = (ticketAmount * ticketPrice);
  
  // Mengalikan dengan tipe double (tax), hasil akhir harus bertipe double
  double finalBill = (totalTicketPrice + (totalTicketPrice * tax));

  // Menghitung sisa kursi setelah dipesan
  int remainingSeats = (availableSeats - ticketAmount);

  print('Judul Film       : $movieTitle');
  print('Harga per Tiket  : Rp $ticketPrice');
  print('Jumlah Tiket     : $ticketAmount');
  print('Persentase Pajak : ${tax * 100}%');
  print('Total Tiket      : Rp $totalTicketPrice');
  print('Total Bayar (+Pajak) : Rp $finalBill');
  print('Sisa Kursi       : $remainingSeats');
}
