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

List<TourismPlace> tourismPlaceList = [
  TourismPlace(
    name: 'Pantai Florida Anyer',
    location: 'Anyer',
    description:
    'Pantai Florida berada tidak jauh dari Pantai Anyer, Pantai Florida berada di Desa Ciparay 14310 Anyer. Pantai Florida mungkin bisa dikatakan sebagai salah satu pantai yang tepat dijadikan pilihan untuk Anda yang mendambakan ketenangan di pantai.',
    openDays: 'Open Everyday',
    openTime: '09:00 - 20:00',
    ticketPrice: 'Rp 10000',
    imageAsset: 'images/pf.jpg',
    imageUrls: [
      'https://www.jejakpiknik.com/wp-content/uploads/2017/07/cc-1-1-630x380.jpg',
      'https://www.jejakpiknik.com/wp-content/uploads/2017/07/cc-2-1-630x380.jpg',
      'https://www.jejakpiknik.com/wp-content/uploads/2017/07/cc-10-1-630x380.jpg'
    ]
  ),
  TourismPlace(
      name: 'Gunung Pinang',
      location: 'SukaDalem',
      description:
      'Gunung Pinang sendiri lokasinya berada di Desa Pejanten, Kecamatan Walantaka, Kabupaten Serang, Provinsi Banten. Jaraknya sekitar 15 kilometer dari arah kota Serang atau 10 kilometer dari arah kota Cilegon',
      openDays: 'Open Everyday',
      openTime: '09:00 - 20:00',
      ticketPrice: 'Rp 12000',
      imageAsset: 'images/gp.jpg',
      imageUrls: [
        'https://explorewisata.com/wp-content/uploads/2018/08/spot-foto-payung-warna-warni-di-gunung-pinang-serang.jpg',
        'https://explorewisata.com/wp-content/uploads/2018/08/spot-foto-gardu-pandang-model-lambang-cinta-di-gunung-pinang.jpg',
      ],
  ),
  TourismPlace(
      name: 'Curug Cigumawang',
      location: 'Padarincang',
      description:
      'Curug ini berada di Desa Padarincang, Kabupaten Serang. Curug Cigumawang memiliki kealamian alam yang masih terjaga dengan baik, yang sayang untuk kamu lewatkan.',
      openDays: 'Open Everyday',
      openTime: '09:00 - 20:00',
      ticketPrice: 'Rp 10000',
      imageAsset: 'images/cc.jpg',
      imageUrls: [
        'https://cdn.nativeindonesia.com/foto/2020/10/Indahnya-Curug-Cigumawang.jpg',
        'https://cdn.nativeindonesia.com/foto/2020/10/Kolam-Alami-Curug-Cigumawang.jpg',
        'https://cdn.nativeindonesia.com/foto/2020/10/Bermain-Air-di-Curug-Cigumawang.jpg'
      ],
  ),
  TourismPlace(
      name: 'Karangbolong',
      location: 'Karang Suraga',
      description:
      'Karangbolong Pada awalnya, pantai yang berada di ruas jalan utama Anyer-Carita ini dikenal dengan nama Pantai Karang Suraga. Nama ini diambil dari Suryadilaga, nama orang sakti mandraguna pada zaman dahulu yang bertapa di tempat ini hingga akhir hayatnya.',
      openDays: 'Open Everyday',
      openTime: '09:00 - 20:00',
      ticketPrice: 'Rp 10000',
      imageAsset: 'images/kb.jpg',
      imageUrls: [
        'https://encrypted-tbn1.gstatic.com/licensed-image?q=tbn:ANd9GcTEgjBbmSiCqP6TxctddK7VVlxqRni3oIDB9gisq8vWvUQZ7yr6h8gl43GY8WqCH9OqeMU1Ph8kqYtkDonwuCmcHA',
        'https://encrypted-tbn1.gstatic.com/licensed-image?q=tbn:ANd9GcSK6Q4kX9c3rSnJgUsyKksMywk0XSuFahy10rJ8mztuI1W6exmKxXA2p3BtI6Usw4lisvA4D_kO8N3PuJFGhQzGaA',
        'https://encrypted-tbn3.gstatic.com/licensed-image?q=tbn:ANd9GcQppNgmwFCiOpolA5jNVl1XIKnbSiB51f5u1r5khhfgoRIF3Ku4pw9PYinghXSMt5GJ_uUn7M5M-q9XtY5ros8BgA'
      ],
  ),
  TourismPlace(
      name: 'Bukit Waruwangi',
      location: 'Bantarwangi',
      description:
      'Bukit Waruwangi berada di Bantarwangi, Kecamatan Cinangka, Serang, Banten. Ada tiga akses menuju lokasi. Jalan yang disarankan adalah dari Padarincang dan dari Ponpes Nurul Fikri Cinangka. Kondisi jalan-jalan ini sudah beton dan lebar.',
      openDays: 'Open Everyday',
      openTime: '09:00 - 20:00',
      ticketPrice: 'Rp 10000',
      imageAsset: 'images/bw.jpeg',
      imageUrls: [
        'https://asset.kompas.com/crops/BcYlCNRJ9TBoB3O49EvXZbYuzu0=/0x53:720x533/750x500/data/photo/2020/07/16/5f106634d1696.jpeg',
        'https://asset.kompas.com/crops/KuNkCCZiWK4Komw4KnKoLZYUftU=/0x0:1002x501/780x390/data/photo/2020/07/16/5f10662e83789.jpeg',
        'https://asset.kompas.com/crops/bl7e4sz86luKlZjfP0AsBsu1hz4=/119x0:871x501/750x500/data/photo/2020/07/16/5f10662ac6730.jpeg'
      ],
  ),
  TourismPlace(
      name: 'Masjid Agung Banten',
      location: 'Banten lama',
      description:
      'Masjid Agung Banten adalah salah satu masjid tertua di Indonesia yang penuh dengan nilai sejarah. Setiap harinya masjid ini ramai dikunjungi para peziarah yang datang tidak hanya dari Banten dan Jawa Barat, tetapi juga dari berbagai daerah di Pulau Jawa.',
      openDays: 'Open Everyday',
      openTime: '09:00 - 20:00',
      ticketPrice: 'Rp 10000',
      imageAsset: 'images/mab.jpg',
      imageUrls: [
        'https://www.javatravel.net/wp-content/uploads/2020/07/Sejarah-Berdirinya-Masjid-Agung-Banten.jpg',
        'https://www.javatravel.net/wp-content/uploads/2020/07/Keunikan-Masjid-Agung-yang-Tak-Tertandingi.jpg',
        'https://www.javatravel.net/wp-content/uploads/2020/07/Rute-Menuju-Kawasan-Masjid-Agung-Banten.jpg'
      ],
  ),
];