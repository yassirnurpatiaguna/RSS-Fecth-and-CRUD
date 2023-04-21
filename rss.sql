-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Mar 27, 2023 at 10:54 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `rss`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add news', 7, 'add_news'),
(26, 'Can change news', 7, 'change_news'),
(27, 'Can delete news', 7, 'delete_news'),
(28, 'Can view news', 7, 'view_news');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$260000$5zI0VNmjPSLMyC34k2JicG$MVXsMRMWVVv6cBGPEmIsQxvsEI3s/ckOAsrxtutSo/c=', '2023-03-27 20:52:13.104176', 1, 'admin', '', '', 'admin@gmail.com', 1, 1, '2023-03-27 19:49:18.741003');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(7, 'News', 'news'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'News', '0001_initial', '2023-03-27 19:48:44.508114'),
(2, 'contenttypes', '0001_initial', '2023-03-27 19:48:44.539235'),
(3, 'auth', '0001_initial', '2023-03-27 19:48:44.823159'),
(4, 'admin', '0001_initial', '2023-03-27 19:48:44.906568'),
(5, 'admin', '0002_logentry_remove_auto_add', '2023-03-27 19:48:44.922649'),
(6, 'admin', '0003_logentry_add_action_flag_choices', '2023-03-27 19:48:44.930648'),
(7, 'contenttypes', '0002_remove_content_type_name', '2023-03-27 19:48:44.973799'),
(8, 'auth', '0002_alter_permission_name_max_length', '2023-03-27 19:48:45.009979'),
(9, 'auth', '0003_alter_user_email_max_length', '2023-03-27 19:48:45.027977'),
(10, 'auth', '0004_alter_user_username_opts', '2023-03-27 19:48:45.036982'),
(11, 'auth', '0005_alter_user_last_login_null', '2023-03-27 19:48:45.066976'),
(12, 'auth', '0006_require_contenttypes_0002', '2023-03-27 19:48:45.068977'),
(13, 'auth', '0007_alter_validators_add_error_messages', '2023-03-27 19:48:45.078977'),
(14, 'auth', '0008_alter_user_username_max_length', '2023-03-27 19:48:45.094976'),
(15, 'auth', '0009_alter_user_last_name_max_length', '2023-03-27 19:48:45.110976'),
(16, 'auth', '0010_alter_group_name_max_length', '2023-03-27 19:48:45.126976'),
(17, 'auth', '0011_update_proxy_permissions', '2023-03-27 19:48:45.135976'),
(18, 'auth', '0012_alter_user_first_name_max_length', '2023-03-27 19:48:45.150766'),
(19, 'sessions', '0001_initial', '2023-03-27 19:48:45.177801');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('gjs9s8lhy9t1o9lt34rsutulg9wyv2u9', '.eJxVjMsOwiAQRf-FtSED8ggu3fsNZJgBqRpISrtq_Hdt0oVu7znnbiLiutS4jjzHicVFKHH63RLSM7cd8APbvUvqbZmnJHdFHnTIW-f8uh7u30HFUb91KBCKAQ-6nE2wDotSPhXgYDGxN4CAngNrKpYVG-UMERqrM5BLROL9Ad08OE8:1pgtp7:-C833bM1tFZpXJlgjl44mmqbgDsJUu4EUIH6BvaDUbk', '2023-04-10 20:52:13.106220');

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `pubDate` date NOT NULL,
  `description` longtext NOT NULL,
  `link` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`id`, `title`, `pubDate`, `description`, `link`) VALUES
(1, 'Heboh Video Sekum MUI Sukabumi Bawa Senjata, Asrorun Ni\'am: Perlu Tabayun', '2023-03-27', '<img src=\"https://akcdn.detik.net.id/community/media/visual/2022/07/19/deputi-pengembangan-pemuda-kemenpora-ri-asrorun-niam-sholeh-dok-istimewa_169.jpeg?w=360&amp;q=90\" /> Heboh Sekum MUI Sukabumi karena video pernyataan \'Jadilah hamba yang membunuh,\' dan bawa senjata. Ketua MUI Asrorun Ni\'am meminta semua pihak tabayun.', 'https://news.detik.com/berita/d-6641486/heboh-video-sekum-mui-sukabumi-bawa-senjata-asrorun-niam-perlu-tabayun'),
(2, '5 Fakta Bus Kecelakaan Bikin Separator Flyover Pesing Berantakan', '2023-03-27', '<img src=\"https://akcdn.detik.net.id/community/media/visual/2023/03/27/separator-jalan-pecah-di-flyover-pesing-jakarta-barat-kini-telah-dibersihkan_169.jpeg?w=360&amp;q=90\" /> Separator jalan pecah berhamburan di flyover Pesing, Jakbar, pada Senin (27/3) dini hari. Akibatnya, lalu lintas macet selama pecahan separator dibersihkan.', 'https://news.detik.com/berita/d-6641484/5-fakta-bus-kecelakaan-bikin-separator-flyover-pesing-berantakan'),
(3, 'NasDem Respons Dinkes DKI: Bukber Tak Bisa Dihindari, Prokes Sudah Khatam', '2023-03-27', '<img src=\"https://akcdn.detik.net.id/community/media/visual/2021/04/01/nova-harivan-paloh_169.jpeg?w=360&amp;q=90\" /> NasDem DKI merespons imbauan Dinkes agar warga menghindari bukber. Menurut NasDem bukber saat ini tak bisa dihindari oleh warga saat Ramadan.', 'https://news.detik.com/berita/d-6641481/nasdem-respons-dinkes-dki-bukber-tak-bisa-dihindari-prokes-sudah-khatam'),
(4, 'Seputar Ledakan Maut Peramu Mercon di Blitar-Malang-Magelang', '2023-03-27', '<img src=\"https://akcdn.detik.net.id/community/media/visual/2023/03/27/suasana-terkini-tkp-ledakan-petasan-di-kaliangkrik-magelang_169.jpeg?w=360&amp;q=90\" /> Di kuartal pertama 2023 ini, Indonesia sudah digegerkan 3 ledakan akibat racikan mercon petasan yang menyebabkan korban tewas.', 'https://news.detik.com/detiktv/d-6641480/seputar-ledakan-maut-peramu-mercon-di-blitar-malang-magelang'),
(5, 'Jadwal Imsak Jakarta Hari Ini, Selasa 28 Maret 2023', '2023-03-27', '<img src=\"https://akcdn.detik.net.id/community/media/visual/2023/03/27/jadwal-imsak-jakarta-hari-ini-28-maret-2023_169.jpeg?w=360&amp;q=90\" /> Kapan waktu imsak hari ini di Jakarta? Simak jadwal Imsakiyah Jakarta hari ini pada Selasa 28 Maret 2023 beserta waktu kapan waktu buka puasanya.', 'https://news.detik.com/berita/d-6640513/jadwal-imsak-jakarta-hari-ini-selasa-28-maret-2023'),
(6, 'Saat Profil Rafael Alun Dibocorkan Kemenkeu Sebagai Pegawai High Risk', '2023-03-27', '<img src=\"https://akcdn.detik.net.id/community/media/visual/2023/03/01/rafael-alun-keluar-dari-kpk-usai-diperiksa-85-jam-soal-harta-rp-56-m-5_169.jpeg?w=360&amp;q=90\" /> Kemenkeu mengungkap profil Rafael Alun Trisambodo berstatus merah sejak 2020. Disebutkan Rafael termasuk dalam pegawai yang berisiko tinggi.', 'https://news.detik.com/detiktv/d-6641477/saat-profil-rafael-alun-dibocorkan-kemenkeu-sebagai-pegawai-high-risk'),
(7, '9 Hal Diketahui soal KPK Usut Korupsi Tukin di Ditjen Minerba ESDM', '2023-03-27', '<img src=\"https://akcdn.detik.net.id/community/media/visual/2016/08/05/9051b9fc-d12e-41a5-9dc0-96e2360c3c68_169.jpg?w=360&amp;q=90\" /> Awal pekan ini, KPK menggeledah kantor Ditjen Minerba Kementerian ESDM. KPK mengusut kasus korupsi menyangkut pemotongan tunjangan kinerja (tukin) ASN.', 'https://news.detik.com/berita/d-6641476/9-hal-diketahui-soal-kpk-usut-korupsi-tukin-di-ditjen-minerba-esdm'),
(8, '3 Staf Tewas dalam Penembakan Massal di SD Nashville AS, Total 6 Korban', '2023-03-27', '<img src=\"https://akcdn.detik.net.id/community/media/visual/2023/03/28/3-staf-tewas-dalam-penembak-sekolah-di-nashville-as-total-6-korban_169.jpeg?w=360&amp;q=90\" /> Seorang wanita berusia 28 tahun menembak mati 3 anak dan 3 staf di sebuah sekolah dasar swasta di Nashville, Tennessee, AS. Total korban berjumlah 6 orang.', 'https://news.detik.com/internasional/d-6641470/3-staf-tewas-dalam-penembakan-massal-di-sd-nashville-as-total-6-korban'),
(9, 'Polri Perketat Pengawasan Perbatasan Masuknya Baju Bekas Impor ke RI', '2023-03-27', '<img src=\"https://akcdn.detik.net.id/community/media/visual/2023/03/24/polda-metro-sita-535-bal-baju-bekas-dari-china-korea-4_169.jpeg?w=360&amp;q=90\" /> Polri bakal mengoptimalkan pengawasan di pintu-pintu masuk Indonesia untuk mencegah aktivitas impor baju bekas ilegal.', 'https://news.detik.com/detiktv/d-6641466/polri-perketat-pengawasan-perbatasan-masuknya-baju-bekas-impor-ke-ri'),
(10, 'PM Spanyol Reshuffle Kabinet Usai 2 Menteri Maju Calon Wali Kota', '2023-03-27', '<img src=\"https://akcdn.detik.net.id/community/media/visual/2018/06/06/c0175911-8670-4537-a257-b467e5b6105a_169.jpeg?w=360&amp;q=90\" /> PM Spanyol Pedro Sanchez mengumumkan reshuffle kabinetnya. Pedro Sanchez mengganti dua menteri yang akan mencalonkan diri dalam pemilihan wali kota.', 'https://news.detik.com/internasional/d-6641465/pm-spanyol-reshuffle-kabinet-usai-2-menteri-maju-calon-wali-kota'),
(11, 'PAN Sebut Elektabilitas Erick Thohir Melejit Karena Kinerja di BUMN', '2023-03-27', '<img src=\"https://akcdn.detik.net.id/community/media/visual/2023/03/28/ketua-umum-perempuan-amanat-nasional-puan-intan-fauzi_169.jpeg?w=360&amp;q=90\" /> Ketua Umum Perempuan Amanat Nasional (PUAN) Intan Fauzi menyambut baik tren kenaikan elektabilitas Erick Thohir dalam bursa cawapres 2024.', 'https://news.detik.com/pemilu/d-6641463/pan-sebut-elektabilitas-erick-thohir-melejit-karena-kinerja-di-bumn'),
(12, 'Gantikan Nicholas Strugeon, Humza Yousaf Jadi Muslim Pertama Pimpin Skotlandia', '2023-03-27', '<img src=\"https://akcdn.detik.net.id/community/media/visual/2023/03/28/britain-scotland-politics-snp_169.jpeg?w=360&amp;q=90\" /> Humza Yousaf terpilih menjadi ketua Partai Nasional Skotlandia (SNP) dan pemimpin pemerintahan devolusi Skotlandia. Dia menggantikan Nicolas Sturgeon.', 'https://news.detik.com/internasional/d-6641450/gantikan-nicholas-strugeon-humza-yousaf-jadi-muslim-pertama-pimpin-skotlandia'),
(13, 'Penembakan Sekolah di Nashville AS, 3 Anak Tewas', '2023-03-27', '<img src=\"https://akcdn.detik.net.id/community/media/visual/2022/11/02/penembakan-di-chicago-saat-perayaan-halloween-kronologi-dan-jumlah-korban-1_169.jpeg?w=360&amp;q=90\" /> Tiga anak tewas ketika seorang penyerang melepaskan tembakan di sebuah sekolah dasar di Nashville, Tennessee, Amerika Serikat (AS).', 'https://news.detik.com/internasional/d-6641446/penembakan-sekolah-di-nashville-as-3-anak-tewas'),
(14, 'MP3I Dukung Mahfud Bongkar Transaksi Janggal Rp 349 T yang Diduga TPPU', '2023-03-27', '<img src=\"https://akcdn.detik.net.id/community/media/visual/2023/03/25/momen-said-aqil-buka-tadarus-kebangsaan-ormas-islam-2_169.jpeg?w=360&amp;q=90\" /> Majelis Permusyawaratan Pengasuh Pesantren se-Indonesia (MP3I) mendukung Menko Polhukam Mahfud Md untuk membongkar transaksi janggal Rp 349 triliun.', 'https://news.detik.com/berita/d-6641438/mp3i-dukung-mahfud-bongkar-transaksi-janggal-rp-349-t-yang-diduga-tppu'),
(15, 'Harga-harga Naik, Polres Jaksel Salurkan 1.000 Paket Bansos dari Kapolri', '2023-03-27', '<img src=\"https://akcdn.detik.net.id/community/media/visual/2023/03/27/polres-jaksel-salurkan-bantuan-sembako-dari-kapolri-ke-warga-terdampak-kenaikan-harga_169.png?w=360&amp;q=90\" /> Polres Jaksel menyebarkan 1.000 paket bansos dari Kapolri Jenderal Listyo Sigit kepada masyarakat yang terdampak kenaikan harga-harga di bulan puasa.', 'https://news.detik.com/berita/d-6641415/harga-harga-naik-polres-jaksel-salurkan-1000-paket-bansos-dari-kapolri'),
(16, 'Kapolda Gorontalo Janji Ungkap Penyebab Briptu RF Tewas Luka Tembak di Dada', '2023-03-27', '<img src=\"https://akcdn.detik.net.id/community/media/visual/2023/03/27/kapolda-gorontalo-irjen-helmy-santika-merangkul-ayah-briptu-rf-saat-prosesi-pemakaman-anaknya-di-tpu-ngadirgo-kecamatan-mijen-_169.jpeg?w=360&amp;q=90\" /> Kapolda Gorontalo Irjen Helmy Santika berjanji akan mengungkap latar belakang tewasnya Briptu RF yang tewas dengan luka tembak di dada.', 'https://news.detik.com/berita/d-6641414/kapolda-gorontalo-janji-ungkap-penyebab-briptu-rf-tewas-luka-tembak-di-dada'),
(17, 'Polri Gandeng KPAI Beri Trauma Healing ke Anak Korban Predator Seks', '2023-03-27', '<img src=\"https://akcdn.detik.net.id/community/media/visual/2015/06/18/2a0ea3c7-62f7-40ad-9d5a-9986de44c189_169.jpg?w=360&amp;q=90\" /> Hingga kini telah teridentifikasi 12 anak laki-laki yang menjadi korban tiga predator seks yang diringkus Bareskrim Polri.', 'https://news.detik.com/berita/d-6641400/polri-gandeng-kpai-beri-trauma-healing-ke-anak-korban-predator-seks'),
(18, 'Gestur Santun Prabowo ke Jokowi Saat \'Numpang\' Mobil RI 1', '2023-03-27', '<img src=\"https://akcdn.detik.net.id/community/media/visual/2023/03/27/gestur-prabowo-saat-izin-masuk-mobil-jokowi-tuai-pujian_169.jpeg?w=360&amp;q=90\" /> Prabowo Subianto mendampingi Presiden Joko Widodo (Jokowi) kunjungan kerja (kunker) ke Papua pertengahan Maret lalu. Saat itu Prabowo satu mobil dengan Jokowi.', 'https://news.detik.com/detiktv/d-6641391/gestur-santun-prabowo-ke-jokowi-saat-numpang-mobil-ri-1'),
(19, 'Balasan Menohok KPK ke MAKI soal Ramal Jawaban di Sidang Gugatan Kasus Lili', '2023-03-27', '<img src=\"https://akcdn.detik.net.id/community/media/visual/2023/02/08/kabag-pemberitaan-kpk-ali-fikri-yogi-detikcom_169.jpeg?w=360&amp;q=90\" /> Kabag Pemberitaan KPK Ali Fikri menyebut Boyamin seharusnya tidak menggunakan dasar analogi dalam persoalan hukum pidana.', 'https://news.detik.com/berita/d-6641389/balasan-menohok-kpk-ke-maki-soal-ramal-jawaban-di-sidang-gugatan-kasus-lili'),
(20, 'Momen KPK Bawa 2 Koper Usai Geledah Kantor Ditjen Minerba', '2023-03-27', '<img src=\"https://akcdn.detik.net.id/community/media/visual/2023/03/27/kpk-usai-geledah-kantor-ditjen-minerba-esdm_169.jpeg?w=360&amp;q=90\" /> KPK menggeledah Kantor Ditjen Mineral dan Batu Bara (Minerba) Kementerian ESDM di Tebet. Setelah menggeledah selama 8 jam, KPK keluar membawa 2 koper.', 'https://news.detik.com/detiktv/d-6641388/momen-kpk-bawa-2-koper-usai-geledah-kantor-ditjen-minerba'),
(21, 'Gestur Prabowo Saat Izin Masuk Mobil Jokowi Tuai Pujian', '2023-03-27', '<img src=\"https://akcdn.detik.net.id/community/media/visual/2023/03/27/gestur-prabowo-saat-izin-masuk-mobil-jokowi-tuai-pujian_169.jpeg?w=360&amp;q=90\" /> Sikap Menhan Prabowo Subianto di berbagai kesempatan saat mendampingi Presiden Jokowi menuai sorotan publik. Sikap Prabowo mendapat komentar positif.', 'https://news.detik.com/pemilu/d-6641383/gestur-prabowo-saat-izin-masuk-mobil-jokowi-tuai-pujian'),
(22, 'Cerita 2 Wanita Gagalkan Pria Hendak Lompat dari Jembatan Otista Bogor', '2023-03-27', '<img src=\"https://akcdn.detik.net.id/community/media/visual/2023/03/27/aksi-2-wanita-gagalkan-pria-hendak-lompat-dari-jembatan-otista-bogor_169.jpeg?w=360&amp;q=90\" /> Beruntung, aksi nekat pria hendak melompat dari jembatan Otista, Bogor, digagalkan dua wanita yang sedang melintas.', 'https://news.detik.com/berita/d-6641378/cerita-2-wanita-gagalkan-pria-hendak-lompat-dari-jembatan-otista-bogor'),
(23, 'Sertijab, Kombes Mukti Juharsa Resmi Jadi Dirtipidnarkoba Bareskrim Polri', '2023-03-27', '<img src=\"https://akcdn.detik.net.id/community/media/visual/2023/03/27/kabareskrim-pimpin-sertijab-dirtipidnarkoba-bareskrim-polri_169.jpeg?w=360&amp;q=90\" /> Kabareskrim memimpin prosesi sertijab Dirtipidnarkoba Bareskrim Polri. Jabatan Dirtipidnarkoba diserahterimakan kepada Kombes Mukti Juharsa.', 'https://news.detik.com/berita/d-6641377/sertijab-kombes-mukti-juharsa-resmi-jadi-dirtipidnarkoba-bareskrim-polri'),
(24, 'Gaet Milenial, PPP Luncurkan Program Green Action', '2023-03-27', '<img src=\"https://akcdn.detik.net.id/community/media/visual/2023/03/27/program-green-acton-ppp_169.jpeg?w=360&amp;q=90\" /> Dengan adanya program tersebut, PPP akan lebih giat untuk melakukan pendekatan ke para milenial.', 'https://news.detik.com/pemilu/d-6641366/gaet-milenial-ppp-luncurkan-program-green-action'),
(25, 'Polisi Salurkan Bantuan Kapolri di \'Kampung Gelap\' Tambora Jakbar', '2023-03-27', '<img src=\"https://akcdn.detik.net.id/community/media/visual/2023/03/27/polisi-menyalurkan-bantuan-kapolri-jenderal-listyo-sigit-prabowo-ke-kampung-gelap-di-tambora-jakbar_169.jpeg?w=360&amp;q=90\" /> Polisi menyalurkan bantuan kepada \'Kampung Gelap\' di Tambora, Jakbar. Bansos itu untuk membantu masyarakat yang terdampak fluktuasi harga sembako saat puasa.', 'https://news.detik.com/berita/d-6641353/polisi-salurkan-bantuan-kapolri-di-kampung-gelap-tambora-jakbar'),
(26, 'Buntut Panjang Rusia Usai Kerahkan Nuklir Taktis ke Belarusia', '2023-03-27', '<img src=\"https://akcdn.detik.net.id/community/media/visual/2022/12/22/vladimir-putin_169.jpeg?w=360&amp;q=90\" /> Rusia mengambil langkah berani dengan menempatkan senjata nuklir taktis di Belarusia. Sikap Rusia tersebut berbuntut panjang.', 'https://news.detik.com/internasional/d-6641350/buntut-panjang-rusia-usai-kerahkan-nuklir-taktis-ke-belarusia'),
(27, 'Mobil-mobil Ini Jadi Korban Banjir di Irak', '2023-03-27', '<img src=\"https://akcdn.detik.net.id/community/media/visual/2023/03/27/mobil-mobil-ini-jadi-korban-banjir-di-irak-1.jpeg?w=360&amp;q=90\" /> Banjir merendam sejumlah wilayah di Irak imbas hujan lebat. Akibatnya, puluhan mobil menjadi korban banjir.', 'https://news.detik.com/foto-news/d-6640203/mobil-mobil-ini-jadi-korban-banjir-di-irak'),
(28, 'Ancam DO 7 Mahasiswa Tersangka Tawuran, Unhas Mengaku Dapat Intimidasi', '2023-03-27', '<img src=\"https://akcdn.detik.net.id/community/media/visual/2023/03/20/para-tersangka-kasus-tawuran-mahasiswa-unhas-makassar_169.jpeg?w=360&amp;q=90\" /> Unhas Makassar mengaku mendapat intimidasi setelah menyiapkan sanksi drop out terhadap 7 mahasiswa tersangka tawuran antarfakultas.', 'https://news.detik.com/berita/d-6641344/ancam-do-7-mahasiswa-tersangka-tawuran-unhas-mengaku-dapat-intimidasi'),
(29, 'Satpol PP Bogor Amankan Pengamen Paksa Minta Uang ke Penumpang Angkot', '2023-03-27', '<img src=\"https://akcdn.detik.net.id/community/media/visual/2023/03/27/m-sholihindetikcom_169.jpeg?w=360&amp;q=90\" /> Seorang pengamen diamankan Satpol PP Bogor karena meresahkan penumpang angkot. Pengamen ini disebut memaksa meminta uang ke penumpang.', 'https://news.detik.com/berita/d-6641339/satpol-pp-bogor-amankan-pengamen-paksa-minta-uang-ke-penumpang-angkot'),
(30, 'Polisi Ungkap Mafia Umrah Bikin Jemaah Terlunta-lunta di Saudi', '2023-03-27', '<img src=\"https://akcdn.detik.net.id/community/media/visual/2023/01/13/dirkrimum-polda-metro-jaya-kombes-hengki-haryadi-3_169.jpeg?w=360&amp;q=90\" /> Direktorat Reskrimum Polda Metro Jaya mengungkap penipuan jemaah umrah. Dari ratusan korban totak kerugian hampir sekitar Rp 100 miliar.', 'https://news.detik.com/berita/d-6641338/polisi-ungkap-mafia-umrah-bikin-jemaah-terlunta-lunta-di-saudi'),
(31, 'Jelang Pemilu, Polri Patroli Siber Konten Hoax di Medsos 24 Jam Nonstop', '2023-03-27', '<img src=\"https://akcdn.detik.net.id/community/media/visual/2021/04/01/medsos_169.jpeg?w=360&amp;q=90\" /> Dittipidsiber Bareskrim Polri melakukan patroli siber 24 jam terhadap konten dan berita hoax untuk diblokir menjelang Pemilu 2024.', 'https://news.detik.com/berita/d-6641326/jelang-pemilu-polri-patroli-siber-konten-hoax-di-medsos-24-jam-nonstop'),
(32, 'Beda 2 Tahun Tuntutan Bui AKBP Dody dan Linda di Kasus Teddy Minahasa', '2023-03-27', '<img src=\"https://akcdn.detik.net.id/community/media/visual/2023/03/27/akbp-dody-saat-menjalani-sidang-tuntutan-kasus-narkoba-silvia-detikcom_169.jpeg?w=360&amp;q=90\" /> AKBP Dody dan Linda telah menjalani sidang tuntutan kasus narkoba yang juga menjerat Irjen Teddy Minahasa sebagai terdakwa. Tuntutan keduanya berbeda 2 tahun.', 'https://news.detik.com/berita/d-6641325/beda-2-tahun-tuntutan-bui-akbp-dody-dan-linda-di-kasus-teddy-minahasa'),
(33, 'Muzani Bertemu DPLN Gerindra Saudi, Minta Kerja Keras Menangkan Prabowo 2024', '2023-03-27', '<img src=\"https://akcdn.detik.net.id/community/media/visual/2023/03/27/sekjen-partai-gerindra-ahmad-muzani_169.jpeg?w=360&amp;q=90\" /> Sekjen Partai Gerindra Ahmad Muzani bersilaturahmi sekaligus buka bersama dengan pengurus DPLN Gerindra Arab Saudi. Muzani minta kerja keras menangkan Prabowo.', 'https://news.detik.com/pemilu/d-6641323/muzani-bertemu-dpln-gerindra-saudi-minta-kerja-keras-menangkan-prabowo-2024'),
(34, 'Panas! Korut Luncurkan Rudal Jelang Kapal Induk AS Tiba di Korsel', '2023-03-27', '<img src=\"https://akcdn.detik.net.id/community/media/visual/2023/03/25/korea-utara-uji-coba-drone-tempur-bawah-laut-2_169.jpeg?w=360&amp;q=90\" /> Korut terus memprovokasi Korsel dan AS yang tengah latihan militer bersama. Terbaru, Korsel mendeteksi dua rudal balistik jarak pendek milik Korut.', 'https://news.detik.com/detiktv/d-6641302/panas-korut-luncurkan-rudal-jelang-kapal-induk-as-tiba-di-korsel'),
(35, 'Sisa-sisa Badai Tornado yang Menghantam Kawasan Georgia', '2023-03-27', '<img src=\"https://akcdn.detik.net.id/community/media/visual/2023/03/27/sisa-sisa-badai-tornado-yang-menghantam-kawasan-georgia-100-rumah-rusak-2_169.jpeg?w=360&amp;q=90\" /> Badai tornado telah menghantam kawasan di West Point, Georgia kemarin. Akibatnya, 100 rumah mengalami kerusakan.', 'https://news.detik.com/foto-news/d-6639896/sisa-sisa-badai-tornado-yang-menghantam-kawasan-georgia'),
(36, 'Kasus \'Lord Luhut\', Haris Azhar dan Fatia Akan Diadili di PN Jaktim', '2023-03-27', '<img src=\"https://akcdn.detik.net.id/community/media/visual/2023/03/06/kasus-haris-azhar-dan-fatia-dilimpahkan-ke-kejaksaan-hari-ini-1_169.jpeg?w=360&amp;q=90\" /> Kejari Jaktim telah melimpahkan perkara dugaan pencemaran nama baik Luhut Binsar Pandjaitan dengan tersangka Haris Azhar dan Fatia Maulidiyanti ke PN Jaktim.', 'https://news.detik.com/berita/d-6641292/kasus-lord-luhut-haris-azhar-dan-fatia-akan-diadili-di-pn-jaktim'),
(37, 'Perampok Berpistol Beraksi di Cilacap, 2 Warga Tertembak', '2023-03-27', '<img src=\"https://akcdn.detik.net.id/community/media/visual/2023/03/27/warga-terlihat-menolong-korban-perampokan-yang-terjadi-di-desa-kaliwunggu-kecamatan-kedungreja-kabupaten-cilacap-senin-2732023_169.jpeg?w=360&amp;q=90\" /> Kawanan perampok warung milik warga itu membawa senjata api (senpi).', 'https://news.detik.com/berita/d-6641289/perampok-berpistol-beraksi-di-cilacap-2-warga-tertembak'),
(38, 'Mahfud: Tak Ada Hubungan Diplomatik dengan Israel hingga Palestina Merdeka', '2023-03-27', '<img src=\"https://akcdn.detik.net.id/community/media/visual/2022/12/15/catatan-akhir-tahun-menko-polhukam-1_43.jpeg?w=360&amp;q=90\" /> Mahfud Md menegaskan Indonesia tak akan membuka hubungan diplomatik dengan Israel selama Palestina belum merdeka.', 'https://news.detik.com/berita/d-6641276/mahfud-tak-ada-hubungan-diplomatik-dengan-israel-hingga-palestina-merdeka'),
(39, 'Robohnya Tembok Diterjang Angin Kencang Tewaskan Tukang', '2023-03-27', '<img src=\"https://akcdn.detik.net.id/community/media/visual/2023/03/27/tembok-rumah-di-kembangan-jakbar-yang-tengah-direnovasi-roboh-akibatnya-3-pekerja-tertimpa-tembok-begini-proses-evakuasinya-ya-4_169.jpeg?w=360&amp;q=90\" /> Tembok rumah yang sedang direnovasi roboh di Jakarta Barat (Jakbar) akibat angin kencang. Satu orang tewas akibat insiden ini, sementara 2 lainnya terluka.', 'https://news.detik.com/berita/d-6641272/robohnya-tembok-diterjang-angin-kencang-tewaskan-tukang'),
(40, 'Mardiono Cerita Jatuh Bangun PPP, Yakin Suara di Pemilu 2024 Naik', '2023-03-27', '<img src=\"https://akcdn.detik.net.id/community/media/visual/2023/03/27/plt-ketua-umum-ppp-muhamad-mardiono_169.jpeg?w=360&amp;q=90\" /> Dan Insyallah sekarang kami ada di bawah, Insyallah besok kami akan naik ke atas. Itu sudah pasti, Plt Ketua Umum PPP, Muhammad Mardiono.', 'https://news.detik.com/pemilu/d-6641252/mardiono-cerita-jatuh-bangun-ppp-yakin-suara-di-pemilu-2024-naik'),
(41, 'Pakar Terorisme Sebut Kedatangan Israel Ancam Stabilitas Keamanan RI', '2023-03-27', '<img src=\"https://akcdn.detik.net.id/community/media/visual/2023/03/20/demo-di-kawasan-patung-kuda-ilham-detikcom.jpeg?w=360&amp;q=90\" /> Kedatangan Timnas Israel dinilai akan mengancam stabilitas keamanan Indonesia karena banyaknya aksi terorisme.', 'https://news.detik.com/berita/d-6641248/pakar-terorisme-sebut-kedatangan-israel-ancam-stabilitas-keamanan-ri'),
(42, 'Pengguna KRL ke Anggota DPR soal \'Chaos Saat Lebaran\': Pernah Naik Kereta?', '2023-03-27', '<img src=\"https://akcdn.detik.net.id/community/media/visual/2023/03/27/stasiun-manggarai-dipadati-penumpang-pada-sore-ini-kepadatan-penumpang-juga-terjadi-di-dalam-kereta-rel-listrik-krl-magdalena-_169.jpeg?w=360&amp;q=90\" /> Anggota Komisi VI Evita Nursanty menyebut kondisi penumpang chaos di kereta hanya terjadi pada momen-momen tertentu. Pengguna KRL merespons.', 'https://news.detik.com/berita/d-6641244/pengguna-krl-ke-anggota-dpr-soal-chaos-saat-lebaran-pernah-naik-kereta'),
(43, 'Momen Pertemuan Orlando Bloom dan Zelensky di Kyiv', '2023-03-27', '<img src=\"https://akcdn.detik.net.id/community/media/visual/2020/03/18/f75aabb9-044d-4999-97e4-38070c9373ed_11.jpeg?w=360&amp;q=90\" /> Orlando Bloom bertemu dengan Presiden Ukraina Volodymyr Zelensky di Kyiv, Ukraina, pada Minggu (26/3). Orlando juga mengunjungi pusat anak-anak di sana.', 'https://news.detik.com/detiktv/d-6641239/momen-pertemuan-orlando-bloom-dan-zelensky-di-kyiv'),
(44, 'Keponakan Wamenkumham Jadi Tersangka Pencemaran Nama Baik', '2023-03-27', '<img src=\"https://akcdn.detik.net.id/community/media/visual/2023/03/21/wamenkumham-edward-omar-sharif-hiariej_169.jpeg?w=360&amp;q=90\" /> AB ditetapkan sebagai tersangka atas kasus pencemaran nama baik.', 'https://news.detik.com/berita/d-6641233/keponakan-wamenkumham-jadi-tersangka-pencemaran-nama-baik'),
(45, 'Diusut KPK, Kasus Korupsi Cukai Rokok Rugikan Negara Rp 250 M Lebih', '2023-03-27', '<img src=\"https://akcdn.detik.net.id/community/media/visual/2015/12/28/69bae68b-1d8e-430c-b130-0bc9367b2f65_169.jpg?w=360&amp;q=90\" /> KPK mengungkapkan kerugian negara di kasus tersebut mencapai Rp 250 miliar lebih.', 'https://news.detik.com/berita/d-6641230/diusut-kpk-kasus-korupsi-cukai-rokok-rugikan-negara-rp-250-m-lebih'),
(46, 'MAKI Ramal Jawaban KPK di Sidang Gugatan Penghentian Kasus Lili Pintauli', '2023-03-27', '<img src=\"https://akcdn.detik.net.id/community/media/visual/2022/05/17/boyamin-saiman_169.jpeg?w=360&amp;q=90\" /> MAKI meramal jawaban yang akan diberikan KPK dalam sidang dengan agenda jawaban tergugat yang digelar besok.', 'https://news.detik.com/berita/d-6641226/maki-ramal-jawaban-kpk-di-sidang-gugatan-penghentian-kasus-lili-pintauli'),
(47, 'Polri Optimalkan Pengawasan di Pintu Masuk Pakaian Bekas Impor', '2023-03-27', '<img src=\"https://akcdn.detik.net.id/community/media/visual/2023/03/27/karo-penmas-divhumas-polri-brigjen-ahmad-ramadhan_169.jpeg?w=360&amp;q=90\" /> Kita lebih memprioritaskan kepada hulunya. Dalam arti masuknya barang tersebut ke Indonesia ya, kata Karo Penmas Divhumas Polri Brigjen Ahmad Ramadhan.', 'https://news.detik.com/berita/d-6641224/polri-optimalkan-pengawasan-di-pintu-masuk-pakaian-bekas-impor'),
(48, 'Menag Usul Calon Jemaah Haji Lunas Tunda 2022 Tak Dibebani Biaya Tambahan', '2023-03-27', '<img src=\"https://akcdn.detik.net.id/community/media/visual/2023/03/27/jemaah-haji-lunas-tunda-2022-tak-perlu-bayar-biaya-tambahan_169.jpeg?w=360&amp;q=90\" /> Menag Yaqut Cholil Qoumas mengusulkan agar calon anggota jemaah haji lunas tunda 2022 tidak dibebani menambah selisih Biaya Perjalanan Ibadah Haji (BIPIH).', 'https://news.detik.com/berita/d-6641197/menag-usul-calon-jemaah-haji-lunas-tunda-2022-tak-dibebani-biaya-tambahan'),
(49, 'Lihat Lagi Momen Komisi III DPR Gelar Seleksi Hakim Agung', '2023-03-27', '<img src=\"https://akcdn.detik.net.id/community/media/visual/2023/03/27/lihat-lagi-momen-komisi-iii-dpr-gelar-seleksi-hakim-agung_169.jpeg?w=360&amp;q=90\" /> Komisi III DPR menggelar seleksi Hakim Agung di kompleks Parlemen, Jakarta. Ada 6 kandidat yang mengikuti seleksi hari ini.', 'https://news.detik.com/foto-news/d-6641182/lihat-lagi-momen-komisi-iii-dpr-gelar-seleksi-hakim-agung'),
(50, 'KPK Usut Keterkaitan Kemenkeu di Kasus Korupsi Ditjen Minerba', '2023-03-27', '<img src=\"https://akcdn.detik.net.id/community/media/visual/2023/02/16/kabag-pemberitaan-kpk-ali-fikri-yogi-detikcom_169.jpeg?w=360&amp;q=90\" /> KPK akan mendalami ada atau tidaknya keterkaitan kasus ini dengan BPK dan Kementerian Keuangan (Kemenkeu).', 'https://news.detik.com/berita/d-6641195/kpk-usut-keterkaitan-kemenkeu-di-kasus-korupsi-ditjen-minerba'),
(51, 'Relawan Ganjar Beri Bantuan Oli Gratis ke Sopir Truk', '2023-03-27', '<img src=\"https://akcdn.detik.net.id/community/media/visual/2023/03/27/komunitas-sopir-truk-kst-pendukung-ganjar-pranowo-banten-mengadakan-buka-puasa-bersama-para-sopir-di-parkiran-truk-pak-bambang.jpeg?w=360&amp;q=90\" /> Hal itu dilakukan sebagai salah satu wujud kepedulian kepada sesama sopir truk.', 'https://news.detik.com/berita/d-6641190/relawan-ganjar-beri-bantuan-oli-gratis-ke-sopir-truk'),
(52, 'Ternyata! Separator Pecah di Flyover Pesing Ditabrak Bus Mercy', '2023-03-27', '<img src=\"https://akcdn.detik.net.id/community/media/visual/2023/03/27/separator-jalan-pecah-di-flyover-pesing-jakarta-barat-ternyata-ditabrak-bus_169.jpeg?w=360&amp;q=90\" /> Separator jalan pecah di flyover Pesing sempat bikin lalin macet. Ternyata separator tersebut pecah setelah ditabrak bus.', 'https://news.detik.com/berita/d-6641188/ternyata-separator-pecah-di-flyover-pesing-ditabrak-bus-mercy'),
(53, 'Komisi II DPR Dalami Beda Amar Putusan Bawaslu Pertama dan Kedua soal Prima', '2023-03-27', '<img src=\"https://akcdn.detik.net.id/community/media/visual/2019/11/20/2158080f-19df-4c03-8397-36ab6d105e37_169.jpeg?w=360&amp;q=90\" /> Doli menyoroti putusan Bawaslu soal verifikasi ulang berkas pemilu Partai Prima. Doli khawatir langkah itu diikuti partai lain sehingga ganggu tahapan pemilu.', 'https://news.detik.com/pemilu/d-6641180/komisi-ii-dpr-dalami-beda-amar-putusan-bawaslu-pertama-dan-kedua-soal-prima'),
(54, 'Dewas Singgung \'Big Fish\' Belum Terjaring, Firli Bahuri Malah Pamer Ini', '2023-03-27', '<img src=\"https://akcdn.detik.net.id/community/media/visual/2022/12/08/bupati-bangkalan-ditahan-kpk-3_169.jpeg?w=360&amp;q=90\" /> Ketua KPK Firli Bahuri memaparkan KPK saat ini bekerja on the track dan telah meraih capaian kinerja organisasi sebesar 101,22%.', 'https://news.detik.com/berita/d-6641164/dewas-singgung-big-fish-belum-terjaring-firli-bahuri-malah-pamer-ini'),
(55, 'BMKG: Prakiraan Cuaca Besok 28 Maret 2023 Jakarta, Sudah Dicek?', '2023-03-27', '<img src=\"https://akcdn.detik.net.id/community/media/visual/2023/03/27/bmkg-prakiraan-cuaca-besok-28-maret-2023-jakarta_169.jpeg?w=360&amp;q=90\" /> Prakiraan cuaca besok telah diumumkan oleh BMKG. Selain wilayah Jakarta, Anda juga bisa mengecek prakiraan cuaca besok di Bogor, Depok, Tangerang, dan Bekasi.', 'https://news.detik.com/berita/d-6641014/bmkg-prakiraan-cuaca-besok-28-maret-2023-jakarta-sudah-dicek'),
(56, 'Kebakaran Rumah di Setiabudi Jaksel, 15 Unit Mobil Damkar Dikerahkan', '2023-03-27', '<img src=\"https://akcdn.detik.net.id/community/media/visual/2016/01/05/460cd626-9387-49a7-afe1-a6d15791718b_169.jpg?w=360&amp;q=90\" /> Kebakaran terjadi di kawasan Setiabudi, Jakarta Selatan (Jaksel). Sebanyak 15 unit mobil pemadam kebakaran (damkar) dikerahkan.', 'https://news.detik.com/berita/d-6641162/kebakaran-rumah-di-setiabudi-jaksel-15-unit-mobil-damkar-dikerahkan'),
(57, 'Ramai Dikecam Barat, Rusia Tetap Kerahkan Senjata Nuklir ke Belarusia!', '2023-03-27', '<img src=\"https://akcdn.detik.net.id/community/media/visual/2022/11/09/juru-bicara-kremlin-dmitry-peskov_169.jpeg?w=360&amp;q=90\" /> Rusia menegaskan bahwa rentetan kecaman Barat tidak akan mengubah rencana yang diumumkan Putin untuk mengerahkan senjata nuklir taktis ke Belarusia.', 'https://news.detik.com/internasional/d-6641160/ramai-dikecam-barat-rusia-tetap-kerahkan-senjata-nuklir-ke-belarusia'),
(58, 'Pemprov Banten Sediakan 900 Kursi Mudik Gratis, Ini Daftar Tujuannya', '2023-03-27', '<img src=\"https://akcdn.detik.net.id/community/media/visual/2022/11/15/pj-gubernur-banten-al-muktabar_169.jpeg?w=360&amp;q=90\" /> Pemprov Banten menyediakan 20 bus untuk mudik gratis. Disediakan kurang lebih 900 kursi mudik gratis.', 'https://news.detik.com/berita/d-6641150/pemprov-banten-sediakan-900-kursi-mudik-gratis-ini-daftar-tujuannya'),
(59, 'Raker Bareng Komisi VIII DPR, Kemenag Bahas soal Biaya Tambahan Haji', '2023-03-27', '<img src=\"https://akcdn.detik.net.id/community/media/visual/2023/03/27/jemaah-haji-lunas-tunda-2022-tak-perlu-bayar-biaya-tambahan_169.jpeg?w=360&amp;q=90\" /> Menag Yaqut Cholil Qoumas mengusulkan para jemaah haji lunas tunda 2022 tidak perlu tambah Biaya Perjalanan Ibadah Haji (Bipih) 1444 Hijriah.', 'https://news.detik.com/foto-news/d-6641114/raker-bareng-komisi-viii-dpr-kemenag-bahas-soal-biaya-tambahan-haji'),
(60, 'Kronologi Natalia Rusli Tipu Korban Indosurya hingga Serahkan Diri', '2023-03-27', '<img src=\"https://akcdn.detik.net.id/community/media/visual/2023/03/27/polisi-tampilkan-pengacara-natalia-rusli-tersangka-kasus-penipuan-korban-indosurya-berbaju-oranye-tanpa-tulisan-tahanan_169.jpeg?w=360&amp;q=90\" /> Natalia Rusli jadi tersangka kasus dugaan penipuan terhadap korban Indosurya. Natalia Rusli sempat jadi DPO, tapi akhirnya menyerahkan diri ke polisi.', 'https://news.detik.com/berita/d-6641146/kronologi-natalia-rusli-tipu-korban-indosurya-hingga-serahkan-diri'),
(61, '5 Berita Terpopuler Internasional Hari Ini', '2023-03-27', '<img src=\"https://akcdn.detik.net.id/community/media/visual/2023/03/27/demonstran-polisi-bentrok-buntut-pemecatan-menhan-israel_169.jpeg?w=360&amp;q=90\" /> Presiden Israel Isaac Herzog menyerukan penghentian segera untuk reformasi peradilan kontroversial yang terus diupayakan pemerintahan PM Benjamin Netanyahu.', 'https://news.detik.com/internasional/d-6641143/5-berita-terpopuler-internasional-hari-ini'),
(62, 'Pemkot Medan Buka Suara soal Cerita Direktur KPK Kena Pungli Rp 20 Ribu', '2023-03-27', '<img src=\"https://akcdn.detik.net.id/community/media/visual/2019/10/22/1a62b1c7-d64b-420e-a52d-12320c28b666_169.jpeg?w=360&amp;q=90\" /> Kabag Tapem Setda Kota Medan, Andi Mario, mengaku belum tahu adanya persoalan tersebut. Dia mengatakan pungli itu masih dugaan yang belum tentu kebenarannya.', 'https://news.detik.com/berita/d-6641141/pemkot-medan-buka-suara-soal-cerita-direktur-kpk-kena-pungli-rp-20-ribu'),
(63, 'Jokowi Perintahkan Mahfud Md Buka-bukaan ke DPR soal Geger Rp 349 T', '2023-03-27', '<img src=\"https://akcdn.detik.net.id/community/media/visual/2023/01/11/mahfud-md-anggi-detikcom_169.jpeg?w=360&amp;q=90\" /> Presiden Joko Widodo (Jokowi) memerintahkan Menko Polhukam Mahfud Md untuk menjelaskan seterang-terangnya mengenai transaksi janggal Rp 349 triliun.', 'https://news.detik.com/berita/d-6641140/jokowi-perintahkan-mahfud-md-buka-bukaan-ke-dpr-soal-geger-rp-349-t'),
(64, 'Jl Gatot Subroto Arah Cawang Macet, Warga Harap WFH Selama Ramadan', '2023-03-27', '<img src=\"https://akcdn.detik.net.id/community/media/visual/2023/03/27/kemacetan-terjadi-di-ruas-jalan-gatot-subroto-tepatnya-di-pancoran-jakarta-selatan-jaksel-petang-ini-kemacetan-terjadi-akibat--1_169.jpeg?w=360&amp;q=90\" /> Kemacetan terjadi di ruas Jalan Gatot Subroto, tepatnya di Pancoran, Jakarta Selatan (Jaksel), petang ini. Kemacetan terjadi akibat tingginya volume kendaraan.', 'https://news.detik.com/berita/d-6641139/jl-gatot-subroto-arah-cawang-macet-warga-harap-wfh-selama-ramadan'),
(65, 'Bawaslu Selidiki Dugaan Kader PDIP Bagi-bagi Amplop di Masjid', '2023-03-27', '<img src=\"https://akcdn.detik.net.id/community/media/visual/2023/03/09/plt-ketua-dpd-pdi-perjuangan-jawa-timur-said-abdullah-1_169.jpeg?w=360&amp;q=90\" /> Beredar video di medsos seorang pria bagi-bagi amplop berisi uang Rp 300 ribu bergambar logo PDIP dan Ketua DPP PDIP, Said Abdullah. Bawaslu akan menyelidiki.', 'https://news.detik.com/detiktv/d-6641131/bawaslu-selidiki-dugaan-kader-pdip-bagi-bagi-amplop-di-masjid'),
(66, 'Momen Tahanan di Jambi Bisa Peluk Putrinya Usai Sel Dibuka Polisi', '2023-03-27', '<img src=\"https://akcdn.detik.net.id/community/media/visual/2023/03/27/video-anggota-polisi-di-jambi-bernama-bripka-handoko-membukakan-pintu-sel-supaya-tahanan-bisa-memeluk-putrinya-yang-menjenguk-_169.png?w=360&amp;q=90\" /> Video seorang tahanan dengan sukacita memeluk putrinya yang sedang menjenguk viral di media sosial (medsos).', 'https://news.detik.com/detiktv/d-6641130/momen-tahanan-di-jambi-bisa-peluk-putrinya-usai-sel-dibuka-polisi'),
(67, 'Jokowi Minta Anggaran Bukber Pejabat Diganti Kegiatan yang Bermanfaat', '2023-03-27', '<img src=\"https://akcdn.detik.net.id/community/media/visual/2023/03/20/jokowi-youtube-kementerian-kesehatan_169.jpeg?w=360&amp;q=90\" /> Presiden Joko Widodo (Jokowi) meminta anggaran buka puasa bersama (bukber) para pejabat dialihkan untuk mengadakan kegiatan yang bermanfaat.', 'https://news.detik.com/detiktv/d-6641123/jokowi-minta-anggaran-bukber-pejabat-diganti-kegiatan-yang-bermanfaat'),
(68, 'Bom Bunuh Diri Guncang Ibu Kota Afghanistan, 6 Warga Sipil Tewas', '2023-03-27', '<img src=\"https://akcdn.detik.net.id/community/media/visual/2019/11/13/da607668-78f1-4bda-8712-43c284975b87_169.jpeg?w=360&amp;q=90\" /> Serangan bom bunuh diri terjadi di dekat gedung Kementerian Luar Negeri Afghanistan di Kabul, menewaskan enam warga sipil dan melukai beberapa orang lainnya.', 'https://news.detik.com/internasional/d-6641122/bom-bunuh-diri-guncang-ibu-kota-afghanistan-6-warga-sipil-tewas'),
(69, 'Apa Itu Apron Bandara? Terkait Viralnya Mobil Alphard Masuk Apron', '2023-03-27', '<img src=\"https://akcdn.detik.net.id/community/media/visual/2023/03/27/foto-viral-di-internet-toyota-alphard-dan-mobil-bea-cukai-masuk-apron-bandara_169.jpeg?w=360&amp;q=90\" /> Apa itu apron bandara? Begini pengertian dan aturan masuk apron bandara. Simak juga penjelasan Kemenhub soal mobil Alphard masuk apron bandara Soekarno Hatta.', 'https://news.detik.com/berita/d-6641108/apa-itu-apron-bandara-terkait-viralnya-mobil-alphard-masuk-apron'),
(70, 'Kapolri Kirim Bantuan Kemanusiaan 50 Ton Beras untuk Warga NTT', '2023-03-27', '<img src=\"https://akcdn.detik.net.id/community/media/visual/2023/03/27/polri-mengirimkan-bantuan-kemanusiaan-masing-masing-sebanyak-25-ton-ke-polres-ende-dan-polres-sikka-maumere-untuk-dibagi-bagik-1_169.jpeg?w=360&amp;q=90\" /> Polri mengirimkan bantuan kemanusiaan, masing-masing sebanyak 25 ton ke Polres Ende dan Polres Sikka (Maumere) untuk dibagi-bagikan ke warga yang membutuhkan.', 'https://news.detik.com/berita/d-6641105/kapolri-kirim-bantuan-kemanusiaan-50-ton-beras-untuk-warga-ntt'),
(71, 'Legislator PDIP Sentil Mahfud dan Sri Mulyani Terkait Gaduh Rp 349 Triliun', '2023-03-27', '<img src=\"https://akcdn.detik.net.id/community/media/visual/2019/05/20/af7e2291-e51b-4128-ba37-83e56867b489_169.jpeg?w=360&amp;q=90\" /> Masinton mengaku heran dengan posisi menteri di eksekutif yang semestinya bisa bersikap profesional bukan malah mengomentari semua hal.', 'https://news.detik.com/berita/d-6641100/legislator-pdip-sentil-mahfud-dan-sri-mulyani-terkait-gaduh-rp-349-triliun'),
(72, 'Kasat Lantas Polres Malang Diperiksa Propam Usai Viral Punya Barang Mewah', '2023-03-27', '<img src=\"https://akcdn.detik.net.id/community/media/visual/2023/03/27/unggahan-di-media-sosial-yang-menyampaikan-narasi-terkait-kepemilikan-barang-mewah-oleh-kasat-lantas-polres-malang-akp-agnis-j_169.jpeg?w=360&amp;q=90\" /> Kapolres Malang menyebut barang-barang mewah yang dinarasikan dalam video viral tidak sama dengan barang yang dimiliki oleh AKP Agnis.', 'https://news.detik.com/berita/d-6641099/kasat-lantas-polres-malang-diperiksa-propam-usai-viral-punya-barang-mewah'),
(73, 'Jalan Gatot Subroto Macet Sore Ini, Mobil dan Motor Terobos Busway', '2023-03-27', '<img src=\"https://akcdn.detik.net.id/community/media/visual/2023/03/27/jalan-tol-dalam-kota-senin-2732023-pukul-1810-wib-macet_169.jpeg?w=360&amp;q=90\" /> Lalu lintas Tol Dalam Kota macet di jam buka puasa petang ini. Di jalan arteri Jl Gatot Subroto, mobil dan motor menerobos busway karena macet.', 'https://news.detik.com/berita/d-6641089/jalan-gatot-subroto-macet-sore-ini-mobil-dan-motor-terobos-busway'),
(74, 'Cegah Tawuran-PSK, Satpol PP DKI Rekrut 1.200 Warga Jadi Relawan Trantibum', '2023-03-27', '<img src=\"https://akcdn.detik.net.id/community/media/visual/2016/02/04/bb267a71-7c09-4ade-b680-d725ca4a19a3_169.jpg?w=360&amp;q=90\" /> Satpol PP DKI Jakarta merekrut 1.200 warga menjadi Masyarakat Peduli Trantibum. Mereka bertugas menjaga ketenteraman dan ketertiban umum (trantibum).', 'https://news.detik.com/berita/d-6641083/cegah-tawuran-psk-satpol-pp-dki-rekrut-1200-warga-jadi-relawan-trantibum'),
(75, 'Sejarah Mudik di Indonesia: Pengertian Beserta Asal-usul Istilahnya', '2023-03-27', '<img src=\"https://akcdn.detik.net.id/community/media/visual/2023/03/27/sejarah-mudik-di-indonesia-pengertian-beserta-asal-usul-istilahnya_169.png?w=360&amp;q=90\" /> Mudik merupakan tradisi tahunan masyarakat Indonesia setiap hari raya besar, seperti Idul Fitri hingga Natal dan Tahun Baru. Simak sejarah mudik di Indonesia.', 'https://news.detik.com/berita/d-6641081/sejarah-mudik-di-indonesia-pengertian-beserta-asal-usul-istilahnya'),
(76, 'Protes Reformasi Peradilan, Puluhan Wali Kota Israel Mogok Makan!', '2023-03-27', '<img src=\"https://akcdn.detik.net.id/community/media/visual/2023/03/27/demonstran-polisi-bentrok-buntut-pemecatan-menhan-israel_169.jpeg?w=360&amp;q=90\" /> Puluhan wali kota di Israel melakukan aksi mogok makan untuk memprotes reformasi peradilan kontroversial yang diupayakan pemerintahan PM Benjamin Netanyahu.', 'https://news.detik.com/internasional/d-6641070/protes-reformasi-peradilan-puluhan-wali-kota-israel-mogok-makan'),
(77, 'Sandiaga Bertemu Prabowo Hari Ini, Bahas Apa?', '2023-03-27', '<img src=\"https://akcdn.detik.net.id/community/media/visual/2023/03/27/sandiaga-uno-bertemu-prabowo-di-kantor-kemenhan-senin-2732023_169.jpeg?w=360&amp;q=90\" /> Wakil Ketua Dewan Pembina Partai Gerindra Sandiaga Uno bertemu dengan Ketua Umum Prabowo Subianto sore ini. Apa yang dibahas keduanya?', 'https://news.detik.com/pemilu/d-6641055/sandiaga-bertemu-prabowo-hari-ini-bahas-apa'),
(78, 'Polda Metro Salurkan 7.500 Paket Bansos Kapolri di Jakarta-Bekasi', '2023-03-27', '<img src=\"https://akcdn.detik.net.id/community/media/visual/2023/03/27/polda-metro-jaya-menyalurkan-bantuan-sosial-dari-kapolri-jenderal-listyo-sigit-prabowo_169.jpeg?w=360&amp;q=90\" /> Polda Metro menyalurkan 7.500 paket sembako dari Kapolri Jenderal Listyo Sigit Prabowo kepada masyarakat terdampak kenaikan harga.', 'https://news.detik.com/berita/d-6641054/polda-metro-salurkan-7500-paket-bansos-kapolri-di-jakarta-bekasi'),
(79, 'Bareskrim Bakal Panggil Wamenkumham Terkait Laporan Aspri terhadap Ketua IPW', '2023-03-27', '<img src=\"https://akcdn.detik.net.id/community/media/visual/2021/02/10/ilustrasi-gedung-bareskrim-polri-1_169.jpeg?w=360&amp;q=90\" /> Dittipidsiber Bareskrim Polri memproses laporan Asisten pribadi (Aspri) Wamenkumham, Yogi Arie Rukmana, terhadap Ketua IPW Sugeng Teguh Santoso.', 'https://news.detik.com/berita/d-6641045/bareskrim-bakal-panggil-wamenkumham-terkait-laporan-aspri-terhadap-ketua-ipw'),
(80, 'Ketua Komisi III DPR Senang Kepercayaan ke Polri Naik, Siap Tambah Anggaran', '2023-03-27', '<img src=\"https://akcdn.detik.net.id/community/media/visual/2022/08/24/ketua-komisi-iii-dpr-bambang-wuryanto-saat-rapat-dengan-kapolri-1_169.png?w=360&amp;q=90\" /> Ketua Komisi III DPR Bambang Wuryanto atau Bambang Pacul senang dengan naiknya tingkat kepercayaan publik ke Polri.', 'https://news.detik.com/berita/d-6641041/ketua-komisi-iii-dpr-senang-kepercayaan-ke-polri-naik-siap-tambah-anggaran'),
(81, 'Pernyataan Lengkap Jokowi Tegaskan Larangan Bukber Bukan untuk Masyarakat', '2023-03-27', '<img src=\"https://akcdn.detik.net.id/community/media/visual/2023/03/27/presiden-jokowi-youtube-sekretariat-presiden_169.jpeg?w=360&amp;q=90\" /> Presiden Jokowi menegaskan larangan bukber bukan untuk masyarakat umum. Jokowi mengatakan arahan itu ditujukan bagi internal pemerintah hingga kepala lembaga.', 'https://news.detik.com/berita/d-6641040/pernyataan-lengkap-jokowi-tegaskan-larangan-bukber-bukan-untuk-masyarakat'),
(82, 'DPR Sebut Israel Hadiri Forum Parlemen di Bali karena Undangan IPU', '2023-03-27', '<img src=\"https://akcdn.detik.net.id/community/media/visual/2023/03/27/puan-maharani.jpeg?w=360&amp;q=90\" /> Kehadiran perwakilan Parlemen Israel di Sidang ke-144 IPU di Bali tahun lalu bukan karena undangan resmi Indonesia tapi undangan IPU.', 'https://news.detik.com/berita/d-6641034/dpr-sebut-israel-hadiri-forum-parlemen-di-bali-karena-undangan-ipu'),
(83, 'Ikut Bukber di NasDem, Airlangga: Koalisi Makin Besar Makin Bagus', '2023-03-27', '<img src=\"https://akcdn.detik.net.id/community/media/visual/2023/03/26/ketua-umum-partai-golkar-airlangga-hartarto-rumondang-detikcom_169.jpeg?w=360&amp;q=90\" /> Koalisi kan makin besar makin bagus, kata Ketum Partai Golkar Airlangga Hartarto.', 'https://news.detik.com/pemilu/d-6641033/ikut-bukber-di-nasdem-airlangga-koalisi-makin-besar-makin-bagus'),
(84, 'Kehidupan Pejabat Sedang Disorot, Alasan Jokowi Larang Bukber', '2023-03-27', '<img src=\"https://akcdn.detik.net.id/community/media/visual/2023/03/27/presiden-jokowi-youtube-sekretariat-presiden-1_169.jpeg?w=360&amp;q=90\" /> Presiden Jokowi mengungkap alasan pelarangan buka puasa bersama (bukber) bagi pejabat dan ASN. Menurutnya saat ini kehidupan pejabat sedang disorot masyarakat.', 'https://news.detik.com/detiktv/d-6641027/kehidupan-pejabat-sedang-disorot-alasan-jokowi-larang-bukber'),
(85, 'Polri Selidiki Laporan Aspri Wamenkumham Terhadap Sugeng IPW', '2023-03-27', '<img src=\"https://akcdn.detik.net.id/community/media/visual/2023/03/27/dirtipidsiber-bareskrim-polri-brigjen-adi-vivid-agustiadi-bachtiar_169.jpeg?w=360&amp;q=90\" /> Polri tengah memproses laporan aspri Wamenkumham Edward Omar Sharif Hiariej, Yogi Arie Rukmana terhadap Ketua IPW Sugeng  atas dugaan pencemaran nama baik.', 'https://news.detik.com/berita/d-6641021/polri-selidiki-laporan-aspri-wamenkumham-terhadap-sugeng-ipw'),
(86, 'Jokowi: Larangan Bukber Hanya untuk Internal Pemerintah!', '2023-03-27', '<img src=\"https://akcdn.detik.net.id/community/media/visual/2023/03/27/presiden-jokowi-youtube-sekretariat-presiden_169.jpeg?w=360&amp;q=90\" /> Presiden Jokowi menegaskan larangan buka puasa bersama (bukber) hanya untuk internal pemerintah. Masyarakat umum yang ingin bukber dipersilakan.', 'https://news.detik.com/detiktv/d-6641013/jokowi-larangan-bukber-hanya-untuk-internal-pemerintah'),
(87, 'Andre Rosiade Luruskan Narasi Keliru soal Impor Kereta Bekas', '2023-03-27', '<img src=\"https://akcdn.detik.net.id/community/media/visual/2022/09/26/penasihat-tim-semen-padang-fc-sp-fc-andre-rosiade_169.jpeg?w=360&amp;q=90\" /> Andre Rosiade menyebut beredar narasi keliru di publik soal impor kereta bekas yang bikin masyarakat menyalahkan keputusan pemerintah. Andre meluruskan hal itu.', 'https://news.detik.com/berita/d-6641010/andre-rosiade-luruskan-narasi-keliru-soal-impor-kereta-bekas'),
(88, 'Jokowi: Larangan Bukber Pejabat karena Banyak Sorotan soal Kehidupan Pejabat', '2023-03-27', '<img src=\"https://akcdn.detik.net.id/community/media/visual/2023/03/27/presiden-jokowi-youtube-sekretariat-presiden_169.jpeg?w=360&amp;q=90\" /> Dia mengungkapkan larangan itu dibuat lantaran kehidupan pejabat saat ini tengah disorot masyarakat.', 'https://news.detik.com/berita/d-6640997/jokowi-larangan-bukber-pejabat-karena-banyak-sorotan-soal-kehidupan-pejabat'),
(89, 'Mahathir-Anwar Ibrahim Panas! Singgung soal Salah Gunakan Jabatan', '2023-03-27', '<img src=\"https://akcdn.detik.net.id/community/media/visual/2020/02/24/bcfe18ec-cd3c-4d4f-8c9a-7d7e1e55cbb2_169.jpeg?w=360&amp;q=90\" /> Mantan PM Malaysia Mahathir Mohamad tiba-tiba melontarkan seruan bernada keras kepada PM Anwar Ibrahim. Ada apa?', 'https://news.detik.com/internasional/d-6640994/mahathir-anwar-ibrahim-panas-singgung-soal-salah-gunakan-jabatan'),
(90, 'MenPAN-RB Setujui Seleksi Sekolah Kedinasan, Sediakan 4.138 Kebutuhan', '2023-03-27', '<img src=\"https://akcdn.detik.net.id/community/media/visual/2023/03/27/menteri-pendayagunaan-aparatur-negara-dan-reformasi-birokrasi-panrb-abdullah-azwar-anas.jpeg?w=360&amp;q=90\" /> Ada 4.138 kebutuhan formasi yang disetujui dari tujuh instansi yang menaungi sekolah kedinasan pada seleksi tahun 2023 ini.', 'https://news.detik.com/berita/d-6640989/menpan-rb-setujui-seleksi-sekolah-kedinasan-sediakan-4138-kebutuhan'),
(91, 'Polisi: Natalia Rusli Belum Disumpah Advokat Saat Tangani Korban Indosurya', '2023-03-27', '<img src=\"https://akcdn.detik.net.id/community/media/visual/2023/03/27/polisi-tampilkan-pengacara-natalia-rusli-tersangka-kasus-penipuan-korban-indosurya-berbaju-oranye-tanpa-tulisan-tahanan-1_169.jpeg?w=360&amp;q=90\" /> Polisi menyebut Natalia Rusli belum disumpah sebagai advokat ketika menangani korban Indosurya. Dia baru disumpah sebagai advokat pada September 2020.', 'https://news.detik.com/berita/d-6640988/polisi-natalia-rusli-belum-disumpah-advokat-saat-tangani-korban-indosurya'),
(92, 'Jokowi Minta Jajaran Pemerintah Sambut Bulan Puasa dengan Kesederhanaan', '2023-03-27', '<img src=\"https://akcdn.detik.net.id/community/media/visual/2022/12/26/jokowi-4_43.jpeg?w=360&amp;q=90\" /> Presiden Joko Widodo (Jokowi) meminta jajaran pemerintah menyambut bulan puasa dengan spirit kesederhanaan.', 'https://news.detik.com/berita/d-6640980/jokowi-minta-jajaran-pemerintah-sambut-bulan-puasa-dengan-kesederhanaan'),
(93, 'Jokowi Minta Anggaran Bukber Pejabat Dialihkan untuk Santunan dan Pasar Murah', '2023-03-27', '<img src=\"https://akcdn.detik.net.id/community/media/visual/2023/03/20/jokowi-youtube-kementerian-kesehatan_169.jpeg?w=360&amp;q=90\" /> Jokowi meminta anggaran yang biasanya digunakan untuk buka puasa bersama jajaran pemerintah dialihkan ke hal yang lebih bermanfaat.', 'https://news.detik.com/berita/d-6640977/jokowi-minta-anggaran-bukber-pejabat-dialihkan-untuk-santunan-dan-pasar-murah'),
(94, 'Hujan di Jam Pulang Kerja, Lalin Pasar Senen Arah Matraman Macet', '2023-03-27', '<img src=\"https://akcdn.detik.net.id/community/media/visual/2023/03/27/macet-di-kawasan-pasar-senen-jakpus-pukul-1700-wib-1_169.jpeg?w=360&amp;q=90\" /> Lalu lintas kendaraan di kawasan Pasar Senen, Jakarta Pusat, macet menjelang buka puasa. Kemacetan terjadi di jalan yang mengarah ke Matraman.', 'https://news.detik.com/berita/d-6640963/hujan-di-jam-pulang-kerja-lalin-pasar-senen-arah-matraman-macet'),
(95, 'Jokowi: Larangan Bukber Hanya untuk Pejabat, Bukan Masyarakat Umum', '2023-03-27', '<img src=\"https://akcdn.detik.net.id/community/media/visual/2023/03/27/presiden-jokowi-youtube-sekretariat-presiden-1_169.jpeg?w=360&amp;q=90\" /> Presiden Joko Widodo (Jokowi) menjelaskan soal larangan berbuka puasa pejabat dan pegawai pemerintah. Dia mengatakan larangan itu hanya untuk kalangan internal.', 'https://news.detik.com/berita/d-6640962/jokowi-larangan-bukber-hanya-untuk-pejabat-bukan-masyarakat-umum'),
(96, 'Natalia Rusli Berbaju Oranye tapi Tanpa Tulisan \'Tahanan\', Ini Kata Polisi', '2023-03-27', '<img src=\"https://akcdn.detik.net.id/community/media/visual/2023/03/27/polisi-tampilkan-pengacara-natalia-rusli-tersangka-kasus-penipuan-korban-indosurya-berbaju-oranye-tanpa-tulisan-tahanan_169.jpeg?w=360&amp;q=90\" /> Pengacara Natalia Rusli dihdirkan dalam jumpa pers di Polres Jakbar. Dia memakai baju oranye tanpa tulisan \'Tahanan\'.', 'https://news.detik.com/berita/d-6640944/natalia-rusli-berbaju-oranye-tapi-tanpa-tulisan-tahanan-ini-kata-polisi'),
(97, 'Dicecar Anggota DPR, Eks Bos KCI Beberkan Alasan Impor Kereta Bekas Jepang', '2023-03-27', '<img src=\"https://akcdn.detik.net.id/community/media/visual/2023/03/27/mantan-direktur-utama-kci-yang-saat-ini-menjabat-sebagai-direktur-pengembangan-inka-roppiq-lutzfi-azhar-tangkapan-layar_169.jpeg?w=360&amp;q=90\" /> Rencana PT Kereta Commuter Indonesia (KCI) mengimpor kereta bekas Jepang menuai sorotan. Lantas, apa penjelasan alasan impor tersebut?', 'https://news.detik.com/berita/d-6640927/dicecar-anggota-dpr-eks-bos-kci-beberkan-alasan-impor-kereta-bekas-jepang'),
(98, 'Asisten AKBP Dody Dituntut 17 Tahun Penjara di Kasus Narkoba Irjen Teddy', '2023-03-27', '<img src=\"https://akcdn.detik.net.id/community/media/visual/2022/03/28/hukum-acara-pidana-definisi-tujuan-hingga-asas-yang-berlaku_169.jpeg?w=360&amp;q=90\" /> Asisten mantan Kapolres Bukittinggi AKBP Dody Prawiranegara, Syamsul Ma\'arif, dituntut 17 tahun penjara dan denda Rp 2 miliar subsider 6 bulan kurungan.', 'https://news.detik.com/berita/d-6640925/asisten-akbp-dody-dituntut-17-tahun-penjara-di-kasus-narkoba-irjen-teddy'),
(99, 'Begini Padatnya Stasiun Manggarai pada Senin Jelang Jam Buka Puasa', '2023-03-27', '<img src=\"https://akcdn.detik.net.id/community/media/visual/2023/03/27/stasiun-manggarai-dipadati-penumpang-pada-sore-ini-kepadatan-penumpang-juga-terjadi-di-dalam-kereta-rel-listrik-krl-magdalena-_169.jpeg?w=360&amp;q=90\" /> Stasiun Manggarai dipadati penumpang pada sore ini. Kepadatan penumpang juga terjadi di dalam kereta rel listrik (KRL).', 'https://news.detik.com/berita/d-6640915/begini-padatnya-stasiun-manggarai-pada-senin-jelang-jam-buka-puasa'),
(100, 'Penyiksaan di Rumah Majikan dan Macetnya RUU PPRT', '2023-03-27', '<img src=\"https://akcdn.detik.net.id/community/media/visual/2023/03/27/ilustrasi-pembahasan-ruu-pprt-di-dpr_169.jpeg?w=360&amp;q=90\" /> Setelah 19 tahun dikandung DPR RI, RUU PPRT akhirnya kembali dibahas. Payung hukum ini diharapkan memutus mata rantai kekerasan terhadap pekerja rumah tangga.', 'https://news.detik.com/spotlight/d-6640907/penyiksaan-di-rumah-majikan-dan-macetnya-ruu-pprt');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indexes for table `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
