-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 03, 2024 at 07:01 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `portalberita`
--

-- --------------------------------------------------------

--
-- Table structure for table `beritapopuler`
--

CREATE TABLE `beritapopuler` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `judul` varchar(255) NOT NULL,
  `gambar` varchar(255) DEFAULT NULL,
  `konten` text NOT NULL,
  `views` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `beritapopuler`
--

INSERT INTO `beritapopuler` (`id`, `judul`, `gambar`, `konten`, `views`, `created_at`, `updated_at`) VALUES
(1, 'Amerika Tuding Hacker China Serang Pejabat AS dan Keluarga Donald Trump', 'public/images/f9H3JiB3p2KbdHMe0Z6NR8wMM02pwdJH3VKlMIzV.jpg', 'Pemerintah Amerika Serikat (AS) menuding peretas (hacker) yang diduga terafiliasi dengan China, menargetkan sejumlah pejabat di pemerintahan Presiden dan Wakil Presiden AS, Joe Biden-Kamala Harris. Salah satu yang menjadi sasaran adalah orang dekat Kamala Harris, yakni anggota staf kampanyenya. Saat ini, Kamala tengah maju sebagai calon Presiden AS, bersaing dengan Donald Trump. Hacker juga disebut mengincar pakar diplomatik serta pejabat yang tidak begitu populer di tengah masyarakat, tetapi dinilai menarik oleh pejabat China yang ingin mempelajari kebijakan internal AS. Bukan cuma Kamala, hacker juga disebut menargetkan Donald Trump, yang merupakan pesaing Kamala di Pilpres AS 2024, sekaligus mantan Presiden AS Donald Trump.\r\nMenurut sumber dalam yang dikutip outlet media New York Times, hacker sudah membobol sistem milik perusahaan telekomunikasi AS. Lalu, mereka menargetkan smartphone yang dipakai oleh keluarga Trump termasuk putranya, Eric Trump dan menantunya Jared Kushner.\r\nTotal jumlah sasaran yang sudah teridentifikasi konon hampir 100 orang. Soal data apa saja yang diambil peretas, kabarnya sudah teridentifikasi.\r\n\r\nMenanggapi insiden itu, Eric Trump menyalahkan pemerintahan Biden. \"Di bawah Kamala dan Biden, China telah menginjak-injak negara kita,\" ujarnya dikutip dari New York Times. \r\nSementara itu badan intelijen AS, FBI, menolak memberikan tanggapan. Donald Trump juga diincar Insiden ini sendiri terjadi menyusul serangan siber yang memengaruhi smartphone Trump dan calon pasangan wakil presidennya, JD Vance pada pekan lalu. Tim kampanye Trump saat itu menerima pemberitahuan bahwa ponsel yang dipakai Trump dan Vance termasuk dalam target serangan sistem telepon Verizon, salah satu operator seluler di AS. Orang lain yang terdampak juga menerima notifikasi dari otoritas AS, termasuk Senator Chuck Schumer. FBI hingga saat ini masih melakukan penyelidikan terkait serangan siber itu. Menurut FBI, para peretas mungkin dapat mengakses pesan teks SMS yang tidak terenkripsi serta log panggilan pada perangkat yang terdampak.\r\nNamun, adapula bukti yang mengeklaim bahwa komunikasi audio juga terekam, walaupun belum jelas apakah audio yang dimaksud adalah percakapan dalam telepon atau pesan suara. FBI belum membagikan siapa kelompok hacker di balik rentetan serangan ini. Namun sejumlah kelompok keamaman siber meyakini aksi ini terkait dengan kelompok hacker yang disebut Salt Typhoon.  Sebab, Salt Typhoon memiliki riwayat operasi siber canggih yang menguntungkan intelijen China. Awal tahun ini, Salt Typhoon membobol sistem telekomunikasi AS, sehingga meningkatkan kekhawatiran pemerintah setempat. Adapun Kedutaan Besar China di Washington membantah bahwa serangan itu didukung pemerintah China, dilansir KompasTekno dari CNN, Minggu (3/11/2024). Mereka juga menyebut bahwa informasi yang beredar adalah distorsi atau pemutarbalikan fakta.', 0, '2024-11-01 22:30:44', '2024-11-03 02:20:37'),
(3, 'Indonesia Paling Rentan Ancaman Siber di Asia Tenggara', 'public/images/o2hlw92fLFtNL84lILhcFnEQzwpHGPtOl6vcwnRG.jpg', 'Penelitian terbaru dari perusahaan keamanan siber Trend Micro Incorporated mengungkapkan bahwa Indonesia menjadi negara dengan indeks risiko ancaman siber tertinggi di Asia Tenggara. Laporan berjudul \"Intercepting Impact: 2024 Trend Micro Cyber Risk Report\" ini dirilis pada Kamis (24/10/2024) dan dibahas dalam gelaran BFSI Cybersecurity Summit 2024 di hotel The Westin Jakarta pada Rabu (30/10/2024). Studi tersebut menunjukkan bahwa akun dan perangkat merupakan aset pengguna dengan risiko ancaman siber tertinggi, termasuk serangan program jahat seperti ransomware dan ancaman berbasis kecerdasan buatan (AI). Dari 22,6 juta perangkat secara global yang diteliti, 877.316 di antaranya dikategorikan sebagai berisiko tinggi.\r\nSementara itu, dari 53,9 juta akun, sebanyak 12.346 juga terklasifikasi berisiko tinggi.\r\nDari 14,5 juta aset awan (cloud), 9.944 diklasifikasikan berisiko tinggi, dan dari 1,1 juta aset yang terhubung ke internet, 1.661 di antaranya berisiko tinggi. Jumlah perangkat berisiko tinggi lebih besar dibandingkan akun, meskipun jumlah akun lebih banyak. Hal ini disebabkan oleh luasnya permukaan serangan perangkat, yang berarti ancaman siber yang dihadapi perangkat lebih banyak. Indeks risiko perusahaan di Indonesia rata-rata mencapai 44,0, yang juga masih berada pada level medium. Untuk mendapat angka indeks tersebut, Trend Micro mengumpulkan data telemetri dari solusi Attack Surface Risk Management (ASRM) di platform keamanan siber perusahaan Trend Vision One. Trend Vision One ini dikombinasikan dengan alat Extended Detection and Response (XDR). Data pun dikumpulkan dari berbagai wilayah termasuk Asia, Eropa, Amerika, Jepang, pada semester pertama 2024 (1 Januari hingga 30 Juni 2024). Trend Vision One menggunakan risk event catalog (daftar risiko yang diidentifikasi untuk manajemen risiko), yang dibagi menjadi paparan (exposure), serangan (attack), dan konfigurasi keamanan (security configuration). Ketiga risk event catalog ini kemudian dikalikan dengan dampaknya. Aset dengan dampak bisnis yang rendah dan sedikit privilese memiliki permukaan serangan yang lebih kecil, sedangkan aset bernilai lebih tinggi dengan lebih banyak privilese mempunyai permukaan serangan yang lebih besar. Hasil perhitungan tersebut menjadi skor risiko alias metrik indeks risiko (risk index metrics), yang dibagi menjadi level risiko rendah/Low (skor 0-30), risiko menengah/Medium (skor 31-69), dan risiko tinggi/High (skor 70-100).', 0, '2024-11-03 02:23:07', '2024-11-03 02:23:07'),
(4, 'IMD Perkenalkan \"Jam\" Keamanan AI, Software Pengukur Risiko AI', 'public/images/VOlW3INa3I44bWKRS6N3099dSZWSh6zjDMDS7wIV.jpg', 'Teknologi kecerdasan buatan/artificial intelligence (AI) menjadi tren saat ini. Implementasinya masif digunakan di segala sektor. Di sisi lain, AI juga menyimpan risiko ancaman di masa depan. Hal ini lah yang menjadi alasan Institute of Management Development (IMD) dan tim ahli dari TONOMUS Global Center for Digital and AI Transformation membuat software bernama Jam Keamanan AI (AI Safety Clock). Jangan bayangkan \"jam\" ini berupa perangkat arloji atau jam dinding. \"Jam\" ini adalah tools berupa software untuk menganalisis risiko yang ditimbulkan AI di masa depan. Jam ini akan menjadi indikator seberapa tinggi risiko perkembangan Artificial General Intelligence/AGI yang berpotensi menjadi tidak terkendali. AGI adalah konsep AI yang dianggap lebih tinggi dari \"sekadar\" AI. Konsep ini menggambarkan sistem AI yang bisa beroperasi mandiri tanpa bantuan dan pengawasan manusia.\r\nTujuannya, hasil produk AGI bisa menyelesaikan aneka tugas dengan tingkat kecerdasan yang setara dengan, atau bahkan melebihi manusia. Kemampuan ini pun menimbulkan kekhawatiran. \"Tujuan saya, saya ingin memperjelas bahwa bahaya AGI yang tak terkendali nyata dan ada,\" kata Michael Wade, Director Global Center for Digital Business Transformation IMD, sekaligus Director of the TONOMUS Global Center for Digital and AI Transformation, melansir dari Time. Jam Keamanan AI ini didukung dashboard proprietary, yakni software manajemen informasi yang digunakan untuk mengumpulkan, melacak, menganalisis, dan memvisualisasikan data yang relevan.\r\nDashboard Proprietary memantau perkembangan teknologi dan regulasi dari lebih 1.000 situs web dan 3.470 sumber berita terkait AI untuk memberikan insight secara real-time dan bisa terus memantau kemajuan teknologi secara berkala. Tools ini menunjukkan waktu \"29 menit dari tengah malam\" yang merupakan simbolik seberapa dekat manusia dengan titik kritis ancaman AGI. Semakin tinggi tingkat risiko, maka akan semakin dekat pula dengan \"tengah malam\" atau titik kritis.\r\nJam ini dibagi menjadi empat bagian berdasarkan skala risiko. Mulai dari seperempat awal ke satu putaran penuh (searah jarum jam), dimulai dari risiko rendah, risiko moderat, risiko tinggi, dan risiko kritis. “Perkembangan AGI saat ini kita sedang beralih dari fase risiko sedang ke risiko tinggi. Ketika perkembagan AGI menjadi kritis dan tidak terkendali, hal itu akan menjadi musibah bagi umat manusia. Risikonya serius, tetapi belum terlambat untuk bertindak,” jelas Wade, dalam keterangan resmi yang diterima KompasTekno. Ketika AGI tidak bisa lagi dikontrol oleh manusia, beberapa hal yang dikhawatirkan seperti AI digunakan untuk memanipulasi atau mengganggu pasar keuangan, digunakan untuk mengganggu insfrastruktur penting, seperti energi, transportasi, komunikasi, dll.\r\nSelain itu, AI juga dikhawatirkan akan digunakan untuk memanipulasi dan mengganggu sistem politik, jaringan sosial, dan ekosistem biologis dan lingkugan, bahkan ancaman langsung bagi nyawa manusia.', 0, '2024-11-03 02:25:55', '2024-11-03 02:25:55'),
(5, 'Apple Temukan Kelemahan Kecerdasan Buatan', 'public/images/uzmLRZ4lwcYUUw0g79bIR3kPPSzYOxkJNSmh3Ue7.jpg', 'Tim peneliti dari perusahaan teknologi Apple mengeklaim telah menemukan kelemahan kecerdasan buatan (artificial intelligence/AI). Penelitian yang dipimpin oleh insinyur riset pembelajaran mesin (machine learning/ML), Iman Mirzadeh, menemukan bahwa perubahan kecil terhadap susunan pertanyaan matematika yang diberikan kepada model bahasa besar (large language model/LLM), dapat menyebabkan perbedaan besar dalam kinerja model itu. Akurasi jawaban LLM menurun sekitar 65 persen, sehingga LLM tersebut kurang bisa diandalkan dalam skenario yang membutuhkan logika yang konsisten.\r\nUntuk diketahui, LLM adalah program atau model yang dapat mengenali dan menghasilkan teks, serta memproses bahasa. Hal ini membuatnya dapat berinteraksi dengan pengguna memakai bahasa yang natural. Model bahasa besar dilatih menggunakan kumpulan data (dataset) yang sangat besar. Oleh karena itu, LLM disebut sebagai model bahasa yang large alias besar. LLM ini mendukung program AI generatif (generative AI/AI yang bisa menghasilkan teks, video, audio), seperti ChatGPT dan Microsoft Copilot.\r\nStudi tim peneliti dari Apple menguji berbagai model bahasa besar unggulan, seperti milik OpenAI dan Meta, untuk melihat bagaimana model tersebut dapat menangani tugas penalaran matematika. Model bahasa besar tersebut dites menggunakan alat pengujian (benchmark) baru bernama GSM-Symbolic.\r\nDalam beberapa pengujian, peneliti mendemonstrasikan bahwa menambahkan informasi yang tidak penting ke pertanyaan matematika, justru bisa menghasilkan jawaban yang berbeda di berbagai model bahasa besar. Padahal, detail ini seharusnya tidak berpengaruh terhadap hasil perhitungan matematika yang dilakukan LLM. Sebagai contoh, peneliti memberikan pertanyaan matematika sederhana terkait berapa jumlah buah kiwi yang dikumpulkan seseorang dalam beberapa hari. Ketika peneliti menambahkan keterangan, seperti ukuran buah kiwi itu, model LLM seperti OpenAI o1 dan Llama milik Meta jadi salah menghitung total jumlah buah kiwi. Baik model LLM sumber terbuka (open-source) maupun LLM yang dilisensi (proprietary) sama-sama mengalami penurunan akurasi.\r\nKerapuhan dalam penalaran ini mendorong para peneliti, untuk menyimpulkan bahwa LLM yang diuji tidak menggunakan logika nyata untuk memecahkan masalah, tetapi sebaliknya mengandalkan pengenalan pola canggih yang dipelajari selama pelatihan.\r\nPara peneliti menemukan bahwa perubahan nama dalam pertanyaan bisa mengubah jawaban yang dihasilkan, sebagaimana dirangkum KompasTekno dari MacRumors, Rabu (23/10/2024). Hal ini menjadi tanda yang meresahkan bagi masa depan aplikasi AI, yang memerlukan penalaran yang konsisten dan akurat dalam konteks dunia nyata.\r\n\"Kami tidak menemukan bukti penalaran formal dalam LLM. Perilaku mereka lebih baik dijelaskan oleh pencocokan pola yang canggih. Pencocokan ini begitu rapuh, sehingga mengubah nama (dalam pertanyaan) dapat mengubah hasil hingga sepuluh persen,\" bunyi penelitian tersebut. Tim peneliti Apple pun menyarankan bahwa kecerdasan buatan kemungkinan perlu menggabungkan jaringan saraf (neural), dengan penalaran tradisional berbasis simbol bernama neurosymbolic AI, untuk memperoleh kemampuan pengambilan keputusan dan pemecahan masalah yang lebih akurat. Dalam penalaran berbasis simbol, pengetahuan direpresentasikan menggunakan simbol, seperti variabel, konstanta, dan predikat. Hubungan antara simbol ini didefinisikan menggunakan aturan logis, yang memungkinkan AI untuk melakukan deduksi logis.\r\nMelihat hasil penelitian di atas, pengguna sebaiknya tidak sepenuhnya mengandalkan AI untuk tugas atau aktivitas yang membutuhkan penalaran mendalam serta pemahaman yang lebih kritis.', 0, '2024-11-03 03:02:27', '2024-11-03 03:02:27'),
(6, 'Uji Coba Internet 6G, kecepatannya 50 Kali Lipat dari 5G', 'public/images/nm37pHnOKJx4Xr9YFpfqwNpA52tskKam6eh65LCP.jpg', 'ejumlah ilmuwan dari University College London (UCL), Inggris melakukan uji coba teknologi jaringan seluler selanjutnya alias suksesor 5G, yaitu 6G beberapa waktu belakangan ini. Dalam uji coba tersebut, mereka berhasil membuktikan bahwa teknologi 6G bisa memiliki kecepatan unduh (download) atau transmisi data mencapai 938 gigabit per detik (Gbps). Angka ini, secara teori, hampir 50 kali lipat lebih \"ngebut\" dari kecepatan 5G yang berkisar di angka 20 Gbps, atau nyaris 5.000 kali lipat lebih cepat dari kemampuan download 5G di smartphone masa kini yang berkisar di angka 200 Mbps. \r\nKecepatan 938 Gbps sendiri, apabila dikonversikan ke kecepatan download yang sebenarnya, bisa diartikan sebagai 117,25 GB/s (1 Gbps = 0,125 GB/s). Dengan kalkukasi seperti ini, pengguna bisa mengunduh file atau game berukuran sekitar 100 GB dalam waktu satu detik saja. Supaya bisa mendapatkan kecepatan 6G yang tembus 938 Gbps, para ilmuwan UCL ini, yang dipimpin oleh seorang profesor bernama Zhixin Liu, memanfaatkan frekuensi jaringan gabungan yang beropersi di spektrum 5-150 GHz.\r\nSecara teknis, mereka mencoba untuk mentransmisikan sinyal digital ke analog di frekuensi 5-75 GHz, kemudian memanfaatkan kemampuan sinyal di pita frekuensi (bandwidth) tinggi seperti W-Band (75-110 GHz) dan D-Band (110-150 GHz). Hasilnya, transmisi data 6G, yang \"mengalir\" lewat frekuensi gabungan tersebut, bisa dicapai dengan waktu cepat dan efisien, dengan metrik kecepatan 938 Gbps di atas.  \"Seperti jalan raya, luas jalan raya yang lebih lebar akan bisa memuat lebih banyak mobil, dan pergerakan mereka akan lebih cepat,\" ujar Liu, dikutip KompasTekno dari Gizchina, Minggu (20/10/2024). \"Analogi seperti ini sama dengan transmisi data, di mana kita membutuhkan bandwidth yang lebih besar untuk mentransmisikan data lebih banyak dan menghasilkan internet yang lebih cepat,\" tambah Liu. Nah, karena ini masih sekadar uji coba, pengguna umum tentunya belum bisa menikmati kecepatan download mencapai 938 Gbps tadi. Terlebih, standar jaringan 6G saat ini masih digodok dan dikembangkan oleh pihak terkait, dan diprediksi baru akan komersil sekitar 2030 mendatang. Namun yang jelas, uji coba ilmuwan UCL ini menunjukkan bahwa teknologi 6G berpotensi untuk meningkatkan kecepatan internet secara signifikan dari 5G. Peningkatan kecepatan internet ini tentunya akan berpengaruh pada semua bidang dan kegiatan masyarakat, baik itu korporasi maupun pengguna umum.\r\nSelain ilmuwan UCL, konsorsium jaringan telekomunikasi asal Jepang, yang terdiri dari Docomo, NTT Corporation, NEC Corporation, dan Fujitsu juga sempat menguji coba jaringan 6G lewat sebuah perangkat purwarupa sekitar April lalu. Dalam uji coba tersebut, perangkat ini, yang diklaim merupakan perangkat 6G pertama di dunia, mampu mentransmisikan data hingga 100 gigabit per detik (Gbps) dalam jarak 300 kaki (sekitar 100 meter).\r\nAngka ini diklaim 20 kali lebih kencang dari kecepatan \"asli\" internet 5G saat ini, yang, menurut konsorsium asal Jepang tadi, berkisar di angka maksimal 4,9 Gbps.\r\nSecara teknis, konsorsium jaringan telekomunikasi asal Jepang ini menggunakan dua tipe spektrum, yaiut 100 GHz untuk pengujian di luar ruangan (outdoor) dan 300 GHz untuk pengujian di dalam ruangan (indoor). Pengujian outdoor dilakukan dengan memisahkan perangkat 6G dan transmitter 6G dalam jarak sekitar 100 meter. Di sisi lain, pengujian indoor mengandalkan alat bantuan berupa pemantul (reflector), supaya sinyal bisa diterima dengan baik. Hasilnya, perangkat 6G yang diuji coba di kedua kondisi tadi bisa menghasilkan kecepatan internet hingga 100 Gbps mengandalkan transmitter dan reflector yang ada. Di samping imuwan UCL dan konsorsium Jepang tadi, ada kemungkinan ilmuwan atau perusahaan lainnya juga akan turut menjajal teknologi 6G, mengingat teknologi ini cukup potensial untuk meningkatkan efisiensi transmisi data dibanding 5G', 0, '2024-11-03 03:39:32', '2024-11-03 03:39:32');

-- --------------------------------------------------------

--
-- Table structure for table `beritaterbaru`
--

CREATE TABLE `beritaterbaru` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `judul` varchar(255) NOT NULL,
  `konten` text NOT NULL,
  `gambar` varchar(255) NOT NULL,
  `views` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `beritaterbaru`
--

INSERT INTO `beritaterbaru` (`id`, `judul`, `konten`, `gambar`, `views`, `created_at`, `updated_at`) VALUES
(1, 'Berbagi Infrastruktur Telekomunikasi bisa Bikin Akses Internet di Indonesia Merata?', 'Menteri Komunikasi dan Digital (Menkomdigi) Meutya Hafid ingin membuat akses internet di Indonesia merata agar digitalisasi yang menjadi bidang tanggung jawabnya berkeadilan, sejalan dengan visi Astacita Presiden Prabowo Subianto.\r\n\r\nSaat ini program unggulan pemerintah dalam memberikan pemerataan internet adalah membangun tower BTS (base transceiver station).\r\n\r\nNamun, dengan kondisi geografis Indonesia yang sangat menantang, mengamat Pengamat Telekomunikasi Institut Teknologi Bandung (ITB) Ian Josef Matheus Edward, pembangunan BTS di daerah tertinggal, terdalam, dan terluar (3T) menjadi tantangan tersendiri.\r\n\r\nHomeTeknoTelko\r\nBerbagi Infrastruktur Telekomunikasi bisa Bikin Akses Internet di Indonesia Merata?\r\nPemerataan internet bukan cuma membangun BTS atau jaringan serat optik, tetapi juga mencakup tantangan untuk memastikan akses yang merata hingga ke pelosok.\r\n\r\nIskandarIskandar\r\nDiperbarui 01 Nov 2024, 21:19 WIB\r\n\r\nCopy Link\r\n16\r\nIlustrasi BTS. Liputan6.com/Mochamad Wahyu Hidayat\r\nPerbesar\r\nIlustrasi BTS. Liputan6.com/Mochamad Wahyu Hidayat\r\nLiputan6.com, Jakarta - Menteri Komunikasi dan Digital (Menkomdigi) Meutya Hafid ingin membuat akses internet di Indonesia merata agar digitalisasi yang menjadi bidang tanggung jawabnya berkeadilan, sejalan dengan visi Astacita Presiden Prabowo Subianto.\r\n\r\nSaat ini program unggulan pemerintah dalam memberikan pemerataan internet adalah membangun tower BTS (base transceiver station).\r\n\r\nBACA JUGA:\r\nGus Baha Ungkap Rahasia Wirid Ayat Terakhir Surah Al-Baqarah, Khusus Hadiah Rasulullah SAW\r\nNamun, dengan kondisi geografis Indonesia yang sangat menantang, mengamat Pengamat Telekomunikasi Institut Teknologi Bandung (ITB) Ian Josef Matheus Edward, pembangunan BTS di daerah tertinggal, terdalam, dan terluar (3T) menjadi tantangan tersendiri.\r\n\r\nAdvertisement\r\n\r\n\r\nBerat Badan Saya 90 Kg, dan Sekarang 58! Diet Saya Sederhana\r\nBerat Badan Saya 90 Kg, dan Sekarang 58! Diet Saya Sederhana\r\nPelajari Lebih \r\nIa menilai pemerataan internet bukan cuma membangun BTS atau jaringan serat optik, tetapi juga mencakup tantangan untuk memastikan akses yang merata hingga ke pelosok.\r\n\r\n\"Oleh sebab itu dibutuhkan peran seluruh pemangku kepentingan sehingga menciptakan ekosistem digital yang inklusif, baik melalui layanan mobile, kabel tetap (fix-cable), maupun satelit,\" ujar Ian melalui keterangannya, Jumat (1/11/2024).\r\n\r\nInfrastructure Sharing\r\n\r\nMenurut Ian, salah satu kebijakan yang dapat langsung berdampak pada masyarakat adalah Komdigi dapat mendorong infrastructure sharing (berbagi infrastruktur) di industri telekomunikasi untuk efisiensi pembangunan.\r\n\r\n\"Dengan berbagi infrastruktur, kita dapat mempercepat penetrasi jaringan di wilayah-wilayah sulit tanpa membebani operator dengan biaya pembangunan tinggi, Menkomdigi harus segera membuat pedoman mengenai kebijakan sharing ini agar tujuan pemerintah mewujudkan pemerataan internet dapat segera terwujud,\" ia memaparkan.\r\n\r\nDi sisi lain, menurut International Telecommunication Union (ITU), salah satu langkah kebijakan yang bisa mendorong menurunkan harga layanan telekomunikasi adalah dengan berbagi infrastruktur.\r\n\r\n\"Penggunaan bersama infrastruktur telekomunikasi, termasuk berbagi infrastruktur pasif dan aktif, memungkinkan untuk membantu penyedia telekomunikasi menghemat biaya dan meningkatkan efisiensi,\" tulis ITU dalam situs web resminya.\r\n\r\nRekomendasi tersebut menunjukkan bahwa ada potensi penghematan hingga 30% dengan berbagi infrastruktur pasif dan hingga 50-60% untuk berbagi infrastruktur aktif.\r\n\r\nImplementasi USO Non-Cash\r\nSalah satu kebijakan lain yang menurut Ian dapat dipertimbangkan Komdigi untuk dapat segera mewujudkan pemerataan internet adalah dengan membuat aturan mengenai implementasi Universal Service Obligation (USO) non-cash.\r\n\r\nLangkah ini memungkinkan operator melaksanakan program USO dalam bentuk penyediaan infrastruktur telekomunikasi di wilayah non-ekonomis.\r\n\r\n\"Sebab dalam UU telekomunikasi yang saat ini masih berlaku, di pasal 16 disebutkan bahwa kontribusi pelayanan universal yang harus diberikan penyelenggara telekomunikasi sejatinya adalah penyediaan sarana dan prasarana telekomunikasi,\" kata Ian.\r\n\r\nKerjasama OTT\r\n\r\nAgar operator telekomunikasi giat membangun di daerah non komersial, Ian menyarankan Komdigi dapat membuat kebijakan pembayaran frekuensi yang fleksibel dan berkeadilan.\r\n\r\n\"Komdigi dapat berkoordinasi dengan Kemenkeu untuk menyediakan keringanan dalam bentuk penundaan, pengangsuran, atau pengurangan Penerimaan Negara Bukan Pajak (PNBP) tertentu,\" ia menekankan.\r\n\r\nAgar seluruh pelaku usaha di bawah naungan Komdigi dapat berkompetisi dengan baik dan fair, Ian pun menekankan pentingnya Menkomdigi membuat aturan yang adil antara penyelenggara telekomunikasi dan penyedia layanan OTT (Over-The-Top) global.\r\n\r\n\"Diharapkan dengan terbitnya aturan tersebut Komdigi dapat menciptakan keseimbangan tanggung jawab antara OTT dan operator, sehingga persaingan antar pelaku usaha menjadi lebih adil dan kondusif bagi industri telekomunikasi lokal,\" Ian menambahkan.\r\n\r\nPenempatan Data Dalam Negeri\r\nDalam rangka mendukung arahan Presiden Prabowo terkait kedaulatan bangsa, Ian mengusulkan agar Komdigi mewajibkan Penyelenggara Sistem Elektronik (PSE), termasuk OTT, untuk menempatkan data di dalam negeri.\r\n\r\n\"Kewajiban ini penting, terutama terkait data pribadi masyarakat Indonesia, guna memastikan keamanan dan kedaulatan data nasional,\" Ian menegaskan.\r\n\r\nLangkah ini, menurut Ian, akan memperkuat pelindungan data dan memberikan equal playing field kepada pelaku industri dalam negeri.\r\n\r\nJika seluruh regulasi tersebut dapat dibuat oleh Komdigi di era Meutya Hafid, Ian yakin pertumbuhan ekonomi 8% yang menjadi target pemerintahan Presiden Prabowo dan Wakil Presiden Gibran Rakabuming Raka dapat terwujud.\r\n\r\n\"Pemerataan internet bukan soal konektivitas, tapi juga tentang bagaimana membuka akses ekonomi dan kesempatan yang setara bagi seluruh rakyat Indonesia,\" ia memungkaskan.', 'public/images/LJBYhMjnJBEdWvGJlZsPytSUF2StIurB8c7sXoFZ.png', 0, '2024-11-02 02:48:07', '2024-11-02 02:48:07'),
(2, 'Microsoft Tunda Lagi Peluncuran Fitur AI Recall', 'Raksasa teknologi Microsoft kembali menunda peluncuran fitur kecerdasan buatan (artificial intelligence/AI) Windows Recall. Kini, fitur tersebut akan meluncur dalam program uji coba Windows Insiders pada Desember bulan depan. Sebelumnya, fitur ini diumumkan pada Mei lalu, tetapi, perilisannya ditunda karena dibanjiri kritik oleh para pakar siber, terutama soal keamanan dan privasi. Fitur ini kemudian dipastikan meluncur pada Oktober 2024. Namun, kini diundur lagi menjadi Desember. Sebagai informasi, Recall merupakan fitur untuk komputer Copilot Plus PC (komputer dengan sistem operasi Windows 11 bertenaga AI), yang bisa memotret layar (screenshot) komputer pengguna secara konstan. Kumpulan screenshot ini bakal diubah jadi basis data, dan nantinya pengguna bisa melakukan pencarian (search) berdasarkan data itu. Fitur ini dikritik karena Recall berpotensi menyimpan informasi sensitif pengguna, seperti kata sandi (password), dan adanya potensi peretas (hacker) membobol fitur itu.\r\nFitur ini dikritik karena Recall berpotensi menyimpan informasi sensitif pengguna, seperti kata sandi (password), dan adanya potensi peretas (hacker) membobol fitur itu.\r\nAdapun penundaan perilisan fitur Recall diumumkan Microsoft kepada media berita teknologi The Verge. \"Kami berkomitmen untuk menghadirkan pengalaman yang aman dan tepercaya dengan Recall. Untuk memastikan kami menghadirkan pembaruan penting ini, kami meluangkan waktu tambahan untuk menyempurnakan pengalaman tersebut sebelum merilis pratinjau untuk Windows Insiders,\" kata Senior Product Manager Windows, Brandon LeBlanc.\r\n\"Awalnya direncanakan untuk Oktober, Recall kini akan tersedia sebagai pratinjau untuk Windows Insiders pada PC Copilot Plus, mulai bulan Desember,\" sambungnya.\r\nSeperti yang sebelumnya disebutkan, fitur Recall sudah diundur berulang kali karena masalah keamanan dan privasi. Sehubungan dengan itu, Microsoft sudah merombak keamanan Recall untuk mengatasi kritik para pengguna dan pakar siber. Salah satunya, Recall akan sepenuhnya bersifat opsional, berbeda dari sebelumnya yang mana Recall diaktifkan secara default.\r\nSaat baru pertama kali menggunakan komputer Copilot Plus PC, pengguna diberikan opsi untuk menyimpan screenshot dengan Recall. Jika dinonaktifkan, fitur Recall tentunya tidak akan mengambil atau menyimpan tangkapan layar aktivitas pengguna. Terkait itu, Microsoft pekan ini kembali memberikan klarifikasi bahwa Recall bersifat opsional, setelah beberapa video YouTube mengeklaim bahwa Recall terinstal otomatis di Windows 11 24H2. Recall juga dapat dihapus (uninstall) dari komputer lewat menu \"Optional Settings\" di komputer. Namun, Microsoft tidak menjelaskan cara untuk mengunduhnya kembali apabila pengguna ingin kembali menjajal Recall.\r\nMicrosoft memastikan bahwa tangkapan layar dan data lainnya yang terkait dengan Recall bakal terenkripsi secara penuh. Pengguna pun diwajibkan untuk memakai autentikasi Windows Hello, jika ingin menggunakan Recall.\r\nAturan ini diimplementasikan untuk memastikan bahwa pemilik komputer tersebutlah yang menggunakan Recall, bukan pihak lain yang tidak diinginkan. Bagi yang belum familier, Windows Hello adalah metode autentikasi untuk masuk (sign-in) dalam perangkat Windows, yang mencakup pengenalan wajah (facial recognition), sidik jari (fingerprint), dan PIN.\r\nSelanjutnya, Recall disebut akan menggunakan lingkungan sistem aman (secure environment) bernama Virtualization-based Security Enclave (VBS). VBS adalah mesin virtual (virtual machine) yang sepenuhnya aman dan terisolasi dari sistem Windows 11. Sementara itu, virtual machine merupakan komputer yang terbuat dari software, yang bisa digunakan untuk menjalankan software lainnya layaknya komputer sebenarnya.\r\nDengan VBS, pengguna hanya bisa mengakses Recall menggunakan kunci dekripsi. Kunci ini diberikan saat pengguna masuk dengan Windows Hello. \"Semua proses Recall yang sensitif, termasuk screenshot, pemrosesan screenshot, dan basis data vektor, kini ada di VBS Enclave,\" kata David Weston selaku VP of Enterprise and OS Security di Microsoft, dalam blog resmi perusahaan itu. \"Kami pada dasarnya mengambil Recall dan menaruhnya di mesin virtual, sehingga pengguna administratif pun tidak dapat berinteraksi di VM tersebut, tidak dapat menjalankan kode apa pun, dan tidak dapat melihat data apa pun,\" imbuhnya. Masih bicara soal privasi, Microsoft juga tidak bisa mengintip data Recall pengguna. Sebab, semua data ini disimpan secara lokal dalam perangkat, dan tidak dikirimkan ke awan (cloud). Inilah yang menjadi alasan mengapa Recall hanya tersedia di komputer Copilot Plus PC, yakni karena fitur ini membutuhkan neural processing unit (NPU, prosesor untuk menjalankan tugas AI) yang kuat, untuk percepatan dan pemrosesan Recall yang responsif. Terakhir, Microsoft mengatasi kekhawatiran sebelumnya bahwa Recall bisa menangkap screenshot situs perbankan online yang dikunjungi pengguna, dan informasi keuangan sensitif pengguna. Recall dipastikan akan menyaring informasi sensitif seperti kata sandi dan nomor kartu kredit. Fitur privasi lainnya di Recall mencakup kemampuan untuk mengecualikan aplikasi atau situs web tertentu, agar aktivitas pengguna di situs tersebut tidak dipotret oleh Recall, sebagaimana dikutip KompasTekno dari The Verge, Minggu (3/11/2024).', 'public/images/UEjPG3vUf3qIJqwCtAag4Aqg43tQuXqwSNGfPGLB.png', 0, '2024-11-03 07:25:07', '2024-11-03 07:25:07'),
(3, 'Langkah Sederhana untuk Menangkal Ancaman Siber di Era Digital', 'MEMASUKI era digital, ancaman siber semakin nyata, dan berbagai pihak—baik individu maupun perusahaan—dapat menjadi target yang rentan. SAFEnet—organisasi masyarakat sipil yang memperjuangkan hak-hak digital—melaporkan, terdapat 61 insiden keamanan digital di Indonesia pada kuartal I-2024, hampir dua kali lipat dari tahun sebelumnya. Fakta tersebut menunjukkan semakin pentingnya kesadaran serta pemahaman mengenai berbagai ancaman yang ada di dunia maya.\r\n\r\nJurnal Jamastika yang dirilis pada 2024 menyatakan bahwa peningkatan kesadaran, pengetahuan, serta upaya kolaboratif yang kuat dalam bidang keamanan siber menjadi esensial untuk melindungi masyarakat dan infrastruktur digital di era digital saat ini. Ditambah lagi, Indonesia adalah adalah salah satu negara yang mengalami kerugian paling besar atas kejahatan siber. Ada beberapa jenis serangan siber dan langkah praktis untuk menangkis risikonya.\r\n\r\nSalah satu serangan siber yang paling sering terjadi adalah phishing. Phishing adalah suatu taktik penipuan dengan mengelabui target untuk mencuri informasi dari akun korban. Istilah ini berasal dari kata fishing yang artinya memancing korban agar terperangkap kedalam jebakan pelaku. Pada dasarnya, phishing didefinisikan sebagai tindak penipuan yang memanfaatkan email dari pengguna untuk menggali informasi sensitif milik korban. Dalam banyak kasus, email yang terlihat resmi sering kali meminta penerima untuk memberikan informasi sensitif, seperti kata sandi atau nomor kartu kredit. Salah satu contohnya adalah email dengan subjek ancaman, seperti \"Akun Anda telah dibekukan, tindakan diperlukan segera!\".\r\nPesan tersebut memancing penerima agar mengeklik tautan yang membawa mereka ke situs palsu yang terlihat mirip dengan situs bank asli. Begitu data dimasukkan, pelaku mendapatkan akses langsung ke informasi pribadi atau bahkan dana korban. Penggunaan elemen mendesak atau ancaman adalah strategi efektif yang sering membuat korban tidak berpikir dua kali. Ada beberapa langkah yang bisa diambil untuk mencegah menjadi korban phishing. Pertama, periksa alamat pengirim dengan cermat. Biasanya, alamat palsu memiliki perbedaan tipis dari yang asli. Kedua, hindari mengeklik tautan atau lampiran dari sumber yang tidak tepercaya. Pengamanan ini mencegah Anda diarahkan ke situs berbahaya atau memasang malware tanpa disadari.\r\nDengan memahami modus operasi phishing, individu dan organisasi dapat lebih waspada dan menanggulangi potensi kerugian akibat penipuan.\r\nPada akhir Juni 2024, Pusat Data Nasional Sementara (PDNS) mengalami serangan ransomware yang mengakibatkan layanan publik penting menjadi terganggu. Ransomware yang disebut “Brain Cipher” ini mengunci data penting di PDNS 2 Surabaya. Ransomware merupakan jenis malware yang dirancang untuk mengunci atau mengenkripsi data korban, yang kemudian meminta tebusan agar akses dikembalikan.\r\nMelansir laman Microsoft.com, ransomware adalah jenis serangan yang sering kali menyasar data penting dan sulit diatasi setelah terjadi. Ada dua langkah dasar yang bisa dilakukan untuk mengurangi risiko ransomware. Pertama, selalu backup data penting secara rutin. Kehilangan data bisa terjadi kapan saja karena berbagai alasan, termasuk serangan ransomware dan kegagalan perangkat keras. Kedua, perbarui perangkat lunak keamanan secara berkala. Sistem keamanan yang mutakhir menawarkan perlindungan terhadap ancaman terbaru, yang sering kali berkembang cepat.\r\nMenurut Kaspersky—perusahaan keamanan siber dan antivirus multinasional—malicious software (malware) adalah perangkat lunak berbahaya yang dapat merusak atau mengambil alih perangkat Anda. Bentuk malware sendiri bervariasi, mulai dari virus hingga trojan. Masing-masing memiliki modus operandi berbeda untuk menargetkan data pengguna atau merusak sistem. Perlu diketahui, ransomware adalah salah satu jenis malware. Namun, terdapat beberapa jenis malware lain yang perlu diwaspadai.\r\nSpyware: Malware ini bekerja secara diam-diam untuk memantau aktivitas pengguna dan mencuri data pribadi, seperti kata sandi atau informasi keuangan. Adware: Malware yang sering menampilkan iklan berlebihan dan mengganggu pengguna. Trojan: Malware yang menyamar sebagai aplikasi atau fail yang terlihat aman, tetapi sebenarnya berbahaya dan memungkinkan akses oleh pihak ketiga.\r\nSalah satu langkah untuk melindungi perangkat dari serangan malware adalah dengan menginstal antivirus dan memperbaruinya secara rutin. Antivirus membantu mendeteksi dan menghapus malware sebelum sempat merusak sistem. Kemudian, unduh perangkat lunak dari sumber tepercaya. Penggunaan perangkat lunak resmi meminimalkan risiko infeksi malware dari aplikasi tidak dikenal.\r\nSerangan Man-in-the-Middle (MitM) adalah bentuk lain dari ancaman siber. Pada serangan ini, pelaku menyusup di antara komunikasi dua pihak tanpa disadari oleh kedua belah pihak.\r\nMenurut National Institute of Standards and Technology (NIST), serangan itu sering terjadi saat pengguna terhubung ke jaringan Wi-Fi publik yang dapat dikendalikan pelaku. Penyerang dapat mencuri data penting, seperti detail login dan data keuangan. Untuk mengurangi risiko terkena serangan MitM, ada dua langkah yang bisa diambil. Pertama, hindari penggunaan Wi-Fi publik untuk transaksi sensitif. Sebisa mungkin, lakukan transaksi di jaringan pribadi atau jaringan yang terenkripsi. Kedua, gunakan virtual private network (VPN), terutama saat mengakses internet di tempat umum. VPN mengenkripsi lalu lintas internet sehingga lebih sulit bagi pihak ketiga untuk menyusup.\r\n\r\nMenghadapi ancaman siber yang kian kompleks memerlukan kolaborasi erat antara institusi pendidikan dan pemerintah untuk membangun kesadaran dan literasi digital masyarakat. Swiss German University (SGU), misalnya, memainkan peran penting dengan menawarkan program studi S1 dan S2 Cyber Security yang mengajarkan mahasiswa teknologi terbaru, seperti kecerdasan buatan dan blockchain. Program tersebut mempersiapkan mahasiswa menghadapi risiko siber melalui pengajaran teknik analisis dan simulasi serangan, menjadikan mereka lebih siap dalam melindungi infrastruktur digital.\r\nSelain pembelajaran di kelas, SGU rutin menyelenggarakan seminar dan lokakarya di berbagai kota yang bekerja sama dengan Badan Siber dan Sandi Negara (BSSN). Kolaborasi ini memberikan pelatihan nyata dan wawasan kebijakan pemerintah terbaru, memperkuat pemahaman masyarakat umum tentang pentingnya keamanan siber. Melalui pendekatan yang melibatkan pemerintah, program itu tidak hanya mencakup teknis, tetapi juga regulasi yang membantu masyarakat mengenali peran mereka dalam menjaga keamanan digital. Kolaborasi antara pendidikan tinggi dan pemerintah menjadi fondasi penting dalam membangun ketahanan siber nasional.\r\nDengan meningkatnya literasi digital melalui program kolaboratif, masyarakat menjadi lebih siap menghadapi risiko digital dan turut membangun lingkungan yang aman dan tangguh di dunia maya. Kolaborasi itu juga menunjukkan bahwa keamanan siber bukan hanya tanggung jawab individu, tetapi upaya bersama yang perlu didukung secara menyeluruh.', 'public/images/eCREAOc0fOgrRZFXdiqbqhyVQs25aALIkoV49Yox.jpg', 0, '2024-11-03 07:32:01', '2024-11-03 07:32:01'),
(4, 'OpenAI Rilis SearchGPT, Mesin Pencari Penantang Google', 'OpenAI resmi merilis fitur SearchGPT di dalam layanan chatbot ChatGPT. Seperti namanya, fitur ini memungkinkan pengguna mencari informasi atau data terkini yang ada di internet. Jika dibayangkan, cara kerja SearchGPT mirip seperti mesin pencari (search engine) Google. Ketika kita memasukkan kata kunci yang hendak dicari, maka SearchGPT bisa menelusuri internet untuk mencari apa yang ingin kita ketahui, lengkap dengan gambar dan tautan (link) yang merujuk ke informasi tersebut.  Hal ini berbeda dengan fitur percakapan atau fitur \"reguler\" di ChatGPT, di mana pengguna hanya akan menerima informasi berupa teks yang mirip seperti bahasa percakapan sehari-hari.  Fitur SearchGPT bisa diakses melalui ikon \"bola dunia\" yang terletak di bagian kiri kolom teks input (prompt), tepat di sebelah kanan ikon \"lampiran\" atau attachment. Ketika diklik, respons yang akan diberikan ChatGPT nantinya akan mirip seperti hasil pencarian di search engine. \r\nSupaya bisa memberikan informasi terkini, OpenAI mengatakan pihaknya telah bekerja sama dengan banyak penyedia data dan kantor berita kenamaan. Beberapa di antaranya seperti Associated Press, Axel Springer, Financial Times, Reuters, Vox Media, dan asih banyak lagi.  Secara umum, penyedia data yang digandeng OpenAI berasal dari kategori olahraga untuk mencari informasi soal skor pertandingan terkini, penyedia data terkait saham, informasi cuaca terbaru, serta detail yang ada di dalam peta. Untuk ketersediaan SearchGPT kini sudah bisa dijajal pengguna ChatGPT Plus dan Team, serta pengguna yang mendaftar SearchGPT waitlist, mulai hari ini, Jumat (1/11/2024).\r\nFitur ini rencananya akan bisa dijajal pengguna ChatGPT Enterprise dan Edu dalam beberapa minggu ke depan. Bagi pengguna gratisan, mereka harus bersabar lebih lama. Sebab, fitur ini dijanjikan akan hadir di ChatGPT dalam beberapa bulan ke depan.  Adapun SearchGPT atau fitur Search sendiri bisa diakses melalui ChatGPT versi web melalui tautan chatgpt.com, serta aplikasi ChatGPT versi desktop atau mobile, sebagaimana dirangkum KompasTekno dari OpenAI, Jumat (1/11/2024).', 'public/images/DXK1FBHApOasI1Ey455qleQYg8angoG2UR0pbArN.png', 0, '2024-11-03 07:34:07', '2024-11-03 07:34:07'),
(5, 'Meta AI Kantongi 500 Juta Pengguna, Mau Jadi Asisten AI Paling Banyak Dipakai', 'Meta, raksasa teknologi di balik Facebook dan Instagram baru saja mengumumkan capaian luar biasa. Sebab, Meta AI besutan mereka telah berhasil mencapai 500 juta pengguna, hanya setahun setelah diluncurkan.\r\n\r\nMengutip informasi dari Engadget, Jumat (1/11/2024), capaian ini diungkap saat laporan keuangan tahunan. Pada kesempatan itu, CEO Meta Mark Zuckberg pun menyatakan optimismenya mengenai masa depan Meta AI.\r\n\r\nLebih lanjut ia menyatakan, Meta AI pun berada di trek yang tepat untuk menjadi asisten berbasis AI generatif yang paling banyak digunakan digunakan pada akhir 2024.\r\n\r\nSelain asisten berbasis AI, Meta juga banyak memanfaatkan AI untuk meningkatkan platform utama mereka. Salah satunya dengan meningkatkan algoritma rekomendasi berbasis AI di Instagram maupun Facebook.\r\n\r\nBerbekal peningkatan berbasis AI itu, perusahaan mengklaim telah berhasil meningkatkan keterlibatan pengguna di Facebook dan Instagram.\r\n\r\nSelain itu, para pengiklan di Meta juga semakin banyak yang menggunakan alat berbasis untuk membuat iklan menarik. Tercatat, ada lebih dari 15 juta iklan yang dihasilkan menggunakan AI dalam sebulan terakhir.\r\n\r\nTidak hanya itu, laporan tersebut juga mengungkap kalau aplikasi Threads terus menunjukkan pertumbuhan yang baik. Data terbaru menyebut aplikasi itu mencapai hampir 275 juta pengguna aktif bulanan.\r\n\r\n\"(Threads) telah tumbuh lebih dari satu juta pendaftar per hari,\" tutur Mark Zuckerberg. Ia juga menyatakan kalau keterlibatan pengguna di Threads juga meningkat\r\nDi sisi lain, Meta tengah menggarap mesin pencari berbasis kecerdasan buatan (artificial intelligence/AI) untuk mengurangi ketergantungan pengguna Facebook pada Google milik Alphabet dan Bing milik Microsoft.\r\n\r\nMengutip Reuters, Selasa (29/10/2024), pertarungan mesin pencari AI kian memanas antara OpenAI (pembuat ChatGPT), Google, dan Microsoft yang bersaing untuk mendominasi pasar.\r\n\r\nPenjaring data Meta akan memberikan jawaban percakapan kepada pengguna tentang peristiwa terkini di Meta AI, chatbot milik perusahaan tersebut di WhatsApp, Instagram, dan Facebook.\r\n\r\nMenurut laporan The Information, pemilik Facebook saat ini mengandalkan mesin pencari Google dan Bing untuk memberikan jawaban kepada pengguna tentang berita, saham, dan olahraga. Terkait hal ini, Meta belum memberikan keterangan resmi.\r\nMeta baru-baru ini juga mengatakan bahwa chatbot AI miliknya akan menggunakan konten Reuters untuk menjawab pertanyaan pengguna secara langsung tentang berita dan kejadian terkini.\r\nDi samping itu, Meta juga telah mengumumkan kalau Meta AI akan menjangkau lebih banyak pengguna di seluruh dunia. Lewat pengumuman terkini, perusahaan telah menambah daftar negara yang mendukung layanan tersebut.\r\n\r\nMengutip informasi dari GSM Arena, Kamis (10/10/2024), Meta AI kini secara resmi hadir di enam negara baru yakni Inggris, Brasil, Bolivia, Guatemala, Paraguay, dan Filipina.\r\n\r\nKhusus pengguna di Filipina, Meta bahkan memungkinkan mereka untuk berinteraksi menggunakan bahasa Tagalog. Selain enam negara tersebut, chatbot AI ini juga dipersiapkan untuk hadir ke 15 negara lainnya.\r\n\r\nNegara itu adalah Algeria, Mesir, Indonesia, Irak, Yordania, Libya, Malaysia, Maroko, Arab Saudi, Sudan, Thailand, Tunisia, Uni Emirat Arab, Vietnam, dan Yaman.\r\n\r\nAdapun bahasa yang didukung di wilayah ini termasuk Arab, Indonesia, Thailand, dan Vietnam. Dengan ekspansi ini, Meta AI akan tersedia di 43 negara dan dapat berkomunikasi dalam beragam bahasa.\r\n\r\nPengguna dapat mengakses Meta AI melalui situs resminya, atau langsung berkomunikasi melalui aplikasi WhatsApp, Facebook, Messenger, hingga Instagram.\r\n\r\nUntuk diketahui, Meta AI merupakan chatbot besutan Meta. Chatbot ini bisa menjadi rekan berbincang penggunanya.\r\n\r\nTidak hanya bisa diajak mengobrol, Meta AI juga bisa menjadi asisten pribadi yang sangat membantu. Sebab, chatbot ini bisa membantu pengguna untuk menyusun jadwal hingga mencari resep makanan. \r\n\r\nMetea AI juga bisa dimanfaatkan untuk mengenali objek di sekitar pengguna, termasuk mengedit gambar, bahkan membuat caption yang kreatif untuk kebutuhan di media sosial.', 'public/images/OlRobGa8es3cgbKz8bIgSSsESAGjPYhMDQUJcesi.png', 0, '2024-11-03 07:39:24', '2024-11-03 07:39:24'),
(6, 'Mengenal Fungsi Teknologi RFID untuk Industri Ritel hingga Kesehatan', 'Teknologi Radio Frequency Identification (RFID) yang memanfaatkan gelombang radio untuk mengidentifikasi dan melacak objek secara otomatis telah merambah berbagai industri, mulai dari ritel hingga kesehatan.\r\n\r\nDalam sektor ritel misalnya, RFID telah mengubah cara pengelolaan stok barang. Dengan menempelkan tag RFID pada setiap produk, perusahaan dapat memantau inventaris secara real-time, mengurangi risiko kehilangan barang, dan bahkan mempercepat proses pembayaran.\r\nRDS Group, perusahaan solusi RFID, telah mengembangkan berbagai aplikasi inovatif berbasis RFID. Salah satunya adalah solusi khusus untuk linen rumah sakit.\r\nDengan tag RFID yang terpasang pada setiap item linen, rumah sakit dapat melacak siklus pencucian dan memastikan ketersediaannya secara akurat.\r\n\r\nRFID linen tag dari RDS diklaim terbukti secara ilmiah tidak mengganggu proses rontgen dan MRI serta tahan terhadap bahan-bahan kimia dan panas sampai dengan 200°C.\r\n\r\n“Sebagai pelaku bisnis solusi RFID, RDS Group terus berinovasi untuk menyediakan teknologi yang tidak hanya meningkatkan efisiensi operasional, tetapi juga memberikan keunggulan kompetitif bagi para klien di berbagai industri,” ujar GM Sales & Marketing RDS Group, Slamet Ariyadi, melalui keterangannya, Kamis (31/10/2024).\r\n\r\nSelain di sektor kesehatan, RFID juga diterapkan dalam manajemen dokumen perusahaan. Dengan menempelkan tag RFID pada setiap dokumen, perusahaan dapat melacak lokasi dan akses dokumen secara real-time, serta meningkatkan keamanan dan efisiensi pengelolaan arsip.\r\nRDS Group bekerja sama dengan Toppan Edge, perusahaan teknologi Jepang, untuk mengembangkan solusi RFID yang lebih komprehensif dan inovatif.\r\n\r\nKolaborasi ini memungkinkan RDS Group untuk mengadopsi teknologi terkini dari Jepang dan menyesuaikannya dengan kebutuhan pasar Indonesia.\r\n\r\n“Kami melihat potensi besar dari pasar RFID di Indonesia. Melalui kolaborasi dengan RDS Group, kami ingin memberikan kontribusi dalam meningkatkan efisiensi dan produktivitas berbagai industry,\" kata Global Business Manager dari Toppan Edge, Keisuke Uemura.\r\nBerikut ini beberapa manfaat RFID untuk berbagai industri: \r\n\r\nRitel: Meningkatkan akurasi inventaris, mengurangi kehilangan barang, dan mempercepat proses pembayaran.\r\nKesehatan: Memudahkan pelacakan peralatan medis dan linen, meningkatkan efisiensi operasional rumah sakit.\r\nManufaktur: Meningkatkan efisiensi produksi, mengurangi risiko kehilangan komponen, dan meningkatkan keamanan rantai pasok.', 'public/images/QIjfqCESAyLwlzFxBeMydawpgGZUFlvFXqb0ewUX.png', 0, '2024-11-03 07:43:00', '2024-11-03 07:43:00'),
(7, 'Infomedia Sukses Gelar INFINITE Conference 2024, Kupas Revolusi AI untuk Pertumbuhan Bisnis', 'PT Infomedia Nusantara (Infomedia) yang merupakan anak usaha PT Telkom Indonesia (Persero) Tbk yang bergerak di layanan alih daya proses bisnis digital (Digital BPO), sukses menyelenggarakan konferensi pertamanya dengan tema “INFINITE - Infomedia Insight for Technology Excellence” yang berlangsung di Auditorium Telkom Landmark Tower, Jakarta Selatan.\r\n\r\nMengangkat topik inovasi serta keunggulan teknologi dalam transformasi bisnis menuju digital, Konferensi ini mempertemukan para pelaku bisnis dari berbagai industri untuk mendiskusikan penerapan proses bisnis modern yang didukung oleh teknologi mutakhir seperti otomasi, kecerdasan buatan (AI), dan analitik.\r\n\r\nDirektur Utama Infomedia Eddy Sofryano menyampaikan INFINITE merupakan bagian dari komitmen Infomedia untuk mendukung perusahaan-perusahaan di Indonesia dalam menghadapi tantangan dan mencapai pertumbuhan bisnis yang berkelanjutan melalui penerapan teknologi 3A.\r\n\r\n“Konferensi ini akan menyoroti penggunaan strategis teknologi 3A (Automation, AI & Analytics) untuk mendorong pertumbuhan, efisiensi, dan efektivitas dalam operasi bisnis, dengan meningkatkan keterlibatan pelanggan. Dengan hadirnya INFINITE, kami berharap terbentuk sinergi dan kolaborasi dalam penerapan teknologi digital untuk mendukung peningkatan daya saing perusahaan serta pengalaman bagi pelanggan,” kata Eddy Sofyano.\r\n\r\nPembahasan 3A, yang kali ini difokuskan pada topik AI, merupakan respons terhadap tren teknologi yang tengah berkembang pesat di dunia bisnis saat ini. Menurut Regional Head, Cloud AI Customer Engineering Google Cloud Dambo Ren, saat ini investasi dalam kecerdasan buatan (AI) mengalami pertumbuhan pesat, mencapai 158 miliar dolar dan berkembang hingga 10 kali lipat.\r\n\r\nDambo menyampaikan bahwa sekitar 60% perusahaan di wilayah Asia Pasifik telah mengadopsi Generative AI, yang berkontribusi pada peningkatan pendapatan hingga 6% ketika diterapkan dalam proses produksi dan operasional bisnis. Keterlibatan AI pada tahap yang lebih lanjut ini menegaskan pentingnya teknologi ini dalam meningkatkan produktivitas dan efisiensi operasional perusahaan, termasuk di Indonesia.\r\n\r\nJajak pendapat yang dilakukan oleh Gartner menunjukkan bahwa 55% perusahaan telah menjajaki penerapan AI dalam produksi mereka, dan 45% lainnya meningkatkan investasi pada AI generatif di berbagai fungsi bisnis.\r\n\r\nDengan persentase 22% mengalokasikan investasi di lebih dari tiga fungsi yang berbeda, dapat diobservasi bahwa pengembangan perangkat lunak mencatatkan adopsi tertinggi, diikuti oleh pemasaran dan layanan pelanggan. Keterlibatan teknologi ini menunjukkan betapa pentingnya AI dalam meningkatkan produktivitas dan efisiensi operasional perusahaan, tidak terkecuali di Indonesia.\r\nPenerapan teknologi dan inovasi AI juga merupakan langkah Telkom Group dalam mendukung transformasi digital di Indonesia.\r\n\r\n\"Peningkatan kapabilitas AI di Telkom Group dilakukan melalui berbagai pengembangan teknologi, Telkom sendiri berkomitmen untuk mengembangkan berbagai solusi digital yang relevan dengan kebutuhan pasar, hingga mampu menghadapi tantangan di masa depan,\" kata Direktur Group Business Development Telkom Honesti Basyir.\r\n\r\nDirektur Eksekutif Forum Human Capital Indonesia Lieke Roosdianti mengutarakan AI dan automation kini menjadi kebutuhan utama dalam modernisasi proses bisnis, terutama di bidang rekrutmen.\r\n\r\n“Dengan kemampuannya sebagai media cerdas, AI tidak hanya membantu mempercepat pekerjaan repetitif, tetapi juga mengubah proses klerikal menjadi lebih efisien dan akurat, mendorong transformasi digital yang lebih cepat dan efektif,” kata Lieke Roosdianti.\r\n\r\nDalam penerapan teknologi AI dan Automation pada proses Rekrutmen Bersama BUMN (RBB) beberapa waktu lalu, proses rekrutmen dari ribuan data pelamar dapat dilakukan dengan lebih singkat sehingga tahapan proses screening dapat berlangsung 10x lebih cepat, secara akurasi dapat meningkat hingga 98%, dan tentunya meningkatkan produktivitas HR yang menjalankan proses ini.\r\n\r\nPenggunaan AI juga semakin optimal untuk meminimalisasi adanya fraud dalam proses online test. AI dapat melakukan proses pencocokan wajah pelamar dengan foto pada KTP, mendeteksi adanya orang lain atau perilaku yang mencurigakan pada saat online test.\r\n\r\nTak hanya insight dan diskusi, konferensi INFINITE juga menyajikan experience center yang memperkenalkan mekanisme terkini dalam penerapan teknologi 3A untuk menghadirkan experience. Hal ini memberikan kesempatan kepada peserta untuk langsung merasakan inovasi yang ditawarkan dan bagaimana implementasinya dapat meningkatkan proses bisnis mereka.\r\n\r\nSecara keseluruhan, konferensi INFINITE mencerminkan komitmen Infomedia untuk terus berinovasi dan mendukung perusahaan bertransformasi digital pada proses bisnisnya. Dengan langkah ini, diharapkan perusahaan dapat bertransformasi menjadi lebih efisien, dalam memperoleh experience dan berdaya saing tinggi di pasar global yang semakin kompetitif.', 'public/images/M8NFlg0cszFCd67Lap6hYCSlOamsvdcBnJtAhy6I.png', 0, '2024-11-03 07:46:18', '2024-11-03 07:46:18'),
(8, 'Ericsson Hackathon 2024 Integrasikan IoT, Big Data, Robotika hingga AI', 'Raksasa telekomunikasi Ericsson baru saja meluncurkan \'Ericsson Hackathon 2024\', yang bertujuan untuk menggairahkan transformasi digital di Indonesia.\r\n\r\nAjang kali ini fokus pada sektor manufaktur, dengan mengandalkan kekuatan kecerdasan buatan generatif (Generative Artificial Intelligence/Gen AI) dan jaringan 5G\r\nKolaborasi lintas sektor antara Kementerian Perindustrian, PIDI 4.0, Kementerian Komunikasi dan Digital, Innovation & Learning Centers, Swiss German University, dan KORIKA menjadi kunci sukses inisiatif ini.\r\nFokus utama Ericsson Hackathon 2024 adalah pada konsep Smart Manufacturing, yakni integrasi teknologi canggih seperti IoT, big data analytics, robotika, dan AI untuk mengoptimalkan seluruh proses produksi.  \r\n\r\nPresident Director of Ericsson Indonesia, Krishna Patil, mengatakan perusahaan berkomitmen penuh mendukung transformasi digital Indonesia.\r\n\r\n\"Hackathon ini adalah wujud nyata komitmen kami untuk mendorong inovasi, khususnya di sektor manufaktur. Dengan memadukan kekuatan Gen AI dan 5G, kita akan membuka peluang baru dan membentuk masa depan industri yang lebih cerdas,\" ujarnya, dikutip Kamis (24/10/2024).\r\n\r\nSementara Direktur PIDI 4.0, Saiful Bahri, menjelaskan bahwa era digital menghadirkan tantangan sekaligus peluang besar. Hackathon ini diharapkan menjadi jawaban atas tantangan integrasi teknologi baru seperti AI dan 5G.\r\n\r\n\"Kami berkomitmen membangun ekosistem inovasi digital untuk melahirkan para digitalpreneur yang mampu menjawab tantangan industri manufaktur,\" Saiful menambahkan.\r\n\r\nSenada dengan Saiful, Bonifasius Wahyu Pudjianto selaku Direktur Ekonomi Digital dari Kementerian Komunikasi dan Digital, berharap ajang ini mampu melahirkan inovator muda.\r\n\r\n\"Kami ingin melihat lahirnya inovasi dan solusi yang memberikan dampak positif bagi masyarakat Indonesia,\" ia memungkaskan\r\n\r\nPeserta Hackathon akan dihadapkan pada tantangan nyata dalam dunia manufaktur. Mereka akan berlomba menciptakan solusi inovatif untuk meningkatkan otomatisasi, pemeliharaan prediktif, pengendalian kualitas, dan manajemen rantai pasok.\r\n\r\nSelama kompetisi, para peserta akan mendapatkan mentoring dari para ahli industri.\r\n\r\nPendaftaran Hackathon akan ditutup pada 31 Oktober 2024. Pemenang akan diumumkan pada 28 November 2024 dan berhak atas hadiah sebesar Rp 50 juta.\r\n\r\nTim juri yang terdiri dari para pakar akan menilai peserta berdasarkan tiga kriteria utama: teknis, bisnis, dan desain.\r\n\r\nAspek teknis meliputi kebersihan dan kompleksitas kode, pemahaman teknologi, serta fungsionalitas solusi.\r\n\r\nSementara itu, kriteria bisnis mencakup identifikasi masalah, kelayakan finansial, dan strategi implementasi. Terakhir, aspek desain dinilai dari segi kreativitas, estetika, dan pengalaman pengguna.\r\n\r\nSektor manufaktur sendiri merupakan salah satu sektor prioritas utama dalam agenda transformasi digital Indonesia.\r\n\r\nNamun, transisi menuju Industri 4.0 akan bergantung pada keberhasilan adopsi berbagai teknologi baru.\r\n\r\n5G menawarkan konektivitas yang andal tanpa pemasangan kabel yang rumit dan mahal, sehingga memungkinkan pengaturan pabrik dengan komunikasi dua arah antara mesin dan pekerja dalam pengaturan yang modular dan fleksibel.', 'public/images/37bbGZJ9iYkZ2CUoWFuj0uwPb0vmJHLCbkleoLP0.png', 0, '2024-11-03 07:50:07', '2024-11-03 07:50:07');

-- --------------------------------------------------------

--
-- Table structure for table `beritautama`
--

CREATE TABLE `beritautama` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `foto` varchar(255) NOT NULL,
  `judul` varchar(255) NOT NULL,
  `penjelasan` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `beritautama`
--

INSERT INTO `beritautama` (`id`, `foto`, `judul`, `penjelasan`, `created_at`, `updated_at`) VALUES
(1, 'uploads/ejYE9yVtPXhfRDLxTtaHGy1woJ3SgN5CZQ55gttm.jpg', '\"Sumpit\" SpaceX Berhasil Tangkap Roket Pendorong Starship Saat Mendarat ke Bumi', 'SpaceX kembali melakukan uji terbang pada Minggu (13/10/2024) pagi. Roket Starship setinggi hampir 121 meter terbang dari ujung selatan Texas dekat perbatasan Meksiko. Namun, dari uji coba ini ternyata SpaceX membuat sejarah baru karena roket pendorong tahap pertama dapat kembali mendarat di landasan tempat ia terbang tujuh menit sebelumnya. Hal itu berkat usaha keras dari pendiri dan CEO SpaceX Elon Musk yang ingin meningkatkan tantangan dan risikonya di industri antariksa.\r\n\r\nDiketahui, menara peluncuran itu memiliki lengan logam raksasa, yang dijuluki \"sumpit\" mampu menangkap pendorong setinggi 71 meter ketika turun ke bumi. \"Menara itu telah menangkap roket!!,\" Elon Musk berkata melalui media sosial X.\r\n\r\nAtas keberhasilan lengan mekanis (sumpit) itu, karyawan SpaceX bersorak riang saat roket pendorong itu perlahan-lahan turun ke lengan menara peluncuran.\r\n\r\n\"Bahkan di zaman sekarang, apa yang baru saja kita lihat adalah keajaiban. Saya gemetar sekarang,\" kata Dan Huot dari SpaceX, dikutip dari AP News. \"Teman-teman, ini adalah hari untuk buku sejarah teknik,\" imbuh Kate Tice dari kantor pusat SpaceX di Hawthorne, California. SpaceX mengatakan pendorong dan menara peluncuran harus dalam kondisi baik dan stabil. Jika tidak, keduanya akan berakhir di teluk seperti sebelumnya.\r\n\r\nSebelumnya, penerbangan Juni itu gagal di akhir setelah beberapa bagian terlepas. Namun SpaceX meningkatkan perangkat lunak dan mengerjakan ulang pelindung panas, meningkatkan lapisan termal. SpaceX telah memulihkan pendorong tahap pertama roket Falcon 9 yang lebih kecil selama sembilan tahun, setelah mengirimkan satelit dan kru ke orbit dari Florida atau California. Namun, roket tersebut mendarat di landasan laut terapung atau di lempengan beton beberapa mil dari landasan peluncurannya, bukan di atasnya.\r\n\r\nMendaur ulang pendorong Falcon telah mempercepat laju peluncuran dan menghemat jutaan dolar bagi SpaceX. Elon Musk bermaksud melakukan hal yang sama untuk Starship, roket terbesar dan terkuat yang pernah dibuat dengan 33 mesin berbahan bakar metana pada pendorongnya saja.\r\n\r\nKini, NASA telah memesan dua Starship untuk mendaratkan astronot di bulan akhir dekade ini. Selain itu, SpaceX juga ingin menggunakan Starship untuk mengirim orang dan perbekalan ke bulan dan, sampai pada akhirnya bisa ke Mars.', '2024-10-31 09:50:23', '2024-11-02 19:28:54');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(5, '2014_10_12_000000_create_users_table', 1),
(6, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(7, '2019_08_19_000000_create_failed_jobs_table', 1),
(8, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(9, '2024_10_31_161338_create_beritautama_table', 2),
(10, '2024_11_02_014136_create_beritapopuler_table', 3),
(11, '2024_11_02_064255_create_beritaterbaru_table', 4),
(12, '2024_11_02_105551_create_ulasan_table', 5);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ulasan`
--

CREATE TABLE `ulasan` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `ulasan` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ulasan`
--

INSERT INTO `ulasan` (`id`, `nama`, `email`, `ulasan`, `created_at`, `updated_at`) VALUES
(1, 'sarii', 'sekarsmopy23@gmail.com', 'bagus', '2024-11-02 09:24:19', '2024-11-02 09:24:19');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `userType` varchar(255) NOT NULL DEFAULT 'user',
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `userType`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'sarii', 'sekarsmopy23@gmail.com', NULL, '$2y$10$l4XQVTRR9KpWOc0/XhrrHevYQ22A8x008IbSzwojw0wQYm/M7ZxfO', 'user', NULL, '2024-10-29 21:12:55', '2024-11-02 09:53:35'),
(5, 'saya sari', 'saya12@gmail.com', NULL, '$2y$10$DDHjyRJkKcI2gu/5WkRijuKMYbpnnosYHWgpdV1qig9maq.5awYri', 'user', NULL, '2024-11-01 07:12:51', '2024-11-01 07:12:51'),
(6, 'admin1', 'adminwinni@gmail.com', NULL, '$2y$10$TP7/akGQ17.Pr29GpKQTJubHaEMDOknk2f4ZiPYY.AJECcDbIoUJy', 'admin', NULL, '2024-11-03 09:16:03', '2024-11-03 09:16:03');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `beritapopuler`
--
ALTER TABLE `beritapopuler`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `beritaterbaru`
--
ALTER TABLE `beritaterbaru`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `beritautama`
--
ALTER TABLE `beritautama`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `ulasan`
--
ALTER TABLE `ulasan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `beritapopuler`
--
ALTER TABLE `beritapopuler`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `beritaterbaru`
--
ALTER TABLE `beritaterbaru`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `beritautama`
--
ALTER TABLE `beritautama`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ulasan`
--
ALTER TABLE `ulasan`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
