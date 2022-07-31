class TourismPlace {
  String name;
  String location;
  String description;
  String openDays;
  String openTime;
  String ticketPrice;
  String imageAsset;
  List<String> imageUrls;

  TourismPlace({
    required this.name,
    required this.location,
    required this.description,
    required this.openDays,
    required this.openTime,
    required this.ticketPrice,
    required this.imageAsset,
    required this.imageUrls,
  });
}

var tourismPlaceList = [
  TourismPlace(
    name: 'Alang Puyuh',
    location: 'Kambo',
    description:
        'Berada di jalur utama Bandung-Lembang, Farm House menjadi objek wisata yang tidak pernah sepi pengunjung. Selain karena letaknya strategis, kawasan ini juga menghadirkan nuansa wisata khas Eropa. Semua itu diterapkan dalam bentuk spot swafoto Instagramable.',
    openDays: 'Open Everyday',
    openTime: '09:00 - 20:00',
    ticketPrice: 'Free',
    imageAsset: 'assets/images/alang/cafe.jpg',
    imageUrls: [
      'assets/images/alang/list1.jpg',
      'assets/images/alang/list2.jpg',
      'assets/images/alang/list3.jpg',
      'assets/images/alang/list4.jpg',
      'assets/images/alang/list5.jpg',
    ],
  ),
  TourismPlace(
    name: 'Mountain Cafe',
    location: 'Kambo',
    description:
        'Memiliki beberapa teleskop, antara lain, Refraktor Ganda Zeiss, Schmidt Bimasakti, Refraktor Bamberg, Cassegrain GOTO, dan Teleskop Surya. Refraktor Ganda Zeiss adalah jenis teleskop terbesar untuk meneropong bintang. Benda ini diletakkan pada atap kubah sehingga saat teropong digunakan, atap tersebut harus dibuka. Observatorium Bosscha boleh dikunjungi oleh siapa pun, tanpa tiket. Namun, bagi yang ingin menggunakan teleskop Zeiss, wajib mendaftarkan diri. Untuk instansi atau lembaga pendidikan, diberikan jadwal hari Selasa sampai Jumat. Sementara itu, kunjungan individu dibuka setiap hari Sabtu.',
    openDays: 'Open Tuesday - Saturday',
    openTime: '09:00 - 14:30',
    ticketPrice: 'Free',
    imageAsset: 'assets/images/mountain/m1.JPG',
    imageUrls: [
      'assets/images/mountain/m1.JPG',
      'assets/images/mountain/m2.JPG',
      'assets/images/mountain/m3.JPG',
    ],
  ),
  TourismPlace(
    name: 'Warung Mifta',
    location: 'Kambo',
    description:
        'Jalan Asia Afrika di Bandung memiliki kaitan yang sangat erat dengan pendirian kota Kembang ini. Karena pada saat itu, Gubernur Jenderal Herman Willem Deaendels dari Belanda menancapkan tongkatnya saat memerintahkan pendirian kota ini, yang kemudian diabadikan menjadi tugu Bandung Nol Kilometer.',
    openDays: 'Open Everyday',
    openTime: '24 hours',
    ticketPrice: 'Free',
    imageAsset: 'assets/images/mifta2/mf1.JPG',
    imageUrls: [
      'assets/images/mifta2/mf1.JPG',
      'assets/images/mifta2/mf2.JPG',
      'assets/images/mifta2/mf3.JPG',
    ],
  ),
  TourismPlace(
    name: 'Pondok Aya',
    location: 'Kambo',
    description:
        'Jalan Asia Afrika di Bandung memiliki kaitan yang sangat erat dengan pendirian kota Kembang ini. Karena pada saat itu, Gubernur Jenderal Herman Willem Deaendels dari Belanda menancapkan tongkatnya saat memerintahkan pendirian kota ini, yang kemudian diabadikan menjadi tugu Bandung Nol Kilometer.',
    openDays: 'Open Everyday',
    openTime: '24 hours',
    ticketPrice: 'Rp.130000',
    imageAsset: 'assets/images/pondok/pondok1.JPG',
    imageUrls: [
      'assets/images/pondok/pondok1.JPG',
      'assets/images/pondok/pondok2.JPG',
      'assets/images/pondok/pondok3.JPG',
    ],
  ),
  TourismPlace(
    name: 'Taman Tri S',
    location: 'Kambo',
    description:
        'Jalan Asia Afrika di Bandung memiliki kaitan yang sangat erat dengan pendirian kota Kembang ini. Karena pada saat itu, Gubernur Jenderal Herman Willem Deaendels dari Belanda menancapkan tongkatnya saat memerintahkan pendirian kota ini, yang kemudian diabadikan menjadi tugu Bandung Nol Kilometer.',
    openDays: 'Open Everyday',
    openTime: '24 hours',
    ticketPrice: 'Rp.5000',
    imageAsset: 'assets/images/taman/taman1.JPG',
    imageUrls: [
      'assets/images/taman/taman2.JPG',
      'assets/images/taman/taman3.JPG',
      'assets/images/taman/taman4.JPG',
    ],
  ),  
];
