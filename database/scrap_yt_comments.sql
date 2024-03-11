-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3309
-- Generation Time: Feb 19, 2024 at 01:21 PM
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
-- Database: `scrap_yt_comments`
--

-- --------------------------------------------------------

--
-- Table structure for table `datasets`
--

CREATE TABLE `datasets` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `keyunique` varchar(200) DEFAULT NULL,
  `type` enum('aspek','sentimen') NOT NULL,
  `source` varchar(200) NOT NULL,
  `title` text NOT NULL,
  `url` text DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `datasets`
--

INSERT INTO `datasets` (`id`, `keyunique`, `type`, `source`, `title`, `url`, `created_at`, `updated_at`) VALUES
(2, 'Fy9KKSpU66o', 'aspek', 'Youtubes', 'SIARAN PERDANA DI STUDIO RRI IKN', 'https://www.youtube.com/watch?v=Fy9KKSpU66o', '2024-02-19 15:45:23', '2024-02-19 17:01:19'),
(3, 'WZmSxspb2jE', 'aspek', 'Youtube', '\'Kita Indonesia Sesungguhnya\' Official Music Video', 'https://www.youtube.com/watch?v=WZmSxspb2jE', '2024-02-19 16:50:28', NULL),
(4, 'hoasa_absa-airy', 'sentimen', 'metatext.io', 'hoasa absa airy', 'https://metatext.io/datasets/hoasa-(indonlu)', '2024-02-19 17:15:18', '2024-02-19 17:22:35');

-- --------------------------------------------------------

--
-- Table structure for table `dataset_details`
--

CREATE TABLE `dataset_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `dataset_id` bigint(20) UNSIGNED NOT NULL,
  `content` text NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `dataset_details`
--

INSERT INTO `dataset_details` (`id`, `dataset_id`, `content`, `created_at`, `updated_at`) VALUES
(1, 2, 'Lembaran baru ibukota baru...pembaharuan semangat', '2024-02-19 15:45:25', NULL),
(2, 2, 'RRI stasiun Pusat IKN sudah on air di Ibukota Baru Indonesia. Tinggal Televisi Republik Indonesia TVRI di boyong ke Daerah Khusus Ibukota IKN NUsantara', '2024-02-19 15:45:25', NULL),
(3, 2, 'Selamat RRI Pro 3 IKN sudah mengudara semoga semakin jaya sekali diudara tetap diudara sekali merdeka tetap merdeka /salam mantan wartawan rri haryanto hadiprayitno', '2024-02-19 15:45:25', NULL),
(4, 2, 'Studio RRI IKN jelek, peralatan &amp; ruangan seperti radio komunitas. Duh malu2in 🙈', '2024-02-19 15:45:25', NULL),
(5, 2, 'Masih darurat...semoga tahun depan punya studio yg lebih bagus. Doakan ya😊', '2024-02-19 15:45:25', NULL),
(6, 2, 'Selamat RRI IKN (Ibu Kota Negara) Nusantara, jaya diudara selalu', '2024-02-19 15:45:25', NULL),
(7, 2, 'Mbak nya deg deg an gk ya ......PRESIDEN MASUK TV BIASA PRESIDEN MASUK RADIO ..pasti bisa di hitung jari', '2024-02-19 15:45:25', NULL),
(8, 2, '❤🇮🇩❤ Alhamdulillah. RRI Sekali di Udara tetap di Udara. ❤🇮🇩❤ IKN Nusantara Maju.', '2024-02-19 15:45:25', NULL),
(9, 2, 'Frekuensinya berhimpitan dengan RRI PRO4 Samarinda', '2024-02-19 15:45:25', NULL),
(10, 2, 'Bujur kah❤❤', '2024-02-19 15:45:25', NULL),
(11, 2, 'Semangat terus RRI, semoga semakin jaya di udara, sekali merdeka tetap meredeka, sekali di udara tetap di udara', '2024-02-19 15:45:25', NULL),
(12, 2, 'Abadi dihati jaya di udara bravo RRI ,dan selamat untuk siaran perdana RRI IKN', '2024-02-19 15:45:25', NULL),
(13, 2, 'Ditunggu TVRI dan stasiun swasta lainnya di IKN', '2024-02-19 15:45:25', NULL),
(14, 2, 'RRI IKN turut mengawal pembangunan ibu kota baru. Terima kasih pak presiden ❤❤', '2024-02-19 15:45:25', NULL),
(15, 2, 'Mantap sekali &quot; I K N &quot;. Ibu Kota Nusantara tercinta.', '2024-02-19 15:45:25', NULL),
(16, 2, 'Mengagumkan RRI sudah mengudara dari IKN. Selamat ya untuk peristiwa bersejarah ini. 50 tahun yang akan datang, video ini akan menjadi sumber primer sejarah yang mengagumkan.', '2024-02-19 15:45:25', NULL),
(17, 2, 'ikn maju teruus', '2024-02-19 15:45:25', NULL),
(18, 2, 'Wah jd engen ke IKN niiih 😊😊😊', '2024-02-19 15:45:25', NULL),
(19, 2, 'Sekali di udara tetap di udara! Bangga', '2024-02-19 15:45:25', NULL),
(20, 2, 'Rri kami bangga', '2024-02-19 15:45:25', NULL),
(21, 2, 'Kerennn poll❤😊🎉', '2024-02-19 15:45:25', NULL),
(22, 2, 'Sekali di Udara<br>Se di udara tetap di udara', '2024-02-19 15:45:25', NULL),
(23, 2, 'RADIO PERTAMA DI IKN MANTAAPPPP', '2024-02-19 15:45:25', NULL),
(24, 2, 'Banggaaa....RRI sudah ada di IKN...terus mengudara untuk  Indonesia❤', '2024-02-19 15:45:25', NULL),
(25, 2, 'Salam diudara..', '2024-02-19 15:45:25', NULL),
(26, 2, 'Sekali di udara tetap di udara...Hidup RRI IKN', '2024-02-19 15:45:25', NULL),
(27, 2, '🎉🎉🎉🎉<br>Sukses RRI IKN❤', '2024-02-19 15:45:25', NULL),
(28, 2, 'KELAZZ', '2024-02-19 15:45:25', NULL),
(29, 2, 'Buat pro3 RRI..MOGA JAYAKE SEMUAPLOSOK NEGRI..SABANG..SAMPAI.MEROKE PAPUA.SUKSES RRI.JAYA TERUS❤', '2024-02-19 15:45:25', NULL),
(30, 2, 'Majulah Indonesiaku', '2024-02-19 15:45:25', NULL),
(31, 2, 'keren sihh ❤😊', '2024-02-19 15:45:25', NULL),
(32, 2, 'Mantap..sukses  tambahlancar❤ikn..mogatambah maju.', '2024-02-19 15:45:25', NULL),
(33, 2, 'Pokoknya IKN mantap.', '2024-02-19 15:45:25', NULL),
(35, 3, 'Akhirnya tau judulnya.. Mo nyariin tapi lupa liriknya.. Tanggal 14 Februari 2024', '2024-02-19 16:50:32', NULL),
(36, 3, 'Woow rri keren banget sich  skrng nda  sprti dl ssh d jamkw siaranx apalagi skrng waoow makin kereen donk penyiarx  makin seruuuuu asiiiik.<br>Yg', '2024-02-19 16:50:32', NULL),
(37, 3, 'RRI keren ❤❤❤', '2024-02-19 16:50:32', NULL),
(38, 3, 'Lagunya bagus banget, catchy<br>Sy kesini gara&quot; dengerin Pro 1&amp;2 RRI yang diputer saat pergantian jam, trs nyari ketik lirik di Youtube eh trnyta yang nyanyi finalis Bintang Radio 2023<br>Keren banget harusnya yang kyk gini viral tp kurang promosi', '2024-02-19 16:50:32', NULL),
(39, 3, 'DARI SERUI SAYA FFAFOIT BEE RT ITA DSN LAGU LAGU PULPEN SALAM ANAK TABI JAYAPURA PAPUA', '2024-02-19 16:50:32', NULL),
(40, 3, 'Videonya bening banget, lagunya bagus... terima kasih RRI.', '2024-02-19 16:50:32', NULL),
(41, 3, '<a href=\"https://www.youtube.com/watch?v=RAJYSWq5PUo\">https://youtu.be/RAJYSWq5PUo?si=TxgGvx-x-wmdrD6o</a>', '2024-02-19 16:50:32', NULL),
(42, 3, 'kerennn', '2024-02-19 16:50:32', NULL),
(43, 3, 'Sekali di Udara Tetap di Udara🥳', '2024-02-19 16:50:32', NULL),
(44, 3, 'God bless Indonesia. 🇮🇩', '2024-02-19 16:50:32', NULL),
(45, 3, 'Masa sih?. Indonesia di era millenium ini jadi horor n teror buat yg gak sealiran. Jadi gak usahlah terus berkamuflase seakan Indonesia masih baik-baik aja. Pret', '2024-02-19 16:50:32', NULL),
(46, 3, 'RRI udah sekeren ini?', '2024-02-19 16:50:32', NULL),
(47, 3, 'Radio resmi paralimpiade musim dingin 2026 🇮🇩⛷️🎿🇮🇹', '2024-02-19 16:50:32', NULL),
(48, 3, 'Bagus bangt lagu dan aransemen musik nya… MV nya jg amazing… 👏🏻👏🏻👏🏻', '2024-02-19 16:50:32', NULL),
(49, 3, 'Keren banget ❤', '2024-02-19 16:50:32', NULL),
(50, 3, 'Spektrum❤😊', '2024-02-19 16:50:32', NULL),
(51, 3, 'Awesome👌RRI 👍👍👍', '2024-02-19 16:50:32', NULL),
(52, 3, '❤❤❤', '2024-02-19 16:50:32', NULL),
(53, 3, 'Aku, Kau, Kita Indonesia', '2024-02-19 16:50:32', NULL),
(54, 3, 'Doakan yg terbaik untuk Indonesia tercinta kita. 🙏 💕 🇮🇩', '2024-02-19 16:50:32', NULL),
(55, 3, '@@berjuang_demi_kebajikan5445 Inn Syaa Allah. Oke siap. Aamiin Amin. NKRI HARGA MATI', '2024-02-19 16:50:32', NULL),
(56, 3, 'Mantab kali bahhh , RRI makin keren', '2024-02-19 16:50:32', NULL),
(57, 3, 'Mantap 🎉', '2024-02-19 16:50:32', NULL),
(58, 3, 'RRI Keren 👍👍👍', '2024-02-19 16:50:33', NULL),
(59, 3, 'Yang saya sukai dari konten ini adalah RRI memberikan unsur keragaman ras, suku, dan budaya yang selalu membuat saya selalu kagum terhadap keragaman tersebut.', '2024-02-19 16:50:33', NULL),
(60, 3, 'Very cool the song❤❤🎉🎉', '2024-02-19 16:50:33', NULL),
(61, 3, 'Merinding lihatnyaa❤ bagus banget😊 yang begini yang harusnya di kembangkan, ❤', '2024-02-19 16:50:33', NULL),
(62, 3, 'Keren banget, harusnya yang begini yang harus terus di kembangkan😊🎉', '2024-02-19 16:50:33', NULL),
(63, 3, 'Kerreenn RRI...', '2024-02-19 16:50:33', NULL),
(64, 3, 'Keren banget kakak kakaknyaaaa 🎉🎉🎉🎉🎉', '2024-02-19 16:50:33', NULL),
(65, 3, 'Wahh kerennn bgttt❤', '2024-02-19 16:50:33', NULL),
(66, 3, 'Mantap 👍👍👍👍👍👍👍👍👍👍', '2024-02-19 16:50:33', NULL),
(67, 3, 'RRI...Indonesia Sesungguhnya....jangan berhenti di kamu...yuk di share...Di like dan komen...', '2024-02-19 16:50:33', NULL),
(68, 3, 'Kereeeen Videonya ..,.ada artis Bali di sana....Bli Made  Suwena...❤', '2024-02-19 16:50:33', NULL),
(69, 3, 'tvrri', '2024-02-19 16:50:33', NULL),
(70, 3, 'Keren lagu &amp; mv nya 😊👍🧡', '2024-02-19 16:50:33', NULL),
(71, 3, 'Gacoorrr bangga bgtt', '2024-02-19 16:50:33', NULL),
(72, 3, 'Bangga bgt jekii', '2024-02-19 16:50:33', NULL),
(73, 3, 'Mantap kren❤️❤️❤️❤️❤️❤️❤️❤️', '2024-02-19 16:50:33', NULL),
(74, 3, 'Oke👍👍👍👍👍', '2024-02-19 16:50:33', NULL),
(75, 3, 'Keren', '2024-02-19 16:50:33', NULL),
(76, 3, 'Bagus bgt, good job 🎉', '2024-02-19 16:50:33', NULL),
(77, 3, 'Kerennnnnn', '2024-02-19 16:50:33', NULL),
(78, 3, '❤❤❤❤❤❤❤❤ Kita Indonesia Sesungguhnya..... TOP❤❤❤❤', '2024-02-19 16:50:33', NULL),
(79, 3, 'Merinding lihatnya... 🥹 ... kereeennn....', '2024-02-19 16:50:33', NULL),
(80, 3, 'Keren bgt winner radio star!!🤩', '2024-02-19 16:50:33', NULL),
(81, 3, 'Baguusss🎉🎉', '2024-02-19 16:50:33', NULL),
(82, 3, 'Terbaik manokwari👍👍👍👍👍', '2024-02-19 16:50:33', NULL),
(83, 3, 'Andalan manokwari👍👍👍👍👍', '2024-02-19 16:50:33', NULL),
(84, 3, 'Kita Indonesia ❤🎉', '2024-02-19 16:50:33', NULL),
(85, 3, 'Kereeen❤❤❤ bangga bgt 🎉❤', '2024-02-19 16:50:33', NULL),
(86, 3, '❤️❤️❤️', '2024-02-19 16:50:33', NULL),
(87, 3, 'Mantap', '2024-02-19 16:50:33', NULL),
(88, 3, 'kereeen 🎉', '2024-02-19 16:50:33', NULL),
(89, 3, 'Wauooo artis radio star❤❤❤', '2024-02-19 16:50:33', NULL),
(90, 3, 'Mantaaaap', '2024-02-19 16:50:33', NULL),
(91, 3, 'rri sekali diudara tetap diudara', '2024-02-19 16:50:33', NULL),
(92, 3, 'Keren,,, 👍👍👍', '2024-02-19 16:50:33', NULL),
(93, 3, 'Manteup poll🤩', '2024-02-19 16:50:33', NULL),
(94, 3, 'Radio stars untuk INDONESIA ☕', '2024-02-19 16:50:33', NULL),
(95, 3, 'Artis Radio Star kereeeeeeenn❤❤❤', '2024-02-19 16:50:33', NULL),
(96, 3, 'Amazing🎉🎉, 😻😻', '2024-02-19 16:50:33', NULL),
(97, 3, 'TERBAIKKKKKK 🤩🤩🤩🤩', '2024-02-19 16:50:33', NULL),
(98, 3, 'So proud of you gaesss', '2024-02-19 16:50:33', NULL),
(99, 3, 'Merinding', '2024-02-19 16:50:33', NULL),
(100, 3, '❤❤❤', '2024-02-19 16:50:33', NULL),
(101, 3, 'Keren banget! Merinding...', '2024-02-19 16:50:33', NULL),
(102, 3, 'Kerennnn🎉', '2024-02-19 16:50:33', NULL),
(103, 3, '❤❤❤❤', '2024-02-19 16:50:33', NULL),
(104, 3, 'Maria Sinaga keren sekali ito', '2024-02-19 16:50:33', NULL),
(105, 3, 'Maria ❤❤', '2024-02-19 16:50:33', NULL),
(106, 3, 'keren 💗', '2024-02-19 16:50:33', NULL),
(107, 3, 'ss', '2024-02-19 17:09:23', NULL),
(111, 4, 'review,ac,air_panas,bau,general,kebersihan,linen,service,sunrise_meal,tv,wifi', '2024-02-19 19:19:59', NULL),
(112, 4, 'lumayan nyaman,tp kebersihan kmr mandi perlu ditingkatkan lg biar gk ada kuning2 di sudutnya lbh bgs,neut,neut,neut,neut,neg,neut,neut,neut,neut,neut', '2024-02-19 19:19:59', NULL),
(113, 4, 'kamarnya kurang maintenance. paling baik kamar mandi dibersihkan lebih sering. kamar mandi adalah bagian yang penting untuk pelanggan. kebersihan selimut bed sheet dan handuk juga perlu diperhatikan lebih jauh lagi.,neut,neut,neut,neut,neg,neg,neut,neut,neut,neut', '2024-02-19 19:19:59', NULL),
(114, 4, 'harga terjangkau, kamar luas, ada sofa, semua oke, kecuali kamar mandi. seharian keluar bau tak sedap entah apa masalahnya. ,neut,neut,neg,pos,neut,neut,neut,neut,neut,neut', '2024-02-19 19:19:59', NULL),
(115, 4, 'Jaringan WiFi dalam kamar lelet,neut,neut,neut,neut,neut,neut,neut,neut,neut,neg', '2024-02-19 19:19:59', NULL),
(116, 4, 'secara umum bagus, cuma sprei, sarung bantal dan handuk tidak layak...maaf..,neut,neut,neut,pos,neut,neg,neut,neut,neut,neut', '2024-02-19 19:19:59', NULL),
(117, 4, 'Kamar bersih dan nyaman tetapi amenties dari airy tidak disediakan. Begitu juga dengan compliment free snack dari airy,neut,neut,neut,neut,pos,neg,neut,neut,neut,neut', '2024-02-19 19:19:59', NULL),
(118, 4, 'suasana .. and view-nya..kerennnnn... pegawainya ramahh... datang langsung check in... dan diantar ke kamar... untuk fasilitas buat anak2 lumayan... ada perosotan ayunan dan mainan lainnya.. kolam renang juga.. tp kolamnya Dingin... dan kurang bersih.. mohon ditingkatkan jg utk kebersihan kamar nya. thanks airy .. thank ariandri...sukses selalu..,neut,neut,neut,neut,neg,neut,pos,neut,neut,neut', '2024-02-19 19:19:59', NULL),
(119, 4, 'WiFi nya tolong diperkuat sinyal dan ditambah bandwithnya,neut,neut,neut,neut,neut,neut,neut,neut,neut,neg', '2024-02-19 19:19:59', NULL),
(120, 4, 'plus: lokasi tenang, strategis, rate ekonomis. minus: kebersihan kurang, kamar bau, kran bulukan. ,neut,neut,neg,neut,neg,neut,neut,neut,neut,neut', '2024-02-19 19:19:59', NULL),
(121, 4, 'kamar luas dan rapi, tapi sayang untuk tv kebetulan sedang jelek sinyalnya dan minta ganti ke kamar yg lain yg memiliki sinyal bagus tidak di perbolehkan karena pesan dari airy rooms dan tidak tersedia wifi,neut,neut,neut,neut,neut,neut,neut,neut,neg,neg', '2024-02-19 19:19:59', NULL),
(122, 4, 'pelayanan baik. fasilitas baik. cuma ac kurang dingin.,neg,neut,neut,neut,neut,neut,pos,neut,neut,neut', '2024-02-19 19:19:59', NULL),
(123, 4, 'Pelayanan kurang ramah dan cuek ,swower ga berpungsih dg baik kamar mandi licin dan hampir mau jatuh trus,neut,neut,neut,neut,neg,neut,neg,neut,neut,neut', '2024-02-19 19:19:59', NULL),
(124, 4, 'Kamar mandi pintu rusak. Handuk gak ada kalau gak di pinta.tv nya gak nyala.pelayanannya kurang. ,neut,neut,neut,neut,neut,neg,neg,neut,neg,neut', '2024-02-19 19:19:59', NULL),
(125, 4, 'tidak ada hotshower. tdk sesuai foto. ,neut,neg,neut,neut,neut,neut,neut,neut,neut,neut', '2024-02-19 19:19:59', NULL),
(126, 4, 'tv gk jelas gambarnya, suasana berisik di depan kamar. kamar mandi kurang bersih,neut,neut,neut,neut,neg,neut,neut,neut,neg,neut', '2024-02-19 19:19:59', NULL),
(127, 4, 'AC ga dingin, ga bs change kamar pula dan parkiran sempit hnya cukup 5 motor.  Cukup sekali kesini deh,neg,neut,neut,neut,neut,neut,neut,neut,neut,neut', '2024-02-19 19:19:59', NULL),
(128, 4, 'Baiknya cuman dekat dengan perbelanjaan cihampelas. Kamarnya lembab, cat nya udah lapuk, agak berdebu, seprainya kurang bersih dan tanpa logo airy rooms, debit air nya kecil(kurang puas mandinya), tidak ada remote AC (jd minta petugas buat atur suhu.,neg,neut,neut,neut,neg,neg,neut,neut,neut,neut', '2024-02-19 19:19:59', NULL),
(129, 4, 'Secara keseluruhan baik, tapi sedikit catatan untuk kamar mandinya bau, banyak semacam lalet kecil, gak ada air panas. ,neut,neg,neg,pos,neut,neut,neut,neut,neut,neut', '2024-02-19 19:19:59', NULL),
(130, 4, 'Perlengkapan mandinya lengkap dan ac nya dingin. Hanya saja koneksi internet kurang bagus.,pos,neut,neut,neut,neut,pos,neut,neut,neut,neg', '2024-02-19 19:19:59', NULL),
(131, 4, 'fasilitas memuaskan.. kurang bersih kamarnya koridor dan lift nya,neut,neut,neut,neut,neg,neut,neut,neut,neut,neut', '2024-02-19 19:19:59', NULL),
(132, 4, 'Saya sudah merasa tidak nyaman tidur di sjnj semenjak air belum nyala selama hampir dua hari. Di hari kedua, air baru menyala. Ketika kami menanyakan kondisi air, seharusnya bellboy memberikan solusi dengan ramah, bukan dengan merengut. Freon AC di kamar kami bocor sampai menumpahi lantai kamar kami. Masalah listrik, korslet bila AC & air hidup.,neg,neut,neut,neut,neut,neut,neg,neut,neut,neut', '2024-02-19 19:19:59', NULL),
(133, 4, 'Wifinya susah,neut,neut,neut,neut,neut,neut,neut,neut,neut,neg', '2024-02-19 19:19:59', NULL),
(134, 4, 'tidak sesuai dgn gambar..kamar Kotor Dan bau..banyak puntung bekas rokok Dan kecoa dikamar..tidak re,neut,neut,neg,neut,neg,neut,neut,neut,neut,neut', '2024-02-19 19:19:59', NULL),
(135, 4, 'lokasi masuk gank jauh ac tidak dingin tp ada kolam renang dan dapat breakfast,neg,neut,neut,neut,neut,neut,neut,pos,neut,neut', '2024-02-19 19:19:59', NULL),
(136, 4, 'Kondisi kamar standar banget... Saya sering menggunakan Airy Rooms... Tapi kali ini yang paling tidak nyaman... 1. AC kurang dingin 2. Tidak ada snack 3. Heater Water tidak berfungsi 4. Kamar biasa saja Not recomended sih, kalau menurut saya...,neg,neg,neut,neut,neut,neg,neut,neut,neut,neut', '2024-02-19 19:19:59', NULL),
(137, 4, 'Bersih, rapi dan nyaman. Tetapi wifi ter suspended. ,neut,neut,neut,neut,pos,neut,neut,neut,neut,neg', '2024-02-19 19:19:59', NULL),
(138, 4, 'Seprei ada bekas noda, tv tidak berfungsi dengan baik, air shower kecil,neut,neut,neut,neut,neut,neg,neut,neut,neg,neut', '2024-02-19 19:19:59', NULL),
(139, 4, 'wifi y palsu. air panas y rusak.,neut,neg,neut,neut,neut,neut,neut,neut,neut,neg', '2024-02-19 19:19:59', NULL),
(140, 4, 'Fasilitas lengkap, cuman spreynya terasa gatal dan banyak nyamuk.,neut,neut,neut,neut,neut,neg,neut,neut,neut,neut', '2024-02-19 19:19:59', NULL),
(141, 4, 'lumayan untuk harga segitu...kabersihan tolong ditingkatkan,neut,neut,neut,neut,neg,neut,neut,neut,neut,neut', '2024-02-19 19:19:59', NULL),
(142, 4, 'Lokasinya sangat bagus, breakfast tidak banyak pilihan tapi rasanya masih enak. Kamarnya cukup luas, hanya saja WiFi tidak bisa dipakai di kamar, Hanya di restoran. Kolam renang kecil banget, bangunan sudah butuh renovasi tapi cukup bersih.,neut,neut,neut,neut,pos,neut,neut,pos,neut,neg', '2024-02-19 19:19:59', NULL),
(143, 4, 'Pelayanan ramah.lokasi bagus.kamar mandi tidak ada air panas. kamar kurang bersih.makasih.,neut,neg,neut,neut,neg,neut,pos,neut,neut,neut', '2024-02-19 19:19:59', NULL),
(144, 4, 'kamar nya bagus, tp tdk ada room service nya.. cuma jgn khawatir karna depan hotel banyak banget yang jual makanan ,neut,neut,neut,neut,neut,neut,neg,neut,neut,neut', '2024-02-19 19:19:59', NULL),
(145, 4, 'Kamar nyaman. AC dingin. Kamar mandi kapsul yang saya kurang nyaman. Tidak ada toiletries dan airyrooms compliment snack di room.,pos,neut,neut,neut,neut,neg,neut,neut,neut,neut', '2024-02-19 19:19:59', NULL),
(146, 4, 'Cukup nyaman dan bersih, hanya perlu diperhatikan kadang-kadang ada nyamuk nya,neut,neut,neut,neut,pos,neut,neut,neut,neut,neut', '2024-02-19 19:19:59', NULL),
(147, 4, 'kamar besar.. air hangat ada fasilitasnya tapi tidak berfungsi.. sandal harus diminta.. tidak tersedia di dalam kamar .. ,neut,neg,neut,neut,neut,neg,neut,neut,neut,neut', '2024-02-19 19:19:59', NULL),
(148, 4, 'Lantai kamar mandi kamar saya agak licin, mohon dibersihkan dengan baik. Overall semua sangat baik. terima kasih ðŸ˜†,neut,neut,neut,pos,neg,neut,neut,neut,neut,neut', '2024-02-19 19:19:59', NULL),
(149, 4, 'penjaga yg kurang rama,neut,neut,neut,neut,neut,neut,neg,neut,neut,neut', '2024-02-19 19:19:59', NULL),
(150, 4, 'ac tidak dingin, airnya kecil. seharusnya sebelum ada yang booking diperiksa dl,neg,neut,neut,neut,neut,neut,neut,neut,neut,neut', '2024-02-19 19:19:59', NULL),
(151, 4, 'ok. cuma kamar mandi agak bau dan sarapan kurang sedap.,neut,neut,neg,neut,neut,neut,neut,neg,neut,neut', '2024-02-19 19:19:59', NULL),
(152, 4, 'Cukup nyaman,  tapi di lantai tiga gak ada wifi. Wifinya tidak menjangkau kamar,neut,neut,neut,neut,neut,neut,neut,neut,neut,neg', '2024-02-19 19:19:59', NULL),
(153, 4, 'biasa aja, kamar kurang bersih,neut,neut,neut,neut,neg,neut,neut,neut,neut,neut', '2024-02-19 19:19:59', NULL),
(154, 4, 'ruangan + kamar mandi bersih, luas, nyaman, hanya saja TV sedang tidak berfungsi,neut,neut,neut,neut,pos,neut,neut,neut,neg,neut', '2024-02-19 19:19:59', NULL),
(155, 4, 'parah... pesan 2 kamar, 1 kamarnya tidak ada perlengkapan airy belum di siapkan, karena tidak terdetect kalau pesan 2 kamar... kamar bau apek... not recomended lah,neut,neut,neg,neut,neut,neg,neg,neut,neut,neut', '2024-02-19 19:19:59', NULL),
(156, 4, 'Mengecewakan. Tidak sesuai dengan foto yang diposting. Kamar mandi bad smell. Air muncrat sampai keluar kamar mandi saat mandi. Receptionist tidak ada saat mau check-out sehingga harus menunggu lama. Hari berikutnya cari hotel yang lain yang lebih baik.,neut,neut,neg,neut,neut,neut,neg,neut,neut,neut', '2024-02-19 19:19:59', NULL),
(157, 4, 'hotelnya bagus, makanan cukup, wifi kurang merata,neut,neut,neut,neut,neut,neut,neut,pos,neut,neg', '2024-02-19 19:19:59', NULL),
(158, 4, 'Sangat berisik dari tamu sebelah, aku request double tp dapat twin. Tv sangat kecil dgn jarak yg jauh untuk menonton. Masih ragu apakah ini hotel atau sebuah kost kostan ya.. ,neut,neut,neut,neut,neut,neut,neut,neut,neg,neut', '2024-02-19 19:19:59', NULL),
(159, 4, 'sangat menyenangkan dan memuaskan... Namun saat check in jam 14.00, masih harus menunggu selama 20 menit, mohon diperbaiki..,neut,neut,neut,neut,neut,neut,neg,neut,neut,neut', '2024-02-19 19:19:59', NULL),
(160, 4, 'Sprey kurang bersih..tolong diperhatikan lagi Sama perlengkapan mndi disiapkan sebelum cek in,neut,neut,neut,neut,neut,neg,neut,neut,neut,neut', '2024-02-19 19:19:59', NULL),
(161, 4, 'Bagus, cuma kalau malem pintu udah kekunci jadi harus bangunin orangnya,neut,neut,neut,neut,neut,neut,neg,neut,neut,neut', '2024-02-19 19:19:59', NULL),
(162, 4, 'saya menginap di kamar 117, reviewnya: 1. bantal keras 2. biasanya dikasih bantal airy, tapi ini ga ada. dikasih dua bantal tambahan sih tapi ga dikasih sarung bantalnya 3. ga ada thermos untuk bikin air panas 4. shower bocor 5. remote tv tidak berfungsi 6. kenop pintu kamar mandi macet, jd ga bisa ditutup rapat 7. kamar hanya satu kali dibersihkan,neut,neut,neut,neut,neut,neg,neg,neut,neg,neut', '2024-02-19 19:19:59', NULL),
(163, 4, 'Kamarnya kotor, bau, kasurnya banyak kutu.,neut,neut,neg,neut,neg,neut,neut,neut,neut,neut', '2024-02-19 19:19:59', NULL),
(164, 4, 'wifi kenceng, kamar luas, ac bagus, tp kamar mandi agak kotor, makanannya enak dan harga terjangkau, tempat makan juga banyak sekitar hotel ,akses kemana -mana sekitar kota dekat,thanks airyroomðŸ‘,pos,neut,neut,neut,neg,neut,neut,pos,neut,pos', '2024-02-19 19:19:59', NULL),
(165, 4, 'Lokasinya Kos Kosan.... Tempat Kotor... Gak Ada Air Panas Untuk Mandi... Ruangan Kotor Dan Banyak Sampah... Not Recomended Banget... Untungnya Disana Kamar Full Karena Ada Kesalahan Sistem... Terima Kasih Buat Airy Dipindahkan Ke Airy Slipi... Walaupun Lokasi Hotel Agak Jauh Dari Urusan Bisnis Namun Hotelnya Bersih Dan Nyaman...,neut,neg,neut,neut,neg,neut,neut,neut,neut,neut', '2024-02-19 19:19:59', NULL),
(166, 4, 'toilet kurabg bersih,tempat sampah kotor,perlengkapan mandi tidak ada,malahan ada sabun batangan bekas,neut,neut,neut,neut,neg,neg,neut,neut,neut,neut', '2024-02-19 19:19:59', NULL),
(167, 4, 'tempat memang tidak strategis. bangunannya pun sudah usang dan tidak terurus karena hotelnya sangat sepi. beberapa fasilitas hotel pun ada yang rusak, contohnya ac, shower, kasur, kunci lemari. Walaupun yang menginap sedikit, tapi tetap saja di buatkan sarapan. yaa sesuai lah sama budget kita. overall hotelnya lumayan bagus kok. terima kasih~,neg,neut,neut,pos,neg,neut,neut,neg,neut,neut', '2024-02-19 19:19:59', NULL),
(168, 4, 'nyaman sich tp toilet kurang bersih aja.... ,neut,neut,neut,neut,neg,neut,neut,neut,neut,neut', '2024-02-19 19:19:59', NULL),
(169, 4, 'awalnya sudah merasa tidak nyaman karena lantai kamar agak berdebu. setelah masuk, cek handuk & keset serta tempat sampah tidak disediakan, sambungan colokan tv ke stop kontak jg tidak ada. setelah minta pihak hotel dg cepat merespon. giliran mandi pagi, air di kamar mandi sama sekali tidak keluar, ditunggu satu jam jg tidak keluar jg. kecewa skali,neut,neut,neut,neut,neg,neg,neut,neut,neut,neut', '2024-02-19 19:19:59', NULL),
(170, 4, 'untuk keseluruhan sudah bagus,masalahnya hanya ada pada Air panas yg tidak berfungsi dengan baik ,neut,neg,neut,pos,neut,neut,neut,neut,neut,neut', '2024-02-19 19:19:59', NULL),
(171, 4, '4 hari inap tanpa snack, padahal standar nya airy selalu ada snack. handuk di hari 3 gak kebagian. kalo soal kebersihan gak ada masalah. cuma fasilitas nya aja yg kurang bisa dipenuhi.,neut,neut,neut,neut,pos,neg,neut,neut,neut,neut', '2024-02-19 19:19:59', NULL),
(172, 4, 'semua oke... cuma tv hilang gambarnya,neut,neut,neut,pos,neut,neut,neut,neut,neg,neut', '2024-02-19 19:19:59', NULL),
(173, 4, 'Sprei kusam kayak ga dicuci berbulan bulan.. kasur juga tdk bersih. Channel nya kurang bagus.. pelayanan lumayan baik.,neut,neut,neut,neut,neg,neg,pos,neut,neg,neut', '2024-02-19 19:19:59', NULL),
(174, 4, 'Biasa di airy ada makanan ringan sekarang tidak ada,neut,neut,neut,neut,neut,neg,neut,neut,neut,neut', '2024-02-19 19:19:59', NULL),
(175, 4, 'Bantal sma tempat tidurnya basah, lantainya pun masih basah, ac nya tidak dingin ,neg,neut,neut,neut,neut,neg,neut,neut,neut,neut', '2024-02-19 19:19:59', NULL),
(176, 4, 'Kamar luas, bersih, dan nyaman. Ada air panas. Minus TV tidak ada siaran.,neut,pos,neut,neut,pos,neut,neut,neut,neg,neut', '2024-02-19 19:19:59', NULL),
(177, 4, 'mantav, ruangan bersih, ac dingin...cm kgak ada air panas..,pos,neg,neut,neut,pos,neut,neut,neut,neut,neut', '2024-02-19 19:19:59', NULL),
(178, 4, 'Not recommended, kamar lembab pengap, kamar mandi kotor, shower rusak, mati lampu tdk ada genset, staff kurang ramah,neut,neut,neg,neut,neg,neut,neg,neut,neut,neut', '2024-02-19 19:19:59', NULL),
(179, 4, 'kecewa sangat sangat kecewa.. kamarnya sangat kotor, bau kamar mandi sampai keluar, sprei bau badan, pdhl baru msuk kamar 3 jam.. sudah lapor ke service tp bilang tdk ad kamar lain dan tdk ad itikad untuk bersihkan kamar.. booking 2 hari terpaksa cek out saat itu jg dan tdk ad ganti rugi... baru kali ini dapat airy yg sangat2 mengecewakan... ,neut,neut,neut,neut,neg,neg,neg,neut,neut,neut', '2024-02-19 19:19:59', NULL),
(180, 4, 'wifi tidak sampai kamar, tidak tersedia heater untuk kopi/teh atau dispenser dan tidak tersedia kursi di depan kamar untuk merokok hingga harus duduk di lantai,neut,neut,neut,neut,neut,neg,neut,neut,neut,neg', '2024-02-19 19:19:59', NULL),
(181, 4, 'Overall nyaman, Sayangnya kurang bersih sarung bantalnya masih ada rambut-rambut rontok yang tempel dan ada Bercak kotor, tidak tahu sarung bantal diganti apa tidak ini dari bekas penghuni sebelumnya.,neut,neut,neut,pos,neg,neg,neut,neut,neut,neut', '2024-02-19 19:19:59', NULL),
(182, 4, 'KEKURANGAN DR HTL AIRY TAMAN MULIA : KMR MANDI KOTOR N BBRP PINTU KMR-MANDI TDK BISA DIKUNCI ALIAS R,neut,neut,neut,neut,neg,neut,neut,neut,neut,neut', '2024-02-19 19:19:59', NULL),
(183, 4, 'Ada beberapa room yang Acnya tidak dingin,neg,neut,neut,neut,neut,neut,neut,neut,neut,neut', '2024-02-19 19:19:59', NULL),
(184, 4, 'Kamar mandi kurang bersih, kamar tidak terlalu nyaman,neut,neut,neut,neut,neg,neut,neut,neut,neut,neut', '2024-02-19 19:19:59', NULL),
(185, 4, 'kamar tidak sesuai yg di gambar... ternyata di ruang bawah tanah.. sinyal tidak ada.. parkir kehujan,neut,neut,neut,neut,neut,neut,neut,neut,neut,neg', '2024-02-19 19:19:59', NULL),
(186, 4, 'Kamar mandi kurang bersih, ac ga dingin,neg,neut,neut,neut,neg,neut,neut,neut,neut,neut', '2024-02-19 19:19:59', NULL),
(187, 4, 'untuk pelayanan dan kenyamanan oke, cuma lantai di kamarnya agak sedikit kotor seperti tidak di pel,neut,neut,neut,pos,neg,neut,pos,neut,neut,neut', '2024-02-19 19:19:59', NULL),
(188, 4, 'luas bgt..tp air panesnya jengkelin,neut,neg,neut,neut,neut,neut,neut,neut,neut,neut', '2024-02-19 19:19:59', NULL),
(189, 4, 'tidak rekomendasi servis kurang baik.. ga punya etika.. kalau saya niat ga baik pasti nyelundup ini terang2 an.. biasany kan wkt check out baru ditotal misal kena charge.. lha ini malem2 langsung minta dipintu . di kamarnya tidak ada kaca.. ,neut,neut,neut,neut,neut,neut,neg,neut,neut,neut', '2024-02-19 19:19:59', NULL),
(190, 4, 'tempat nya nyaman bersih. cuma AC nya kurang dingin,neg,neut,neut,neut,pos,neut,neut,neut,neut,neut', '2024-02-19 19:19:59', NULL),
(191, 4, '1. Dalam kamar ada bbrp nyamuk. 2. Gantungan dlm kmr ada 2 yg patah (saat masuk kmr sdh patah..namun tdk d perbaiki/diganti). 3. Air panas tdk berfungsi. 4. Stop kontak deket wastafel terlalu tinggi, utk nge charge hp sngt tdk nyaman..krn kabel gak sampai,,neut,neg,neut,neut,neut,neg,neut,neut,neut,neut', '2024-02-19 19:19:59', NULL),
(192, 4, 'Hotel yang bersahabat dengan NYAMUK, makanan selalu HABIS,neut,neut,neut,neut,neg,neut,neut,neg,neut,neut', '2024-02-19 19:20:00', NULL),
(193, 4, 'Perlu ditingkatkan kebersihan kamar dan kamar mandi,petugas ramah pelayanan memuaskan.,neut,neut,neut,neut,neg,neut,pos,neut,neut,neut', '2024-02-19 19:20:00', NULL),
(194, 4, 'bersih dan tempatnya bagus tapi pelayanannya kurang baik,neut,neut,neut,neut,pos,neut,neg,neut,neut,neut', '2024-02-19 19:20:00', NULL),
(195, 4, 'Cukup bersih meski tanpa sarapan. Wifi & TV perlu pembenahan krn tdk jalan,neut,neut,neut,neut,pos,neut,neut,neg,neg,neg', '2024-02-19 19:20:00', NULL),
(196, 4, 'Pelayanan cukup baik. Tpi.  Toilet kurang di perhatikan bagian air panas. Kamar 339,neut,neg,neut,neut,neut,neut,pos,neut,neut,neut', '2024-02-19 19:20:00', NULL),
(197, 4, 'bersih, nyaman. cuma bantal kecil nya bau. ,neut,neut,neut,neut,pos,neg,neut,neut,neut,neut', '2024-02-19 19:20:00', NULL),
(198, 4, 'Staffnya ramah, tempatnya bersih cuma air hangatnya g nyala,neut,neg,neut,neut,pos,neut,pos,neut,neut,neut', '2024-02-19 19:20:00', NULL),
(199, 4, 'Good....cuma menu sarapan kurang nyaman,neut,neut,neut,neut,neut,neut,neut,neg,neut,neut', '2024-02-19 19:20:00', NULL),
(200, 4, 'Wifi bermasalah & showernya ada bag. yg bocor, selebihnya bagus... ðŸ™‚,neut,neut,neut,pos,neut,neut,neut,neut,neut,neg', '2024-02-19 19:20:00', NULL),
(201, 4, 'AC tidak dingin sama sekali sampai saya akhirnya mutusin buat check-out. kasurnya banyak sekali pasir dan ngeres buat tidur. airnya bau seperti air payau.,neg,neut,neg,neut,neg,neut,neut,neut,neut,neut', '2024-02-19 19:20:00', NULL),
(202, 4, 'overall oke, tapi hanya minus satu ac kamar 301 sama sekali tidak kerasa dingin. mohon untuk di service, tks,neg,neut,neut,pos,neut,neut,neut,neut,neut,neut', '2024-02-19 19:20:00', NULL),
(203, 4, '1. Tempat sampah penuh sampah dan tidak dibersihkan pada saat kami nginap. 2. Banyak nyamuk sehingga tidur tidak nyenyak. 3. Tidak ada sandal untuk dipakai di kamar.,neut,neut,neut,neut,neg,neg,neut,neut,neut,neut', '2024-02-19 19:20:00', NULL),
(204, 4, 'ok hanya ac kurang dingin,neg,neut,neut,neut,neut,neut,neut,neut,neut,neut', '2024-02-19 19:20:00', NULL),
(205, 4, 'Ketika pertama masuk kamar bau apek, untuk pengharum ruangannya tidak ada.,neut,neut,neg,neut,neut,neut,neut,neut,neut,neut', '2024-02-19 19:20:00', NULL),
(206, 4, 'Ada beberapa Receptionist dan Security yang kurang RAMAH terhadap Local Guest seperti saya dan keluarga. Membuat sangat kurang nyaman, berbeda dengan Bartender yang di Rooftop Bar sangat RAMAH dan BAIK, juga Bapak security di hari terakhir saya check out beliau membantu saya di parkiran. ,neut,neut,neut,neut,neut,neut,neg,neut,neut,neut', '2024-02-19 19:20:00', NULL),
(207, 4, 'mohon kebersihan di tingkatkan, masa wc nya ada KECOA...!!!,neut,neut,neut,neut,neg,neut,neut,neut,neut,neut', '2024-02-19 19:20:00', NULL),
(208, 4, 'sesuai budget lah. tapi nyaman kok, kamar juga bersih, WiFi nyala walau koneksi agak lelet, yg jaga ,neut,neut,neut,neut,pos,neut,neut,neut,neut,neg', '2024-02-19 19:20:00', NULL),
(209, 4, 'Minus air panas, ac kurang dingin, tidak ada kran buat wudhu. But afterall its ok, suasananya nyaman tanpa ada suara kendaraan, dan tidak bising.,neg,neg,neut,pos,neut,neut,neut,neut,neut,neut', '2024-02-19 19:20:00', NULL),
(210, 4, 'Untuk kebersihan sudah lumayan, AC lumayan dingin tidak seperti pertama kali saya book kamar disini. Sprei juga baru dan bersih, mungkin cuma selimutnya saja yg perlu diganti karna sudah agak buras. Untuk barang dikamar seperti meja atau kelengkapan lain masih agak berdebu dan nampak seperti hotel tua karna perabotnya kelihatan rapuh.,pos,neut,neut,neut,pos,neg,neut,neut,neut,neut', '2024-02-19 19:20:00', NULL),
(211, 4, 'kemari, pelayanannya ga ramah. Kamar Panas. AC tidak dingin, KAMAR KOTOR. gaada sarapan. ,neg,neut,neut,neut,neg,neut,neg,neg,neut,neut', '2024-02-19 19:20:00', NULL),
(212, 4, 'handuk kasih double, ac kurang dingin, semoga lebih baik lagi,neg,neut,neut,neut,neut,pos,neut,neut,neut,neut', '2024-02-19 19:20:00', NULL),
(213, 4, 'kamarnya jorok ada kecoanya trus lembab. ,neut,neut,neut,neut,neg,neut,neut,neut,neut,neut', '2024-02-19 19:20:00', NULL),
(214, 4, 'lumayan bagus, akna tetapi gak ada snacknya..,neut,neut,neut,neut,neut,neg,neut,neut,neut,neut', '2024-02-19 19:20:00', NULL),
(215, 4, 'Datang jam 1 siang ga boleh check in sampe jam 2 pdhl uda capek bgt. Sprei jorok, ruangan lembab, jauh dari kota, sesuai lah harga murah. Ga rekomen lah.,neut,neut,neg,neut,neg,neg,neg,neut,neut,neut', '2024-02-19 19:20:00', NULL),
(216, 4, 'sdh ke 2x nya nginep dsni,dn msh sama kamarnya bersih ac dingin,cuman sayang tv nya masih bintik2 dn chanelnya cuman 2 sh hhehhee, jdingk bisa ntn tv juga, selain tu sh oke semua,pos,neut,neut,pos,pos,neut,neut,neut,neg,neut', '2024-02-19 19:20:00', NULL),
(217, 4, 'Ac nya tidak dingin,neg,neut,neut,neut,neut,neut,neut,neut,neut,neut', '2024-02-19 19:20:00', NULL),
(218, 4, 'Kamarnya bersih, aminities lengkap, petugas ramah. Cm km mandi agak bau. Yg lain bagus buat harga semurah itu.,neut,neut,neg,pos,pos,pos,pos,neut,neut,neut', '2024-02-19 19:20:00', NULL),
(219, 4, 'pagi pagi air nya tidak panas,neut,neg,neut,neut,neut,neut,neut,neut,neut,neut', '2024-02-19 19:20:00', NULL),
(220, 4, 'Pelayanan baik, kondisi kamar juga baik, suasana hotel baik. Hanya saja fasilitas di kamar masih kurang. Shower tidak ada kondisi panas dan dingin. Selebihnya baik. Harga juga terjangkau,neut,neg,neut,pos,neut,neut,pos,neut,neut,neut', '2024-02-19 19:20:00', NULL),
(221, 4, 'Kamarnya jorok banyak debu, dindingnya kusam banyak noda. Kamar mandi juga kurang bersih, penarangan minim,neut,neut,neut,neut,neg,neut,neut,neut,neut,neut', '2024-02-19 19:20:00', NULL),
(222, 4, 'cukup baik, pelayanannya ramah, tapi sayang toiletnya kurang bersih & bau.,neut,neut,neg,neut,neg,neut,pos,neut,neut,neut', '2024-02-19 19:20:00', NULL),
(223, 4, 'jelek ac gak dinging,neg,neut,neut,neut,neut,neut,neut,neut,neut,neut', '2024-02-19 19:20:00', NULL),
(224, 4, 'pelayanan sangat ramah,kamar pun rapih dah bersih tapi ada sedikit kekurangan di bagian handuk dan selimutnya sebaiknua yg sudah sobek diganti yaa.. thxðŸ˜Š,neut,neut,neut,neut,pos,neg,pos,neut,neut,neut', '2024-02-19 19:20:00', NULL),
(225, 4, 'Saya menginap 3 malam, tetapi snak, air minum dan perlengkapan mandi tdk di lengkapi ulang/tdk di kasih ke tamu.. mohon di tingkatkan pelayanannya.. terimakasih,neut,neut,neut,neut,neut,neg,pos,neut,neut,neut', '2024-02-19 19:20:00', NULL),
(226, 4, 'tempatnya nyaman tapi pelayannan kurang bagus bolak balik minta perlengkapan mandi....handuk.... juga hanya dikasih minuman gelas,neut,neut,neut,neut,neut,neg,neg,neut,neut,neut', '2024-02-19 19:20:00', NULL),
(227, 4, 'Pelayannya kurang baik dan kurang sopan,neut,neut,neut,neut,neut,neut,neg,neut,neut,neut', '2024-02-19 19:20:00', NULL),
(228, 4, 'semuanya baik ruangan bersih. cuma hanya 1 yg kurang. wiFinya krg mengcakup ke semua kamar,neut,neut,neut,pos,pos,neut,neut,neut,neut,neg', '2024-02-19 19:20:00', NULL),
(229, 4, 'Lokasi d gang sempit, susah dtemui. Datang awal, tdk bisa early check in, hrs nambah fee, hrs tgu smpk jm14. Ruang tunggu pengap, bau rokok. Kamar kurang bersih, byk byk sekali kecoa, byk debu. Lgsg check out stlh liat kamar spt itu.,neut,neut,neg,neut,neg,neut,neg,neut,neut,neut', '2024-02-19 19:20:00', NULL),
(230, 4, 'kamar baik, kamar mandi bau agak tak sedap. sinyal wifi agak susah karna kamar di ujung.,neut,neut,neg,neut,neut,neut,neut,neut,neut,neg', '2024-02-19 19:20:00', NULL),
(231, 4, 'g ada makann kecil y,neut,neut,neut,neut,neut,neg,neut,neut,neut,neut', '2024-02-19 19:20:00', NULL),
(232, 4, 'tidak ada snack,neut,neut,neut,neut,neut,neg,neut,neut,neut,neut', '2024-02-19 19:20:00', NULL),
(233, 4, 'staffnya sangat friendly tp entah knp wifinya tidak jalan,neut,neut,neut,neut,neut,neut,pos,neut,neut,neg', '2024-02-19 19:20:00', NULL),
(234, 4, 'televisi nyaa buremmm,neut,neut,neut,neut,neut,neut,neut,neut,neg,neut', '2024-02-19 19:20:00', NULL),
(235, 4, 'Kurang bersih aja. ,neut,neut,neut,neut,neg,neut,neut,neut,neut,neut', '2024-02-19 19:20:00', NULL),
(236, 4, 'Kamar 310 tvnya rusak jadi bikin tidak nyaman, tidak ada perbaikan,neut,neut,neut,neut,neut,neut,neut,neut,neg,neut', '2024-02-19 19:20:00', NULL),
(237, 4, 'kotor n sedikit bau,neut,neut,neg,neut,neg,neut,neut,neut,neut,neut', '2024-02-19 19:20:00', NULL),
(238, 4, 'nyaman tempatnya cuman sayang air panas nya tdk bisa. untuk keseluruhan ok lah. ,neut,neg,neut,neut,neut,neut,neut,neut,neut,neut', '2024-02-19 19:20:00', NULL),
(239, 4, 'Sesuai antara harga dan fasilitasnya.kamar bersih. Tp sayang acara tv kurang bagus sinyalnya.,neut,neut,neut,neut,pos,neut,neut,neut,neg,neut', '2024-02-19 19:20:00', NULL),
(240, 4, 'wifi sulit untuk koneksi loginnya, dan kamar 221 bocor ac nya.,neg,neut,neut,neut,neut,neut,neut,neut,neut,neg', '2024-02-19 19:20:00', NULL),
(241, 4, 'Kebersihan teras ruangan agak kotor berdebu, lampu interior Kamar banyak yg mati,neut,neut,neut,neut,neg,neut,neut,neut,neut,neut', '2024-02-19 19:20:00', NULL),
(242, 4, 'Cukup ramah pelayanan nya baik karena menyediakan pemesanan makanan minuman, Namun  perlu diperbaiki dari segi fasilitas kamar seperti Stopkontak nya di tambah, Air hangatnya kadang tidak berfungsi maka perlu di cek berkala,neut,neg,neut,neut,neut,neut,pos,neut,neut,neut', '2024-02-19 19:20:00', NULL),
(243, 4, 'Kurang pelayanan, tidak nyaman,neut,neut,neut,neut,neut,neut,neg,neut,neut,neut', '2024-02-19 19:20:00', NULL),
(244, 4, 'fasilitas tv yg kurang baik ditambah receptions yg kurang baik masa saya ktdran sampai pas wkt check out nya ditelpon trs ke kamar,neut,neut,neut,neut,neut,neut,neg,neut,neg,neut', '2024-02-19 19:20:00', NULL),
(245, 4, 'Kebersihan kamar tolong diperhatikan,neut,neut,neut,neut,neg,neut,neut,neut,neut,neut', '2024-02-19 19:20:00', NULL),
(246, 4, 'abang abangnya judes ,neut,neut,neut,neut,neut,neut,neg,neut,neut,neut', '2024-02-19 19:20:00', NULL),
(247, 4, 'Kamar benar2 tidak layak ditempati. Saya pesan 2 hari cuma saya tempati 1 hari karena benar2 tidak nyaman. Kasurnya berisik, lampu kamar mandi mati, ada kecoa dikamar & tempat sampah didepan kamar tidak dibersihkan. Kecewaaa....,neut,neut,neut,neut,neg,neg,neut,neut,neut,neut', '2024-02-19 19:20:00', NULL),
(248, 4, '4x menginap disini akhir nya air panas nya ada juga hahahahhaa,neut,pos,neut,neut,neut,neut,neut,neut,neut,neut', '2024-02-19 19:20:00', NULL),
(249, 4, 'Bagus, nyaman, hanya saja di wc-nya bocor,neut,neut,neut,neut,neg,neut,neut,neut,neut,neut', '2024-02-19 19:20:00', NULL),
(250, 4, 'Agak kotor sekarang yah, banyak yg rusak dan tidak dibetulkan.. but overall ok lah.. air panas langsung keluar, tapi pas malam airnya panasnya gak ada. ,neut,neg,neut,pos,neg,neut,neut,neut,neut,neut', '2024-02-19 19:20:00', NULL),
(251, 4, 'ruangan lebar. namun kekurangannya tidak ada hot shower. kamar dibersihkan tanpa diminta, tetapi hal tersebut sangat berbahaya untuk menjaga kepercayaan pelanggan. sebaiknya kamar jgn dibersihkan tanpa diminta. CSnya ramah.,neut,neg,neut,neut,neut,neut,pos,neut,neut,neut', '2024-02-19 19:20:00', NULL),
(252, 4, 'Tv nya gak nyala ðŸ˜‘,neut,neut,neut,neut,neut,neut,neut,neut,neg,neut', '2024-02-19 19:20:00', NULL),
(253, 4, 'Fasilitas kamar mandi perlu diperbaiki. Air panas tidaj jalan. Lampu kamar kurang terang ,neut,neg,neut,neut,neut,neut,neut,neut,neut,neut', '2024-02-19 19:20:00', NULL),
(254, 4, 'Pelayanannya sudah bagus tapi kebersihan sprei dan selimutnya tolong ditingkatkan lagi. Perhatikan juga tanggal kadaluarsa pada kue yang disediakan di box. Terima kasih,neut,neut,neut,neut,neut,neg,pos,neut,neut,neut', '2024-02-19 19:20:00', NULL),
(255, 4, 'Parkiran tidak terlalu luas, dan tidak ada petugasnya,neut,neut,neut,neut,neut,neut,neg,neut,neut,neut', '2024-02-19 19:20:00', NULL),
(256, 4, 'sayangnya: 1. handuknya bau 2. odolnya bekas pas saya buka, sudah terpakai 3. wifi tidak sampai ke kamar 4. alamat sepertinya ga sesuai. harusnya dangdeur indah 1 no 20 bukan dangdeur indah no 20. tks,neut,neut,neut,neut,neut,neg,neut,neut,neut,neg', '2024-02-19 19:20:00', NULL),
(257, 4, 'Wc ada binatang kecilâ€, geliiii...,neut,neut,neut,neut,neg,neut,neut,neut,neut,neut', '2024-02-19 19:20:00', NULL),
(258, 4, 'langit di kamar masi ada sarang laba2,shower kurang bagus.,neut,neut,neut,neut,neg,neut,neut,neut,neut,neut', '2024-02-19 19:20:00', NULL),
(259, 4, 'Kamar dan suasana nya nyaman sayangnya gak ada lap kaki di depan kamar mandi bikin banjir dan licin,neut,neut,neut,neut,neg,neut,neut,neut,neut,neut', '2024-02-19 19:20:00', NULL),
(260, 4, 'ac agak bau. remote tv tidak berfungsi,neg,neut,neut,neut,neut,neut,neut,neut,neg,neut', '2024-02-19 19:20:00', NULL),
(261, 4, 'tempat nya bersih wangi rapi. yang bikin kecewa AC nya bocor alias rusak jadi kurang dingin,neg,neut,pos,neut,pos,neut,neut,neut,neut,neut', '2024-02-19 19:20:00', NULL),
(262, 4, 'ini pertama kalinya saya memesan airy rooms. saya pesan tanggal 13april untuk menginap tanggal 28april. tp ketika saya sampai di hotel, kamar yg saya booking tidak ada dan pihak hotel mengembalikan uang saya, alhasil saya harus mencari hotel lain pada hari itu! sangat mengecewakan karena tidak ada pemberitahuan dari jauh hari! TIDAK PROFESIONAL!,neut,neut,neut,neut,neut,neut,neg,neut,neut,neut', '2024-02-19 19:20:00', NULL),
(263, 4, 'lebih membutuhkan maintenance untuk kamar mandi dan aroma Ac/kamarnya ,neut,neut,neg,neut,neut,neut,neut,neut,neut,neut', '2024-02-19 19:20:00', NULL),
(264, 4, 'air panasnya mati,makan paginya terlalu sedikit,neut,neg,neut,neut,neut,neut,neut,neut,neut,neut', '2024-02-19 19:20:00', NULL),
(265, 4, 'Kamarnya nyaman, pelayanan baik, bersih, hanya saja bantal sedikit bau,neut,neut,neut,neut,neut,neg,pos,neut,neut,neut', '2024-02-19 19:20:00', NULL),
(266, 4, 'secara keseluruhan baik. kurangnya di sarapan yg hanya menu sederhana, kolam renang juga agak kotor dan sinyal wifi yang tidak bisa menjangkau hingga ujung kamar. kondisi kamar sendiri cukup bagus dan bersih.,neut,neut,neut,pos,pos,neut,neut,neg,neut,neg', '2024-02-19 19:20:00', NULL),
(267, 4, 'sarapan lumayan, AC jadul yg kamar atas, pelayanan baik, sprei agak kotor, shower agak macet setelah di perbaiki lancar, air gak panas ,neg,neg,neut,neut,neg,neg,pos,pos,neut,neut', '2024-02-19 19:20:00', NULL),
(268, 4, 'lantai ruangan kamar licin....dan yg  perlu di tambahkan adalah sandal di dlm kamar. utk yg lain sdh baik dan bagus,neut,neut,neut,pos,neg,neg,neut,neut,neut,neut', '2024-02-19 19:20:00', NULL),
(269, 4, 'mayan lah deket farm house cuman kamar mandi kotor kasur kotor ,neut,neut,neut,neut,neg,neg,neut,neut,neut,neut', '2024-02-19 19:20:00', NULL),
(270, 4, 'Smua fasilitas berjalan baik, hanya saja tidak ada camilan seperti biasanya, yg di sediakan oleh airyroom. terimakasih airyroom, berkat airy tidur lebihnyaman dan harga terjangkau,neut,neut,neut,pos,neut,neg,neut,neut,neut,neut', '2024-02-19 19:20:00', NULL),
(271, 4, 'staff hotel tidak peduli kepada keluhan customer, token listrik bunyi dibiarkan dan bunyi nya sangat mengganggu, saya hrus 2 jam skali bangun buat mematikan, handle wc ga ada jebol, ga bisa d tutup, wc bau nya ke kemar, tidak ada meja , saya kira airy room lumayan ternyata lbh parah dr kost2 an yaa,neut,neut,neg,neg,neut,neut,neg,neut,neut,neut', '2024-02-19 19:20:00', NULL),
(272, 4, 'Airnya bau seperti air selokan. jadi mau mandi atau sikat gigi malas . ruangannya sempit . ,neut,neut,neg,neut,neut,neut,neut,neut,neut,neut', '2024-02-19 19:20:00', NULL),
(273, 4, 'dapat kamar yg AC nya tidak dingin. over all nyaman kamarnya dan lokasi strategis dgn kantor,neg,neut,neut,pos,neut,neut,neut,neut,neut,neut', '2024-02-19 19:20:00', NULL),
(274, 4, 'kamar pengap, properti seperti meja terasa kurang bersih. sisanya okay,neut,neut,neut,neut,neg,neut,neut,neut,neut,neut', '2024-02-19 19:20:00', NULL),
(275, 4, '1. Air keran kamar mandi MATI. 2. Parkiran motor SEMRAWUT 3. Kebersihan luar dan dalam gedung sangat KOTOR. 4. AC kamar lama sekali dinginnya. 5. Pelayanan resepsionis KURANG peduli. 6. Foto di iklan tidak sesuai dengan kenyataan (Dari semua aspek).,neg,neut,neut,neut,neg,neut,neg,neut,neut,neut', '2024-02-19 19:20:00', NULL),
(276, 4, 'kebersihan selimut, sarung bantal, handuk kurang kamar kurang wangi wifi tidak bisa,neut,neut,neg,neut,neut,neg,neut,neut,neut,neg', '2024-02-19 19:20:00', NULL),
(277, 4, 'Receptionist hotel sangat ramah, kamar juga bersih luas dan dikasih snack ringan tiap hari. Cuma kemarin air panas di kamar mandi kurang berfungsi ,neut,neg,neut,neut,neut,pos,pos,neut,neut,neut', '2024-02-19 19:20:00', NULL),
(278, 4, 'kamarnya nyaman tp di lantai2 ga kena wifi, dan sedikit kurang friendly. breakfastnya enak. yang double recommeded kalo ada wifinya,neut,neut,neut,neut,neut,neut,neg,pos,neut,neg', '2024-02-19 19:20:00', NULL),
(279, 4, 'Kamarnya jorok :( apalagi kamar mandinya :(,neut,neut,neut,neut,neg,neut,neut,neut,neut,neut', '2024-02-19 19:20:00', NULL),
(280, 4, 'Sprayx kasar dan berbulu.ac nya ribut,neg,neut,neut,neut,neut,neg,neut,neut,neut,neut', '2024-02-19 19:20:00', NULL),
(281, 4, 'Secara keseluruhan pelayanan dan kondisi kamar baik hanya di kamar mandi bau dari tempat pembuangan masuk ke kamar mandi. Terima kasih.,neut,neut,neg,neut,neut,neut,pos,neut,neut,neut', '2024-02-19 19:20:00', NULL),
(282, 4, 'AC tidak dingin dan tidak ada lift kekamar atas!,neg,neut,neut,neut,neut,neut,neut,neut,neut,neut', '2024-02-19 19:20:00', NULL),
(283, 4, 'spooky anak saya 1 tahun nangis histeris,kotor, shower air panas mati walau akhirnya dimasakin air panas.. ,neut,neg,neut,neut,neg,neut,neut,neut,neut,neut', '2024-02-19 19:20:00', NULL),
(284, 4, 'Sayangnya hot waternya mati. ðŸ˜”,neut,neg,neut,neut,neut,neut,neut,neut,neut,neut', '2024-02-19 19:20:00', NULL),
(285, 4, 'Kecewa dengan pelayanannya yang kurang ramah,neut,neut,neut,neut,neut,neut,neg,neut,neut,neut', '2024-02-19 19:20:00', NULL),
(286, 4, 'hotelnya bagus pelayanannya baek tapi kurangnya cuma satu adalah tdk ada WIFI di hotel dan di kamar hotel,neut,neut,neut,neut,neut,neut,pos,neut,neut,neg', '2024-02-19 19:20:00', NULL),
(287, 4, 'pelayanannya kurang baik bad, kasur kurang empuk, selimut tipis handuk tipis Snack gak ada bad ðŸ˜ª,neut,neut,neut,neut,neut,neg,neg,neut,neut,neut', '2024-02-19 19:20:00', NULL),
(288, 4, 'tidak ada yg berkesan. siaran TVnya tidak bagus, wifi mengalami ganguan, ,neut,neut,neut,neut,neut,neut,neut,neut,neg,neg', '2024-02-19 19:20:00', NULL),
(289, 4, 'Secara keseluruhan bagus dan nyaman, hanya saja ac kamar yg saya tempati mengeluarkan air,neg,neut,neut,pos,neut,neut,neut,neut,neut,neut', '2024-02-19 19:20:00', NULL),
(290, 4, 'Pelayanan Baik... harga terjangkau.... sayangnya tuas shower patah, jd GDA air hangatnya. tp Secara keseluruhan ok,neut,neg,neut,pos,neut,neut,pos,neut,neut,neut', '2024-02-19 19:20:00', NULL),
(291, 4, 'Tempat nyaman tetapi kamar mandi agak bau.,neut,neut,neg,neut,neut,neut,neut,neut,neut,neut', '2024-02-19 19:20:00', NULL),
(292, 4, 'tempat bersih, rapi, nyaman, sesuai harga lah pokoknya, cuman WiFi di atas gak ada jd mau WiFian harus ke bawah, overall goodðŸ‘Œ,neut,neg,neut,pos,pos,neut,neut,neut,neut,neut', '2024-02-19 19:20:00', NULL),
(293, 4, 'gak berfungsi keran air panasnya, staff kurang ramah, yg lainnya memuaskan.,neut,neg,neut,pos,neut,neut,neg,neut,neut,neut', '2024-02-19 19:20:00', NULL),
(294, 4, 'salah satu kamarnya bau toilet, saya jd pindah kamar, kamarnya jg sempit bgt gak cocok bw keluarga,neut,neut,neg,neut,neut,neut,neut,neut,neut,neut', '2024-02-19 19:20:00', NULL),
(295, 4, 'Terlepas dari kulkas yang tidak dingin dan remote ac rusak, hotel ini cukup baik dan memuaskan.,neg,neut,neut,pos,neut,neut,neut,neut,neut,neut', '2024-02-19 19:20:00', NULL),
(296, 4, 'tv rusak, wc kotor, gda snack...  kecewa sih utk x ini nginep di airyroom,neut,neut,neut,neut,neg,neg,neut,neut,neg,neut', '2024-02-19 19:20:00', NULL),
(297, 4, 'kamar nggak wangi.  Kotor,neut,neut,neg,neut,neg,neut,neut,neut,neut,neut', '2024-02-19 19:20:00', NULL),
(298, 4, 'Kamar mandi kotor sperti tidak perna dibersihkan, agak apek dan bau,neut,neut,neg,neut,neg,neut,neut,neut,neut,neut', '2024-02-19 19:20:00', NULL),
(299, 4, 'Biasanya aku dpt snack d room ini gada sama sekali Ac nya bau cuka (gatau kaya cuka tapi aneh banget,neg,neut,neut,neut,neut,neg,neut,neut,neut,neut', '2024-02-19 19:20:00', NULL),
(300, 4, 'tenang cumah agak kpanasan dikit AC kurang stabil,neg,neut,neut,neut,neut,neut,neut,neut,neut,neut', '2024-02-19 19:20:00', NULL),
(301, 4, 'Fasilitasnya lumayan lengkap ada air panas, tv, snack, AC, dan peralatan mandi, kasur empuk, parkiran tapi yg kurang itu sarung bantal yg warnanya kusam jadi terkesan usang dan kotor, cat tembok yg mulai mengelupas dan selimut yang tipis....overall lumayan bagus untuk harga segitu kedepannya mungkin lebih ditingkatkan lagi untuk fasilitas kamarnya,pos,neg,neut,pos,neg,pos,neut,neut,pos,neut', '2024-02-19 19:20:00', NULL),
(302, 4, 'sangat menyenangkan sekali.... kamarnya nyaman, rapih, bersih dan over all sangat bagus. cocok buat refresh pikiran saat liburan meninggalkan beban kerjaan yg berat... layanan trhadap plangganpun sangat baik. hanya 1 aja usulan dari saya klo bisa di dlm ruangan ada pngharum ruangan biar lebih berasa sempurna :) over all very2 good,neut,neut,neg,neut,pos,neut,pos,neut,neut,neut', '2024-02-19 19:20:00', NULL),
(303, 4, 'Suasana hotal asri dan enak, cuman perlengkapan kamar mandi dan snack belum tersedia saat check in,neut,neut,neut,neut,neut,neg,neut,neut,neut,neut', '2024-02-19 19:20:00', NULL),
(304, 4, 'Kamar nya kereeenn..nyaman..tp kurangnya air panas nya ngk panas..tp semuanya okelah..,neut,neg,neut,pos,neut,neut,neut,neut,neut,neut', '2024-02-19 19:20:00', NULL),
(305, 4, 'kamar pengap, kamar mandi kotor!!!,neut,neut,neg,neut,neg,neut,neut,neut,neut,neut', '2024-02-19 19:20:00', NULL),
(306, 4, 'Selimutnya kurang tebel, wifi nya lelet. Selebihnya sudah memuaskan. ,neut,neut,neut,pos,neut,neg,neut,neut,neut,neg', '2024-02-19 19:20:00', NULL),
(307, 4, 'Bantalnya bau iler, kamarnya beda dengan yang di foto, jarak dengan bandara memang dekat, tapi akses,neut,neut,neut,neut,neut,neg,neut,neut,neut,neut', '2024-02-19 19:20:00', NULL),
(308, 4, 'Gak nyaman banget, krna Ac nya rusak, gak dingin trs suka mati sndiri dlm beberapa wktu, trs airnya gak mengalir dgn  lancar suka ngadat. Kebersihan msh oke, cuman sayang gda tempat penampung sampah. ,neg,neut,neut,neut,pos,neg,neut,neut,neut,neut', '2024-02-19 19:20:00', NULL),
(309, 4, 'Sprei tidak diganti... banyak pasir. ,neut,neut,neut,neut,neg,neg,neut,neut,neut,neut', '2024-02-19 19:20:00', NULL),
(310, 4, 'Kamar kurang bagus mungkin karena bangunan lama,toilet tidak bersih pintu toilet jasul banget,air kran netes terus,kurang bersih ya..,neut,neut,neut,neut,neg,neut,neut,neut,neut,neut', '2024-02-19 19:20:00', NULL),
(311, 4, 'wifi kurang baik,neut,neut,neut,neut,neut,neut,neut,neut,neut,neg', '2024-02-19 19:20:00', NULL),
(312, 4, 'Kasur ada kutu nya, dan badan saya jadi gatal gatal.. Dan ac sama sekali tdk dingin,neg,neut,neut,neut,neg,neg,neut,neut,neut,neut', '2024-02-19 19:20:00', NULL),
(313, 4, 'air panasnya kurang panas ah,neut,neg,neut,neut,neut,neut,neut,neut,neut,neut', '2024-02-19 19:20:00', NULL),
(314, 4, 'Pintu Kamar mandi tidak bisa ditutup, Kamar mandi berbau selokan mohon diberi Kapur Barus, Peneranga,neut,neut,neg,neut,neut,neut,neut,neut,neut,neut', '2024-02-19 19:20:00', NULL),
(315, 4, 'kamar ga sesuai sama yang di foto beda jauhh bangeet, tempatnya kurang bersih,neut,neut,neut,neut,neg,neut,neut,neut,neut,neut', '2024-02-19 19:20:00', NULL),
(316, 4, 'Suasananya nyaman. Tapi perlu di perbaiki kamar mandinya, kebersihannya kurang,neut,neut,neut,neut,neg,neut,neut,neut,neut,neut', '2024-02-19 19:20:00', NULL),
(317, 4, 'pelayanan baik banget dan ramah, makanan seadanya, cukuplah buat sarapan, sprei kurang bersih, pintu kamar mandi ga bisa ditutup. sebrangnya ada kupat tahu, enak.. tingkatkan lagi di kebersihan..,neut,neut,neut,neut,neg,neg,pos,neg,neut,neut', '2024-02-19 19:20:00', NULL);
INSERT INTO `dataset_details` (`id`, `dataset_id`, `content`, `created_at`, `updated_at`) VALUES
(318, 4, 'so so, service nya jg kurang ramah, ya lumayan sih untuk segi harga,neut,neut,neut,neut,neut,neut,neg,neut,neut,neut', '2024-02-19 19:20:00', NULL),
(319, 4, 'selalu menyenangkan menginap disini, namun terakhir saya dapat kamar yg jauh dari akses point wifi, juga ada nyamuk. tapi overall its good.,neut,neut,neut,pos,neut,neut,neut,neut,neut,neg', '2024-02-19 19:20:00', NULL),
(320, 4, 'wifi gk bisa dipake di dlam kmar & ac dlam kamar kurang dingin. thx,neg,neut,neut,neut,neut,neut,neut,neut,neut,neg', '2024-02-19 19:20:00', NULL),
(321, 4, 'utk kamar disini nggak recommended, mending cari yg lain...nginep 2 malam dpt kamar L lantai 3 kamarnya jelek...pintu kamar mandi engsel atas lepas, jd pintu ngegantung2 dan tidak dpt ditutup sempurna...trus kamar mandi jg bau...gak ada air panas...,neut,neg,neg,neg,neut,neut,neut,neut,neut,neut', '2024-02-19 19:20:00', NULL),
(322, 4, 'Ac kamar kurang dingin.. selebih ny okk,neg,neut,neut,pos,neut,neut,neut,neut,neut,neut', '2024-02-19 19:20:00', NULL),
(323, 4, 'Nyaman menginap disana pelayanan hotel juga memuaskan hanya kamar mandinya sedikit bau jika pintu tidak dibuka sebelum dipakai. Dan pak satpamnya ramah-ramah semua,neut,neut,neg,neut,neut,neut,pos,neut,neut,neut', '2024-02-19 19:20:00', NULL),
(324, 4, 'tidak ada cemilan selama 4 hari menginap,neut,neut,neut,neut,neut,neg,neut,neut,neut,neut', '2024-02-19 19:20:00', NULL),
(325, 4, 'Parah. Closet rusak, air panas tidak ada, shower cebok rusak dan tidak bisa digunakan. Selimut tidak diberi bila tak diminta. Pintu kunci rusak. terkunci dari luar dan tidak bisa dibuka. Terpaksa panggil tukang dari luar dan jam 00.00 baru bisa masuk kamar. Menyedihkan,neut,neg,neut,neut,neut,neg,neut,neut,neut,neut', '2024-02-19 19:20:00', NULL),
(326, 4, 'Kamar mandinya agak kotor, makanannya jg agak mengecewakan. Sarapan pagi br jam 8 tp semua sdh habis,neut,neut,neut,neut,neg,neut,neut,neg,neut,neut', '2024-02-19 19:20:00', NULL),
(327, 4, 'Fasilitas dan kenyamanan TOP banget. Tapi reception pelayanan ny kurang. Sama jauh kmn2, tp msh bs taxol kok :),neut,neut,neut,neut,neut,neut,neg,neut,neut,neut', '2024-02-19 19:20:00', NULL),
(328, 4, 'Kamar tidak sesuai dengan yang dicantumkan. Tidak ada handuk, tidak ada minum dan kamar tidak bisa dikunci, kamar mandi kotor.,neut,neut,neut,neut,neg,neg,neut,neut,neut,neut', '2024-02-19 19:20:00', NULL),
(329, 4, 'banyak nyamuk, selebihnya oke2 aja,neut,neut,neut,pos,neg,neut,neut,neut,neut,neut', '2024-02-19 19:20:00', NULL),
(330, 4, 'Fasilitas oke, namun kebersihan kurang, kamar verpasir,neut,neut,neut,neut,neg,neut,neut,neut,neut,neut', '2024-02-19 19:20:00', NULL),
(331, 4, 'air panasnya ga berfungsi,neut,neg,neut,neut,neut,neut,neut,neut,neut,neut', '2024-02-19 19:20:00', NULL),
(332, 4, 'kecewa banget sihh, kenapa ngasih penawaran harga termurah tapi untuk fasilitas hotel ga dikasih. hanya sekedar coffee maker aja ga dapet dengan alasan pihak hotel nya ohh ga semua airy dapet coffee maker bu oohh oke.. trs hot water di kamar mandi ga berfungsi, kolam renang airnya hijau.  1-10 utk pake aplikasi airy saya kasih nilai 4..,neut,neg,neut,neut,neut,neg,neut,neut,neut,neut', '2024-02-19 19:20:00', NULL),
(333, 4, 'Sprei kamar kotor seperti baru dipakai dan ga diganti. Wifi juga ga dapet ke ruangan yg saya tempati ðŸ˜Œ,neut,neut,neut,neut,neg,neg,neut,neut,neut,neg', '2024-02-19 19:20:00', NULL),
(334, 4, 'ada kolam renang meskipun hanya utk dewasa saja, ac dingin, tv kabel oke, dapat minum dan snack, dan alat mandi plus sisir, sayang kamar mandi agak bau, dan kamar tidak kedap suara, fasilitas ada musola, lift dan kolam renang nilai plusnya, overall oke sih, terimakasih airy,neg,neut,neg,pos,neut,pos,neut,neut,pos,neut', '2024-02-19 19:20:00', NULL),
(335, 4, 'Kamar Mandi Krg Bersih. Lemari Pakaian Tidak Layak. Selebihnya Masih Ok.,neut,neut,neut,pos,neg,neut,neut,neut,neut,neut', '2024-02-19 19:20:00', NULL),
(336, 4, 'Untuk menginap semalam cukup nyaman. Tapi untuk pelayanannya harus ditingkatkan lagi.,neut,neut,neut,neut,neut,neut,neg,neut,neut,neut', '2024-02-19 19:20:00', NULL),
(337, 4, 'Nyaman dan bersih, pelayanan baik, tp channel TV cuman ada 8 dan exhaust fan kamar mandi ga nyala, mohon ditingkatkan,neut,neut,neut,neut,pos,neut,pos,neut,neg,neut', '2024-02-19 19:20:00', NULL),
(338, 4, 'pelayanan sangat baik, semua petugas sangat ramah, pemandangan bagus, kamar nyaman, ada cemilan dan air minum dalam kamar, jika butuh air panas di teko bs minta petugas saja. harga murah. menu sarapan lumayan banyak. saat cek in telat 15 menit,  dan saat masuk kamar,  lantai masih basah karena habis di pel dan masih sangat bau pengharum menyengat. ,neut,neut,neg,neut,neut,pos,pos,pos,neut,neut', '2024-02-19 19:20:00', NULL),
(339, 4, 'Makanan tidak enak, kamar mandi kotor, tidak ada lift naik tangga sampai lt 3, banyak asap rokok dan puntung rokok,neut,neut,neut,neut,neg,neut,neut,neg,neut,neut', '2024-02-19 19:20:00', NULL),
(340, 4, 'kamar bau, bantal bau apek, ac ga dingin,,, ,neg,neut,neg,neut,neut,neg,neut,neut,neut,neut', '2024-02-19 19:20:00', NULL),
(341, 4, 'Kamarnya nyaman.. Ac dingin kamar mandi shower ada air panasnya, bersih, tv lcd, ada snack box nya juga.. hanya saja bawah tmpat tdur tdk ikut di sapu jdi ada debu nya.. tpi overall puas dan nyaman, staff ramah bgt.. ,pos,pos,neut,pos,neg,pos,pos,neut,pos,neut', '2024-02-19 19:20:00', NULL),
(342, 4, 'Selimut dan bantal bau seperti belum dicuci, masih ada rambut bertebaran di bantal,neut,neut,neg,neut,neg,neut,neut,neut,neut,neut', '2024-02-19 19:20:00', NULL),
(343, 4, 'suasana nyaman..hotel sesuai budget.lokasi sangat stategis di pusat legian..kamar mandi ok.kebersihan kamar dan sprei kurang banget..perlengkapan mandi dari airy sepertinya bekas..terutama sikat gigi nya,neut,neut,neut,neut,neg,neg,neut,neut,neut,neut', '2024-02-19 19:20:00', NULL),
(344, 4, 'Lantai kamar kaya ada lengket2nya, mungkin karena belum dipel ,neut,neut,neut,neut,neg,neut,neut,neut,neut,neut', '2024-02-19 19:20:00', NULL),
(345, 4, 'Cuma menginap 1 (satu) malam saja, perlu didouble check kebersihan kamar mandi dan toilet, tiba-tiba,neut,neut,neut,neut,neg,neut,neut,neut,neut,neut', '2024-02-19 19:20:00', NULL),
(346, 4, 'hotelnya nyaman bersih, tapi ruangannya agak sedikit bau dan pengap karena tidak ada jendela,neut,neut,neg,neut,pos,neut,neut,neut,neut,neut', '2024-02-19 19:20:00', NULL),
(347, 4, 'pelyanan sangat buruk terutama resepsionis yang cewek bikin naik darah . padahal kita bayar gk gratis . tv ada tapi tidak ada siaran . sangat kecewa. tolong buat onwer perlu di kasih teguran buat resepsionis yang seperti itu termkasih . dan gk recomed banget,neut,neut,neut,neut,neut,neut,neg,neut,neg,neut', '2024-02-19 19:20:00', NULL),
(348, 4, 'tempat ok..kebeersihan kurang dan perlengakap mandinya krng. untuk pelayanan ramah,neut,neut,neut,neut,neg,neg,pos,neut,neut,neut', '2024-02-19 19:20:00', NULL),
(349, 4, 'sarung bantal bau lembab warna coklat badcover juga... saya sering nginep di airyrooms biasanya putih bersih wangi ..mungkin karna discount 50% jadi dapet kamar begitu..,neut,neut,neut,neut,neut,neg,neut,neut,neut,neut', '2024-02-19 19:20:00', NULL),
(350, 4, 'Air panasnya agak kurang panas...,neut,neg,neut,neut,neut,neut,neut,neut,neut,neut', '2024-02-19 19:20:00', NULL),
(351, 4, 'hotel tua, cukup bersih, cukup nyaman. airy tidak diberikan snack?, harga bagus, remot ac tidak ada,,neg,neut,neut,neut,pos,neg,neut,neut,neut,neut', '2024-02-19 19:20:00', NULL),
(352, 4, 'kamar kurang rapi, kamar mandi kotor,neut,neut,neut,neut,neg,neut,neut,neut,neut,neut', '2024-02-19 19:20:00', NULL),
(353, 4, 'tdk ada selimut. mungkin lbh baik kl di sediakan selimut,neut,neut,neut,neut,neut,neg,neut,neut,neut,neut', '2024-02-19 19:20:00', NULL),
(354, 4, 'kamar kurang bersih, handuk nya kotor dan kamar mandi juga kotor tdk disikat,neut,neut,neut,neut,neg,neg,neut,neut,neut,neut', '2024-02-19 19:20:00', NULL),
(355, 4, 'beberapa fasilitas kamar mulai rusak karena usia, cat kusam membuat kesan kotor. lingkungan hotel (lorong, lobby, lift) juga kurang bersih. lokasi strategies, mudah diakses, dekat tempat makan,neut,neut,neut,neut,neg,neut,neut,neut,neut,neut', '2024-02-19 19:20:00', NULL),
(356, 4, 'tidak ada fasilitas dari airy, tolong dicroscek lagi. kamar tidak sesuai pesanan. saat datang disuru,neut,neut,neut,neut,neut,neg,neut,neut,neut,neut', '2024-02-19 19:20:00', NULL),
(357, 4, 'Kamar kotor, saat datang di kamarnya ada noda berwarna cokelat terus di bantalnya ada noda bercak hitam, Kotor sangat seperti tidak di cuci cuma di balik, sewaktu mau check-out dituduh mengotori selimutnya yang padahal dari waktu datang sudah ada, dan deposit mau diambil, jadi kalau kalian datang ada noda ataupun kotoran dikamar langsung komplain saja, Karena nanti kalian dituduh yang mengotori kamar itu dan deposit akan diambil, check-in baru bisa jam 2, sarapan cuma nasi goreng pake telur, Kamar mandi bau dan saluran air di bawahnya kotor sangat seperti ada rambut rambutnya, tidak akan lagi menginap di hotel itu.,neut,neut,neg,neut,neg,neg,neut,neg,neut,neut', '2024-02-19 19:20:00', NULL),
(358, 4, 'lumayan, yg kurang cuma chanel tv, snack, sama alat mandi nya aja. selebihnya bagus,neut,neut,neut,pos,neut,neg,neut,neg,neut,neut', '2024-02-19 19:20:00', NULL),
(359, 4, 'bed cover dan sprei sepertinya jarang diganti. masi ad terlihat sisa rambut org sebelumnya.,neut,neut,neut,neut,neg,neg,neut,neut,neut,neut', '2024-02-19 19:20:00', NULL),
(360, 4, 'Pelayanan sangat memuaskan, perbaiki AC karena tidak bisa diatur suhunya,neg,neut,neut,neut,neut,neut,pos,neut,neut,neut', '2024-02-19 19:20:00', NULL),
(361, 4, 'Salah satu dari staf hotel ada yang kurang ramah,neut,neut,neut,neut,neut,neut,neg,neut,neut,neut', '2024-02-19 19:20:00', NULL),
(362, 4, 'Positif: dekat daerah perdagangan, ruangan cukup bersih, Pelayanan ramah dan sigap. Sirkulasi udara baik, sehingga kamar mandi tidak becek. Suasana cukup tenang untuk istirahat. Fasilitas tersedia sesuai tawaran. Negatif: handuk, sprei, sarung bantal dan selimut pencuciannya tidak bersih. Bantal bau.,neut,neut,neut,neut,pos,neg,pos,neut,neut,neut', '2024-02-19 19:20:00', NULL),
(363, 4, 'Cukup baik tp wc nya kurang nyaman,neut,neut,neut,neut,neg,neut,neut,neut,neut,neut', '2024-02-19 19:20:00', NULL),
(364, 4, 'Kebersihan kurang, pelayanan kurang, .....over all kapok aj,neut,neut,neut,neg,neg,neut,neg,neut,neut,neut', '2024-02-19 19:20:00', NULL),
(365, 4, 'kamar bau dan kondisi tidak layak n saya yg pesannya 2 malam akhirnya cuma saya pakai 1 malam dan ngga bisa tidur n besok nya saya pindah ke airy room Al Barkah 33 dan saya kapok ke Kwitang kecil dan not recommended utk traveler lain nya n saran utk airy utk membuat assesment mitra dgn lebih baik dan terukur utk kenyamanan konsumen.,neut,neut,neg,neut,neut,neut,neut,neut,neut,neut', '2024-02-19 19:20:00', NULL),
(366, 4, 'agak kotor,neut,neut,neut,neut,neg,neut,neut,neut,neut,neut', '2024-02-19 19:20:00', NULL),
(367, 4, 'Kamar mandi lembab,  exhaust/vacuum di kamar mandi tidak berfungsi sehingga handuk dan kain lainnya berbau apek. Pelayanan ramah Sarapannya tidak enak Kebersihan kamar kurang baik Dengan reputasi dan room rate sekian, menurut saya mengecewakan,neut,neut,neg,neg,neg,neut,pos,neg,neut,neut', '2024-02-19 19:20:00', NULL),
(368, 4, 'Pintu kamar mandi ngga bisa ditutup karena rusak, kamar keadaan kotor kaya belom disapu, sprei juga ga bersih. AC juga ga dingin. Resepsionis yang cewe kurang ramah.,neg,neut,neut,neut,neg,neg,neg,neut,neut,neut', '2024-02-19 19:20:00', NULL),
(369, 4, 'perlu selimut dan tambahan papan nama di pinggir jalan supaya tidak bingung cari tempat ini,neut,neut,neut,neut,neut,neg,neut,neut,neut,neut', '2024-02-19 19:20:00', NULL),
(370, 4, 'kamar bersih, hanya saja hexosfan kamar mandi mati jadi agak bau dan lembab,neut,neut,neg,neut,pos,neut,neut,neut,neut,neut', '2024-02-19 19:20:00', NULL),
(371, 4, 'Masih kurang Resepsionis aja yg agak lama harus menunggu lama baru datang tidak stanby dibtempat , all best lah harga murah pasilitas oke ,neut,neut,neut,neut,neut,neut,neg,neut,neut,neut', '2024-02-19 19:20:00', NULL),
(372, 4, 'wifi kadang mati hidup, tapi kamar & fasilitas sangat baik,neut,neut,neut,neut,neut,neut,neut,neut,neut,neg', '2024-02-19 19:20:00', NULL),
(373, 4, 'baik,cuma chanel tv nya gak ada jadi gak bisa nonton di kamar secara keselurahan ok kamar rapi bersih dan suasana tenang..,neut,neut,neut,pos,pos,neut,neut,neut,neg,neut', '2024-02-19 19:20:00', NULL),
(374, 4, 'servis bagus, ownernya ramah dan baik sekali, tapi untuk kebersihan kamar kurang baik. sprei dan sarung bantal tampak kurang bersih jadi tidur kurang nyaman.,neut,neut,neut,neut,neg,neg,pos,neut,neut,neut', '2024-02-19 19:20:00', NULL),
(375, 4, 'tidak ada fasilitas airy ,,neut,neut,neut,neut,neut,neg,neut,neut,neut,neut', '2024-02-19 19:20:00', NULL),
(376, 4, 'AC nya kurang dingin,neg,neut,neut,neut,neut,neut,neut,neut,neut,neut', '2024-02-19 19:20:00', NULL),
(377, 4, 'wifi nya agak lemot tp kamar dan fasilitas keren koq.. ,neut,neut,neut,neut,neut,pos,neut,neut,neut,neg', '2024-02-19 19:20:00', NULL),
(378, 4, 'Tidak seperti yg diharapkan. Kamar jorok, seprei kotor dan bau, toilet rusak, gak ada air panas dan remote TV gak ada. Pokoknya kecewa berat..,neut,neg,neut,neg,neg,neg,neut,neut,neg,neut', '2024-02-19 19:20:00', NULL),
(379, 4, 'lumayanlah,tapi kamar mandi kurang bersih ,neut,neut,neut,neut,neg,neut,neut,neut,neut,neut', '2024-02-19 19:20:00', NULL),
(380, 4, 'Tempatnya kotor dan gelap remang remang,neut,neut,neut,neut,neg,neut,neut,neut,neut,neut', '2024-02-19 19:20:00', NULL),
(381, 4, 'So far lumayan sih buat budget hotel. Tapi pelayanannya agak kurang nih, ðŸ˜‚ wifi nggak konek, terus mau clean up room, kunci digantungin gitu aja di pintu kamar, nggak disimpen lagi di resepsionis ðŸ’” ,neut,neut,neut,neut,neut,neut,neg,neut,neut,neg', '2024-02-19 19:20:00', NULL),
(382, 4, 'pintu gerbang selalu dikunci sehingga kalau mau keluar atau masuk sedikit susah sedangkan itu kan bukan kos2an yg mesti ditungguin 24jam dan petugas yg menjaga rumahnya tidak ramah, dan pelayanannya tidak bagus,neut,neut,neut,neut,neut,neut,neg,neut,neut,neut', '2024-02-19 19:20:00', NULL),
(383, 4, 'Oke banget, tapi ac nya gak bisa diatur suhu nya,neg,neut,neut,neut,neut,neut,neut,neut,neut,neut', '2024-02-19 19:20:00', NULL),
(384, 4, 'Overall semuanya baik, kecuali kebersihan kasurnya aja sih,neut,neut,neut,pos,neut,neg,neut,neut,neut,neut', '2024-02-19 19:20:00', NULL),
(385, 4, 'Kamar mandi kotor, jaringan TV kurang bagus.,neut,neut,neut,neut,neg,neut,neut,neut,neg,neut', '2024-02-19 19:20:00', NULL),
(386, 4, 'paling gak suka dgn pelayanan kepala service, terlalu bossy, walau jabatan bapak diatas karyawan yg lain bapak itu bukan pemilik, harusnya bapak bilang rekan kerjanya bukan anak buah, kan sama2 di gajiðŸ˜‰,, dibenahi lagi lah aturannya jgn beda2 kalau ditanya,, biar tamu gak bingung,, breakfast gak enak sama sekali,, kalau anda ramah kami akan senang,neut,neut,neut,neut,neut,neut,neg,neg,neut,neut', '2024-02-19 19:20:00', NULL),
(387, 4, 'Kamarnya bagus, tapi servicenya jelek banget, tidak dapat handuk, sabun tidak ada, tidak ada kotak sampahnya juga, air minum juga tidak dapat.,neut,neut,neut,neut,neut,neg,neut,neut,neut,neut', '2024-02-19 19:20:00', NULL),
(388, 4, 'tamu sy mngatakan tidak memuaskan akan pelayanan kamarnya, diberikan kamar yg tdk bisa terkunci dari luar sehingga jika keluar mencari makan harus membawa bawa ranselx naik turun kelantai 3. ketika komplen minta pindah kamar tdk diladeni alias DICUEKI padahal sdh 3x tamu saya menginap disini.....,neut,neut,neut,neut,neut,neut,neg,neut,neut,neut', '2024-02-19 19:20:00', NULL),
(389, 4, 'Lokasi tengah kota, mau kemana-mana dekat. Sarapan enak, hanya sayang wi-fi tidak sampai kamar. Terima kasih Airy.,neut,neut,neut,neut,neut,neut,neut,pos,neut,neg', '2024-02-19 19:20:00', NULL),
(390, 4, 'Ga bisa tidur.. Kasur dan selimut bau..,neut,neut,neut,neut,neut,neg,neut,neut,neut,neut', '2024-02-19 19:20:00', NULL),
(391, 4, 'tidak disediakan snack airy dan perlengkapan mandi..,neut,neut,neut,neut,neut,neg,neut,neut,neut,neut', '2024-02-19 19:20:00', NULL),
(392, 4, 'Tempatnya bersih dan nyaman.Cuma wifinya aja yg lemod....,neut,neut,neut,neut,pos,neut,neut,neut,neut,neg', '2024-02-19 19:20:00', NULL),
(393, 4, 'Ac nya gk dingin,neg,neut,neut,neut,neut,neut,neut,neut,neut,neut', '2024-02-19 19:20:00', NULL),
(394, 4, 'Kamarnya enak luas tapi dapet sprei yg masih lembab gt jd bau,neut,neut,neut,neut,neut,neg,neut,neut,neut,neut', '2024-02-19 19:20:00', NULL),
(395, 4, 'Kebersihan sangat tidak baik, kamar bau. ,neut,neut,neg,neut,neg,neut,neut,neut,neut,neut', '2024-02-19 19:20:00', NULL),
(396, 4, 'Pelayanan staf hotel baik, layanan Hotel sangat baik, lebih ditingkatkan lg utk saluran tv dan air kmr mandinya, so far puas.,neut,neut,neut,neut,neut,neut,pos,neut,neg,neut', '2024-02-19 19:20:00', NULL),
(397, 4, 'Harga cukup murah, pelayanan baik. hanya 1 yg bermasalah...AC tidak bisa dingin meski sdh dibersihkan.,neg,neut,neut,neut,neut,neut,pos,neut,neut,neut', '2024-02-19 19:20:00', NULL);

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
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2024_02_18_064325_create_videos_table', 1),
(6, '2024_02_18_064338_create_comments_table', 1);

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
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `password`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin', '$2y$12$pt0ZmX743ZUOT3Uh59mh3ORHPulD./4VDn0.QkIl/UvoiR4yAcJEq', '2022-03-01 09:32:46', '2022-08-01 11:50:47');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `datasets`
--
ALTER TABLE `datasets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dataset_details`
--
ALTER TABLE `dataset_details`
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
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `datasets`
--
ALTER TABLE `datasets`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `dataset_details`
--
ALTER TABLE `dataset_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=398;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
