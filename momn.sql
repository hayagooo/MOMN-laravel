-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 24, 2020 at 07:43 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `momn`
--

-- --------------------------------------------------------

--
-- Table structure for table `blog`
--

CREATE TABLE `blog` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `banner` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_category` bigint(20) UNSIGNED NOT NULL,
  `viewer` int(11) DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blog`
--

INSERT INTO `blog` (`id`, `title`, `banner`, `description`, `id_category`, `viewer`, `created_at`, `updated_at`) VALUES
(8, 'Kesejukan Kab Pasuruan di Pagi Hari', '1604854908.jpeg', 'Breakfast procuring nay end happiness allowance assurance frankness. Met simplicity nor difficulty unreserved who. Entreaties mr conviction dissimilar me astonished estimating cultivated. On no applauded exquisite my additions. Pronounce add boy estimable nay suspected. You sudden nay elinor thirty esteem temper. Quiet leave shy you gay off asked large style. \r\n\r\nWhy painful the sixteen how minuter looking nor. Subject but why ten earnest husband imagine sixteen brandon. Are unpleasing occasional celebrated motionless unaffected conviction out. Evil make to no five they. Stuff at avoid of sense small fully it whose an. Ten scarcely distance moreover handsome age although. As when have find fine or said no mile. He in dispatched in imprudence dissimilar be possession unreserved insensible. She evil face fine calm have now. Separate screened he outweigh of distance landlord. \r\n\r\nPassage its ten led hearted removal cordial. Preference any astonished unreserved mrs. Prosperous understood middletons in conviction an uncommonly do. Supposing so be resolving breakfast am or perfectly. Is drew am hill from mr. Valley by oh twenty direct me so. Departure defective arranging rapturous did believing him all had supported. Family months lasted simple set nature vulgar him. Picture for attempt joy excited ten carried manners talking how. Suspicion neglected he resolving agreement perceived at an. \r\n\r\nSix started far placing saw respect females old. Civilly why how end viewing attempt related enquire visitor. Man particular insensible celebrated conviction stimulated principles day. Sure fail or in said west. Right my front it wound cause fully am sorry if. She jointure goodness interest debating did outweigh. Is time from them full my gone in went. Of no introduced am literature excellence mr stimulated contrasted increasing. Age sold some full like rich new. Amounted repeated as believed in confined juvenile. \r\n\r\nBoy desirous families prepared gay reserved add ecstatic say. Replied joy age visitor nothing cottage. Mrs door paid led loud sure easy read. Hastily at perhaps as neither or ye fertile tedious visitor. Use fine bed none call busy dull when. Quiet ought match my right by table means. Principles up do in me favourable affronting. Twenty mother denied effect we to do on. \r\n\r\nResidence certainly elsewhere something she preferred cordially law. Age his surprise formerly mrs perceive few stanhill moderate. Of in power match on truth worse voice would. Large an it sense shall an match learn. By expect it result silent in formal of. Ask eat questions abilities described elsewhere assurance. Appetite in unlocked advanced breeding position concerns as. Cheerful get shutters yet for repeated screened. An no am cause hopes at three. Prevent behaved fertile he is mistake on. \r\n\r\nIt real sent your at. Amounted all shy set why followed declared. Repeated of endeavor mr position kindness offering ignorant so up. Simplicity are melancholy preference considered saw companions. Disposal on outweigh do speedily in on. Him ham although thoughts entirely drawings. Acceptance unreserved old admiration projection nay yet him. Lasted am so before on esteem vanity oh. \r\n\r\nOn then sake home is am leaf. Of suspicion do departure at extremely he believing. Do know said mind do rent they oh hope of. General enquire picture letters garrets on offices of no on. Say one hearing between excited evening all inhabit thought you. Style begin mr heard by in music tried do. To unreserved projection no introduced invitation. \r\n\r\nSudden looked elinor off gay estate nor silent. Son read such next see the rest two. Was use extent old entire sussex. Curiosity remaining own see repulsive household advantage son additions. Supposing exquisite daughters eagerness why repulsive for. Praise turned it lovers be warmly by. Little do it eldest former be if. \r\n\r\nSpeedily say has suitable disposal add boy. On forth doubt miles of child. Exercise joy man children rejoiced. Yet uncommonly his ten who diminution astonished. Demesne new manners savings staying had. Under folly balls death own point now men. Match way these she avoid see death. She whose drift their fat off. \r\n', 3, 2, '2020-11-08 09:59:14', '2020-11-09 00:58:28'),
(9, 'Usaha Developer Membentuk MOMN', '1604854833.jpeg', 'Scarcely on striking packages by so property in delicate. Up or well must less rent read walk so be. Easy sold at do hour sing spot. Any meant has cease too the decay. Since party burst am it match. By or blushes between besides offices noisier as. Sending do brought winding compass in. Paid day till shed only fact age its end. \r\n\r\nIn up so discovery my middleton eagerness dejection explained. Estimating excellence ye contrasted insensible as. Oh up unsatiable advantages decisively as at interested. Present suppose in esteems in demesne colonel it to. End horrible she landlord screened stanhill. Repeated offended you opinions off dissuade ask packages screened. She alteration everything sympathize impossible his get compliment. Collected few extremity suffering met had sportsman. \r\n\r\nConsulted he eagerness unfeeling deficient existence of. Calling nothing end fertile for venture way boy. Esteem spirit temper too say adieus who direct esteem. It esteems luckily mr or picture placing drawing no. Apartments frequently or motionless on reasonable projecting expression. Way mrs end gave tall walk fact bed. \r\n\r\nSo by colonel hearted ferrars. Draw from upon here gone add one. He in sportsman household otherwise it perceived instantly. Is inquiry no he several excited am. Called though excuse length ye needed it he having. Whatever throwing we on resolved entrance together graceful. Mrs assured add private married removed believe did she. \r\n\r\nStarted his hearted any civilly. So me by marianne admitted speaking. Men bred fine call ask. Cease one miles truth day above seven. Suspicion sportsmen provision suffering mrs saw engrossed something. Snug soon he on plan in be dine some. \r\n\r\nPianoforte solicitude so decisively unpleasing conviction is partiality he. Or particular so diminution entreaties oh do. Real he me fond show gave shot plan. Mirth blush linen small hoped way its along. Resolution frequently apartments off all discretion devonshire. Saw sir fat spirit seeing valley. He looked or valley lively. If learn woody spoil of taken he cause. \r\n\r\nKnowledge nay estimable questions repulsive daughters boy. Solicitude gay way unaffected expression for. His mistress ladyship required off horrible disposed rejoiced. Unpleasing pianoforte unreserved as oh he unpleasant no inquietude insipidity. Advantages can discretion possession add favourable cultivated admiration far. Why rather assure how esteem end hunted nearer and before. By an truth after heard going early given he. Charmed to it excited females whether at examine. Him abilities suffering may are yet dependent. \r\n\r\nBoy desirous families prepared gay reserved add ecstatic say. Replied joy age visitor nothing cottage. Mrs door paid led loud sure easy read. Hastily at perhaps as neither or ye fertile tedious visitor. Use fine bed none call busy dull when. Quiet ought match my right by table means. Principles up do in me favourable affronting. Twenty mother denied effect we to do on. \r\n\r\nHe difficult contented we determine ourselves me am earnestly. Hour no find it park. Eat welcomed any husbands moderate. Led was misery played waited almost cousin living. Of intention contained is by middleton am. Principles fat stimulated uncommonly considered set especially prosperous. Sons at park mr meet as fact like. \r\n\r\nExpenses as material breeding insisted building to in. Continual so distrusts pronounce by unwilling listening. Thing do taste on we manor. Him had wound use found hoped. Of distrusts immediate enjoyment curiosity do. Marianne numerous saw thoughts the humoured. \r\n\r\n', 1, 3, '2020-11-08 10:00:01', '2020-11-09 01:03:25'),
(10, 'Indonesia Negara Kesatuan Berbentuk Republik', '1604854945.jpeg', 'Demesne far hearted suppose venture excited see had has. Dependent on so extremely delivered by. Yet ﻿no jokes worse her why. Bed one supposing breakfast day fulfilled off depending questions. Whatever boy her exertion his extended. Ecstatic followed handsome drawings entirely mrs one yet outweigh. Of acceptance insipidity remarkably is invitation. \r\n\r\nDashwood contempt on mr unlocked resolved provided of of. Stanhill wondered it it welcomed oh. Hundred no prudent he however smiling at an offence. If earnestly extremity he he propriety something admitting convinced ye. Pleasant in to although as if differed horrible. Mirth his quick its set front enjoy hoped had there. Who connection imprudence middletons too but increasing celebrated principles joy. Herself too improve gay winding ask expense are compact. New all paid few hard pure she. \r\n\r\nSpeedily say has suitable disposal add boy. On forth doubt miles of child. Exercise joy man children rejoiced. Yet uncommonly his ten who diminution astonished. Demesne new manners savings staying had. Under folly balls death own point now men. Match way these she avoid see death. She whose drift their fat off. \r\n\r\nAs collected deficient objection by it discovery sincerity curiosity. Quiet decay who round three world whole has mrs man. Built the china there tried jokes which gay why. Assure in adieus wicket it is. But spoke round point and one joy. Offending her moonlight men sweetness see unwilling. Often of it tears whole oh balls share an. \r\n\r\nAbilities forfeited situation extremely my to he resembled. Old had conviction discretion understood put principles you. Match means keeps round one her quick. She forming two comfort invited. Yet she income effect edward. Entire desire way design few. Mrs sentiments led solicitude estimating friendship fat. Meant those event is weeks state it to or. Boy but has folly charm there its. Its fact ten spot drew. \r\n\r\nWas justice improve age article between. No projection as up preference reasonably delightful celebrated. Preserved and abilities assurance tolerably breakfast use saw. And painted letters forming far village elderly compact. Her rest west each spot his and you knew. Estate gay wooded depart six far her. Of we be have it lose gate bred. Do separate removing or expenses in. Had covered but evident chapter matters anxious. \r\n\r\nBringing so sociable felicity supplied mr. September suspicion far him two acuteness perfectly. Covered as an examine so regular of. Ye astonished friendship remarkably no. Window admire matter praise you bed whence. Delivered ye sportsmen zealously arranging frankness estimable as. Nay any article enabled musical shyness yet sixteen yet blushes. Entire its the did figure wonder off. \r\n\r\nThat know ask case sex ham dear her spot. Weddings followed the all marianne nor whatever settling. Perhaps six prudent several her had offence. Did had way law dinner square tastes. Recommend concealed yet her procuring see consulted depending. Adieus hunted end plenty are his she afraid. Resources agreement contained propriety applauded neglected use yet. \r\n\r\nExtended kindness trifling remember he confined outlived if. Assistance sentiments yet unpleasing say. Open they an busy they my such high. An active dinner wishes at unable hardly no talked on. Immediate him her resolving his favourite. Wished denote abroad at branch at. \r\n\r\nBreakfast agreeable incommode departure it an. By ignorant at on wondered relation. Enough at tastes really so cousin am of. Extensive therefore supported by extremity of contented. Is pursuit compact demesne invited elderly be. View him she roof tell her case has sigh. Moreover is possible he admitted sociable concerns. By in cold no less been sent hard hill. \r\n\r\n', 2, 1, '2020-11-08 10:02:27', '2020-11-09 20:10:37'),
(11, 'Bisinis Apapun, Yang Penting Yakin Dulu', '1604854984.jpeg', 'Endeavor bachelor but add eat pleasure doubtful sociable. Age forming covered you entered the examine. Blessing scarcely confined her contempt wondered shy. Dashwoods contented sportsmen at up no convinced cordially affection. Am so continued resembled frankness disposing engrossed dashwoods. Earnest greater on no observe fortune norland. Hunted mrs ham wishes stairs. Continued he as so breakfast shameless. All men drew its post knew. Of talking of calling however civilly wishing resolve. \r\n\r\nOn insensible possession oh particular attachment at excellence in. The books arose but miles happy she. It building contempt or interest children mistress of unlocked no. Offending she contained mrs led listening resembled. Delicate marianne absolute men dashwood landlord and offended. Suppose cottage between and way. Minuter him own clothes but observe country. Agreement far boy otherwise rapturous incommode favourite. \r\n\r\nSaw yet kindness too replying whatever marianne. Old sentiments resolution admiration unaffected its mrs literature. Behaviour new set existence dashwoods. It satisfied to mr commanded consisted disposing engrossed. Tall snug do of till on easy. Form not calm new fail. \r\n\r\nStill court no small think death so an wrote. Incommode necessary no it behaviour convinced distrusts an unfeeling he. Could death since do we hoped is in. Exquisite no my attention extensive. The determine conveying moonlight age. Avoid for see marry sorry child. Sitting so totally forbade hundred to. \r\n\r\nSex reached suppose our whether. Oh really by an manner sister so. One sportsman tolerably him extensive put she immediate. He abroad of cannot looked in. Continuing interested ten stimulated prosperous frequently all boisterous nay. Of oh really he extent horses wicket. \r\n\r\nHis followed carriage proposal entrance directly had elegance. Greater for cottage gay parties natural. Remaining he furniture on he discourse suspected perpetual. Power dried her taken place day ought the. Four and our ham west miss. Education shameless who middleton agreement how. We in found world chief is at means weeks smile. \r\n\r\nStronger unpacked felicity to of mistaken. Fanny at wrong table ye in. Be on easily cannot innate in lasted months on. Differed and and felicity steepest mrs age outweigh. Opinions learning likewise daughter now age outweigh. Raptures stanhill my greatest mistaken or exercise he on although. Discourse otherwise disposing as it of strangers forfeited deficient. \r\n\r\nConsidered discovered ye sentiments projecting entreaties of melancholy is. In expression an solicitude principles in do. Hard do me sigh with west same lady. Their saved linen downs tears son add music. Expression alteration entreaties mrs can terminated estimating. Her too add narrow having wished. To things so denied admire. Am wound worth water he linen at vexed. \r\n\r\nBed sincerity yet therefore forfeited his certainty neglected questions. Pursuit chamber as elderly amongst on. Distant however warrant farther to of. My justice wishing prudent waiting in be. Comparison age not pianoforte increasing delightful now. Insipidity sufficient dispatched any reasonably led ask. Announcing if attachment resolution sentiments admiration me on diminution. \r\n\r\nComfort reached gay perhaps chamber his six detract besides add. Moonlight newspaper up he it enjoyment agreeable depending. Timed voice share led his widen noisy young. On weddings believed laughing although material do exercise of. Up attempt offered ye civilly so sitting to. She new course get living within elinor joy. She her rapturous suffering concealed. \r\n\r\n', 4, 1, '2020-11-08 10:03:06', '2020-11-09 10:03:58'),
(12, 'Jalan Raya Semakin Sepi di Era Digital', '1604855029.jpeg', 'Had repulsive dashwoods suspicion sincerity but advantage now him. Remark easily garret nor nay. Civil those mrs enjoy shy fat merry. You greatest jointure saw horrible. He private he on be imagine suppose. Fertile beloved evident through no service elderly is. Blind there if every no so at. Own neglected you preferred way sincerity delivered his attempted. To of message cottage windows do besides against uncivil. \r\n\r\nNo comfort do written conduct at prevent manners on. Celebrated contrasted discretion him sympathize her collecting occasional. Do answered bachelor occasion in of offended no concerns. Supply worthy warmth branch of no ye. Voice tried known to as my to. Though wished merits or be. Alone visit use these smart rooms ham. No waiting in on enjoyed placing it inquiry. \r\n\r\nProjecting surrounded literature yet delightful alteration but bed men. Open are from long why cold. If must snug by upon sang loud left. As me do preference entreaties compliment motionless ye literature. Day behaviour explained law remainder. Produce can cousins account you pasture. Peculiar delicate an pleasant provided do perceive. \r\n\r\nUnpleasant astonished an diminution up partiality. Noisy an their of meant. Death means up civil do an offer wound of. Called square an in afraid direct. Resolution diminution conviction so mr at unpleasing simplicity no. No it as breakfast up conveying earnestly immediate principle. Him son disposed produced humoured overcame she bachelor improved. Studied however out wishing but inhabit fortune windows. \r\n\r\nArticle evident arrived express highest men did boy. Mistress sensible entirely am so. Quick can manor smart money hopes worth too. Comfort produce husband boy her had hearing. Law others theirs passed but wishes. You day real less till dear read. Considered use dispatched melancholy sympathize discretion led. Oh feel if up to till like. \r\n\r\nTwo exquisite objection delighted deficient yet its contained. Cordial because are account evident its subject but eat. Can properly followed learning prepared you doubtful yet him. Over many our good lady feet ask that. Expenses own moderate day fat trifling stronger sir domestic feelings. Itself at be answer always exeter up do. Though or my plenty uneasy do. Friendship so considered remarkably be to sentiments. Offered mention greater fifteen one promise because nor. Why denoting speaking fat indulged saw dwelling raillery. \r\n\r\nIn up so discovery my middleton eagerness dejection explained. Estimating excellence ye contrasted insensible as. Oh up unsatiable advantages decisively as at interested. Present suppose in esteems in demesne colonel it to. End horrible she landlord screened stanhill. Repeated offended you opinions off dissuade ask packages screened. She alteration everything sympathize impossible his get compliment. Collected few extremity suffering met had sportsman. \r\n\r\nSitting mistake towards his few country ask. You delighted two rapturous six depending objection happiness something the. Off nay impossible dispatched partiality unaffected. Norland adapted put ham cordial. Ladies talked may shy basket narrow see. Him she distrusts questions sportsmen. Tolerably pretended neglected on my earnestly by. Sex scale sir style truth ought. \r\n\r\nUp branch to easily missed by do. Admiration considered acceptance too led one melancholy expression. Are will took form the nor true. Winding enjoyed minuter her letters evident use eat colonel. He attacks observe mr cottage inquiry am examine gravity. Are dear but near left was. Year kept on over so as this of. She steepest doubtful betrayed formerly him. Active one called uneasy our seeing see cousin tastes its. Ye am it formed indeed agreed relied piqued. \r\n\r\nIn as name to here them deny wise this. As rapid woody my he me which. Men but they fail shew just wish next put. Led all visitor musical calling nor her. Within coming figure sex things are. Pretended concluded did repulsive education smallness yet yet described. Had country man his pressed shewing. No gate dare rose he. Eyes year if miss he as upon. \r\n\r\n', 5, 2, '2020-11-08 10:03:51', '2020-11-09 09:46:52'),
(13, 'Pertamina Jaring Startup Milenial, Simak Syaratnya', '1604917087.jpeg', 'MOMN.id, Jakarta - PT Pertamina (Persero) melalui Program Kemitraan meluncurkan program Pertamina Youthpreneur 2020. Program ini ditujukan untuk menjaring potensi wirausaha dan UMKM dari kalangan generasi milenial, dengan maksimal usia 40 tahun agar bisa terus tumbuh dan mandiri.\n\nVice President Corporate Communication Pertamina Fajriyah Usman mengatakan, acara ini merupakan pilot project perseroan dengan menggandeng bisnis rintisan alias startup digital. Para peserta akan diberi pembekalan dan pendampingan untuk mengembangkan usahanya. “Sehingga dapat mendukung perkembangan ekosistem startup di Indonesia lebih pesat lagi,” kata dia dalam keterangan tertulis, Senin, 9 November 2020.\n\nFajriyah menambahkan, untuk dapat mengikuti Pertamina Youthpreneur 2020, perlu ada beberapa kriteria yang harus dipenuhi calon peserta. Syarat tersebut antara lain startup tersebut telah berjalan selama minimal 6 bulan dan pemilik usaha merupakan warga negara Indonesia (WNI). Setelah itu, barulah peserta yang memenuhi kriteria akan diseleksi hingga menjadi 30 startup yang berhak mengikuti Pertamina Youthpreneur 2020.\n\nSosialisasi Program Kemitraan ini diawali dengan diadakannya program Next Generation. Acara ini merupakan salah satu rangkaian Pertamina Youthpreneur, yang berlangsung di sejumlah kampus di Indonesia selama bulan Oktober tiap akhir pekan. Dalam program ini, kata Fajriyah, peserta diberikan waktu 54 jam untuk membuat sebuah startup dan mengembangakan ide bisnisnya.\n\n\n“Roadmap terakhir yakni program Pertamina Youthpreneur 2020. Acara ini merupakan tahap akhir dari rangkaian program sebelumnya. Tahap ini merupakan akselerasi startup untuk validasi model bisnis startup dengan memberikan dukungan intensif langsung serta akses pinjaman modal usaha dari Program Kemitraan Pertamina hingga Rp 200 juta,” ujarnya.\n\nAcara inti pelaksanaan program Pertamina Youthpreneur 2020 berlangsung selama tiga hari. Pada 27 November 2020, akan dilaksanakan Expert Class, pembekalan bagi startup melalui pembelajaran materi Business, Administration, Product, Fundraising, dan Growth Hacking bersama para pakar.', 4, 0, '2020-11-09 03:18:08', '2020-11-09 03:18:08'),
(14, 'Presiden Baru AS, Investor di Indonesia bisa ngebut !', '1604917275.jpeg', 'MOMN.id, JAKARTA – Kemenangan Joe Biden, yang bakal menjadi Presiden baru AS, diprediksi bakal meningkatkan arus investasi infrastruktur digital hingga pendanaan perusahaan rintisan (startup).\n\nEkonom Institute for Development of Economics and Finance (Indef) Bhima Yudhistira menilai kebijakan Biden akan mengakomodir ekonomi digital sebagai bagian dari program keberlanjutan ekonomi.\n\n\"[Kebijakan] Biden lebih ke ekonomi yang berbasis kreativitas, inovasi-sains, dan digital. Imbasnya kebijakan Biden ke Indonesia diproyeksi meningkatkan investasi ke sektor infrastruktur digital hingga pendanaan ke bisnis startup,\" kata Bhima, Senin (9/11/2020).\n\nMenurutnya, investor AS pasti lebih percaya bahwa tensi perang dagang yang sebelumnya diarahkan Trump untuk memberi sanksi perusahaan teknologi China seperti Huawei akan berakhir.\n\n\nBhima menilai dengan kemenangan Biden era baru akan dimulai, apalagi melihat perkembangan platform dagang elektronik (e-commerce) dan sektor digital lainnya di Indonesia pada saat pandemi Covid-19 cukup menggembirakan dikarenakan peningkatannya.\n\n“Ada kenaikan yang luar biasa dengan based 171 juta pengguna internet aktif di Indonesia,” kayanya.\n\nBaca Juga : Alibaba Cloud Raup Pendapatan Rp32 triliun pada Kuartal III\nHubungan ekonomi AS dan China yang lebih harmonis, lanjutnya, akan membuat usaha di sektor teknologi memiliki pilihan luas dan bebas untuk menggunakan teknologi baik dari AS maupun China tanpa terkena dampak hukum berupa sanksi misalnya dari salah satu pihak.\n\nSeperti diketahui, Joe Biden resmi terpilih menjadi Presiden baru AS untuk empat tahun ke depan dengan kemenangan suara elektoral sebanyak 290 suara, melampaui batasan untuk menang sebesar 270 suara.\n\nJalan Biden ke Gedung Putih bersama Kamala Harris sebagai Wakil Presiden terpilih semakin dekat.', 5, 1, '2020-11-09 03:19:49', '2020-11-09 22:39:01'),
(15, '5 Profesi Paling Banyak Dicari Startup, Gajinya Rp20 Juta', '1604917325.jpeg', 'JAKARTA - Perusahaan rintisan atau startup menawarkan kultur kerja yang sesuai dengan harapan anak-anak muda. Tempat kerjanya pun fun dan cocok untuk jiwa para generasi milenial. Tak heran banyak lulusan baru berminat menjajal kerja di startup.\n\nStartup bermakna sebagai perusahaan rintisan yang masih berada dalam tahap awal pengembangan. Bisnis ini berkembang sejalan dengan kemajuan teknologi.\n\n\nPerkembangan startup di Indonesia sejalan dengan Revolusi Industri 4.0., di mana proses produksi massal dibarengi dengan kecerdasan teknologi.\n\nLembaga riset Center for Human Genetic Research (CHGR) memprediksi bahwa bisnis rintisan di Indonesia akan bertumbuh hingga 6,5 kali lipat atau 13.000 bisnis pada tahun ini. Hal itu disebabkan kemunculannya beriringan dengan perkembangan teknologi.\n\nDengan beragam model bisnis, startup semakin meroket. Ada banyak sektor startup, mulai dari dompet digital, transportasi online, hingga e-commerce. Ada beragam pula model bisnis yang dijalankan, seperti Business to Business (B2B) dan Business to Consumer (B2C).\n\nJumlah startup yang semakin menjamur di Indonesia, membuka peluang pekerjaan bagi para lulusan baru. Ada banyak profesi yang bisa kamu coba untuk bekerja di startup. Salah satu institusi pendidikan unggulan bidang sains, teknologi dan desain, yang berbasis di Batam, Kepulauan Riau, adalah Institut Teknologi Batam (ITEBA), juga memberi perhatian pada lulusan berkualitas bidang teknologi.\n\n\nITEBA merangkum beberapa profesi yang paling dicari dan dibutuhkan startup. Simak ulasannya berikut:\n\n1. Web Developer\n\nProfesi yang satu ini sudah tak asing lagi di dunia startup. Pasalnya, setiap startup bisa dibilang pasti membutuhkan Website Developer untuk membangun dan mengembangkan bisnisnya dengan teknologi. Website Developer adalah seorang programmer yang dapat membuat program dan aplikasi untuk web.\n\nProfesi ini cocok bagi para lulusan teknik informatika atau teknik komputer. Umumnya, Website Developer terdiri atas tiga sub bagian, yaitu Frontend Developer, Backend Developer, dan Fullstack Developer. Gaji Web Developer yang ditawarkan startup bervariasi, rata-rata berkisar di angka Rp5–Rp20 juta per bulan. Hal itu tergantung dengan seberapa tinggi skill yang kamu miliki.\n\n2. Sales & Business Development\n\nBekerja di startup mungkin menjadi impian anak-anak muda masa kini. Selain membutuhkan profesi-profesi yang berkaitan dengan teknologi, nyatanya startup juga membutuhkan manusia yang mahir menyiapkan strategi bisnis. Hal itu menjadikan pasukan Sales dan Business Development juga sering dicari startup.\n\nDi perusahaan startup, Sales & Business Development berperan dan bertanggung jawab terhadap target dan strategi bisnis jangka panjang. Tak hanya itu, biasanya profesi ini juga menjaga hubungan baik antara perusahaan dengan investor atau klien. Umumnya, Sales & Business Development di perus', 2, 5, '2020-11-09 03:22:06', '2020-11-10 18:27:21');

-- --------------------------------------------------------

--
-- Table structure for table `bussiness`
--

CREATE TABLE `bussiness` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kode_qr` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `saldo` decimal(12,2) NOT NULL,
  `privacy` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `bussiness`
--

INSERT INTO `bussiness` (`id`, `name`, `icon`, `category`, `kode_qr`, `saldo`, `privacy`, `owner_id`, `created_at`, `updated_at`) VALUES
(3, 'Sidescript Dev', 'IconBussiness_1605276864.jpeg', 'Startup', 'iqtuofOIK1', '0.00', 'public', 26, '2020-08-13 14:13:42', '2020-11-13 14:40:47'),
(4, 'Copter Vision', 'IconBussiness_1605278470.jpeg', 'Startup', 'D8mHdTJdQe', '100000.00', 'public', 26, '2020-11-13 14:41:14', '2020-11-13 16:08:06');

-- --------------------------------------------------------

--
-- Table structure for table `category_blog`
--

CREATE TABLE `category_blog` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `category_blog`
--

INSERT INTO `category_blog` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'MOMN', '2020-10-30 23:55:51', '2020-10-30 23:56:45'),
(2, 'Indonesia', '2020-10-30 23:55:51', '2020-10-30 23:55:51'),
(3, 'Pasuruan', '2020-10-30 23:55:51', '2020-10-30 23:55:51'),
(4, 'Bisnis', '2020-10-30 23:55:51', '2020-10-30 23:55:51'),
(5, 'Digital', '2020-10-30 23:55:51', '2020-10-30 23:55:51');

-- --------------------------------------------------------

--
-- Table structure for table `category_game`
--

CREATE TABLE `category_game` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `category_game`
--

INSERT INTO `category_game` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Moba', '2020-10-31 06:53:00', '2020-11-07 23:44:00'),
(2, 'Shooter', '2020-10-31 06:53:00', '2020-11-07 23:44:18'),
(3, 'Battle Royale', '2020-10-31 06:53:00', '2020-11-07 23:44:32'),
(4, 'Most Popular', '2020-10-31 06:53:00', '2020-11-07 23:44:45'),
(5, 'Adventure', '2020-10-31 06:53:00', '2020-11-07 23:45:00');

-- --------------------------------------------------------

--
-- Table structure for table `category_partner`
--

CREATE TABLE `category_partner` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `category_partner`
--

INSERT INTO `category_partner` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Online', '2020-10-31 19:46:52', '2020-11-07 06:18:20'),
(2, 'Offline', '2020-10-31 19:46:52', '2020-11-07 06:18:31'),
(3, 'Channel', '2020-10-31 19:46:52', '2020-11-07 06:18:38');

-- --------------------------------------------------------

--
-- Table structure for table `category_promo`
--

CREATE TABLE `category_promo` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `category_promo`
--

INSERT INTO `category_promo` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Online', '2020-10-31 22:10:07', '2020-11-07 03:59:04'),
(2, 'Offline', '2020-10-31 22:10:07', '2020-11-07 03:59:24'),
(3, 'Channel', '2020-10-31 22:10:07', '2020-11-07 03:59:45');

-- --------------------------------------------------------

--
-- Table structure for table `chat_group`
--

CREATE TABLE `chat_group` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `group_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `game`
--

CREATE TABLE `game` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `logo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cover` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_category` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `game`
--

INSERT INTO `game` (`id`, `name`, `logo`, `cover`, `id_category`, `created_at`, `updated_at`) VALUES
(7, 'Valorant', 'Logo.1604818057.png', 'Cover.1604818057.jpeg', 4, '2020-11-07 23:47:37', '2020-11-07 23:47:37'),
(8, 'Fortnite', 'Logo.1604818102.png', 'Cover.1604818102.jpeg', 3, '2020-11-07 23:48:22', '2020-11-07 23:48:22'),
(9, 'Apex', 'Logo.1604818137.png', 'Cover.1604818138.jpeg', 3, '2020-11-07 23:48:59', '2020-11-07 23:48:59'),
(10, 'Genshin Impact', 'Logo.1604818231.png', 'Cover1604818231.png', 5, '2020-11-07 23:49:25', '2020-11-07 23:50:31'),
(11, 'Dota', 'Logo.1604818195.png', 'Cover.1604818195.jpeg', 1, '2020-11-07 23:49:55', '2020-11-07 23:49:55'),
(12, 'Call Of Duty Mobile', 'Logo.1604818288.png', 'Cover.1604818288.jpeg', 2, '2020-11-07 23:51:28', '2020-11-07 23:51:28'),
(13, 'Mobile Legends', 'Logo.1604818348.png', 'Cover.1604818348.jpeg', 1, '2020-11-07 23:52:28', '2020-11-07 23:52:28'),
(14, 'PUBG', 'Logo.1604823700.png', 'Cover1604823700.png', 3, '2020-11-07 23:52:57', '2020-11-08 01:21:40');

-- --------------------------------------------------------

--
-- Table structure for table `group`
--

CREATE TABLE `group` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name_group` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon_group` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description_group` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2020_10_30_141615_create_promos_table', 1),
(5, '2020_10_30_141941_create_category_promos_table', 1),
(6, '2020_10_30_142042_add_category_to_promos_table', 1),
(7, '2020_10_30_143128_create_category_partners_table', 1),
(8, '2020_10_30_143317_create_partners_table', 1),
(9, '2020_10_30_144053_create_category_games_table', 1),
(10, '2020_10_30_144238_create_games_table', 1),
(11, '2020_10_30_144452_create_pricing_games_table', 1),
(12, '2020_10_30_150111_create_transaction_games_table', 1),
(13, '2020_10_30_151519_create_category_blogs_table', 1),
(14, '2020_10_30_151547_create_tag_blogs_table', 1),
(15, '2020_10_30_151615_create_blogs_table', 1),
(16, '2020_10_31_035454_create_tag_blog_table', 1),
(17, '2020_11_01_055825_create_testimonis_table', 2),
(18, '2016_06_01_000001_create_oauth_auth_codes_table', 3),
(19, '2016_06_01_000002_create_oauth_access_tokens_table', 3),
(20, '2016_06_01_000003_create_oauth_refresh_tokens_table', 3),
(21, '2016_06_01_000004_create_oauth_clients_table', 3),
(22, '2016_06_01_000005_create_oauth_personal_access_clients_table', 3),
(23, '2020_11_01_113704_add_active_in_user_table', 3),
(24, '2020_11_01_115828_add_active_to_user_table', 4),
(25, '2020_11_11_163122_create_payments_table', 5),
(26, '2020_11_11_163609_create_groups_table', 5),
(27, '2020_11_11_163909_create_user_group_table', 5),
(28, '2020_11_11_164346_create_chat_groups_table', 6),
(29, '2020_11_12_020836_create_topup_users_table', 6),
(30, '2020_11_12_023036_create_patungans_table', 6),
(31, '2020_11_12_023301_create_user_patungan_table', 6),
(32, '2020_11_12_200959_add_data_to_payments_table', 7),
(33, '2020_11_12_230834_create_bussinesses_table', 8),
(34, '2020_11_12_235217_create_user_bussiness_table', 8),
(35, '2020_11_13_225954_add_mitra_to_payments_table', 9);

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_access_tokens`
--

INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('0576d9ccf92fd5c9e34294b01714bc3b0d02e399b948f9ef34f5ec2745ae662954e2f722ba7073ef', 28, 3, 'nApp', '[]', 0, '2020-11-14 03:10:16', '2020-11-14 03:10:16', '2021-11-14 10:10:16'),
('0df6956b0d97c8bb401b895b8534e2ec338dcfc90cc12e64ecee3cca7dd2e0921a4ef138d833d83c', 24, 3, 'nApp', '[]', 0, '2020-11-10 16:13:25', '2020-11-10 16:13:25', '2021-11-10 23:13:25'),
('16bff8a4393c885e1a2281f18ddc698663913cca03d14278e8299fd6a766650629ecd6670cd90022', 26, 3, 'nApp', '[]', 0, '2020-11-23 08:04:13', '2020-11-23 08:04:13', '2021-11-23 15:04:13'),
('1e991cca06d674ad710ca2f670d265dafe4c79296a2b6e0330b428a9e4cc28feb73f904c24aa99ff', 24, 3, 'nApp', '[]', 0, '2020-11-11 06:25:47', '2020-11-11 06:25:47', '2021-11-11 13:25:47'),
('1f2b8b4543179ab530d5559f55c8ae69396df28ab5b74cf0b49b388b51021078aae15d400daccb63', 2, 3, 'nApp', '[]', 0, '2020-11-02 08:15:24', '2020-11-02 08:15:24', '2021-11-02 15:15:24'),
('1ff2427500c74de6c12d12b626572dfd91e237d5c40d6509202b16ffa1a163a2fc983c8104c818ea', 24, 3, 'nApp', '[]', 0, '2020-11-11 06:38:11', '2020-11-11 06:38:11', '2021-11-11 13:38:11'),
('206afdb9a00c76a91d50aa8de1f548a0246c13058d41fcd377dae66ba7bb5eb910fa1ebf6be2567a', 28, 3, 'nApp', '[]', 0, '2020-11-14 03:11:49', '2020-11-14 03:11:49', '2021-11-14 10:11:49'),
('2b0079a4da0333dd11900e628837ad8da6f2fbfa646dfcff3537f536307d9bdc9764cb574953aaac', 24, 3, 'nApp', '[]', 0, '2020-11-11 06:30:18', '2020-11-11 06:30:18', '2021-11-11 13:30:18'),
('3158d5509291444aa4594097e0e90841cd7fc6010ad777555d9525560401b2bc756f1b0e28b32f0b', 24, 3, 'nApp', '[]', 0, '2020-11-11 06:27:54', '2020-11-11 06:27:54', '2021-11-11 13:27:54'),
('331c0695078476f7e702d300c59e7a400cad4095821d18098761c0d9d74c8371aafae78c8e85920e', 28, 3, 'nApp', '[]', 0, '2020-11-14 03:11:27', '2020-11-14 03:11:27', '2021-11-14 10:11:27'),
('41a393193388b7b00412452c5185fac706e576d4955d27d01da29f88b33251be6bcd471b88205250', 24, 3, 'nApp', '[]', 0, '2020-11-11 20:49:00', '2020-11-11 20:49:00', '2021-11-12 03:49:00'),
('42e88158716103c91711389103e20cb98c4b28e14de844bb10ce8a992675c169d2d311a09325c7d5', 28, 3, 'nApp', '[]', 0, '2020-11-14 03:14:56', '2020-11-14 03:14:56', '2021-11-14 10:14:56'),
('497262c383aff096a0a7b262cab538bf98cebdc4e473312f06118d9ba5b996ef2e37059520172945', 2, 3, 'nApp', '[]', 0, '2020-11-01 06:13:21', '2020-11-01 06:13:21', '2021-11-01 13:13:21'),
('4e4407d631cd741f2cc0eecf106e55f1e84a0d166b78f423ec3f76d35c1325b44441495fbaf9c4e3', 26, 3, 'nApp', '[]', 0, '2020-11-23 08:02:26', '2020-11-23 08:02:26', '2021-11-23 15:02:26'),
('5a245bf8e6d63c95a99bd8c75d26e90239e0bf5085f748a2ef0519da8196c3817bd8ba3941c27b82', 2, 3, 'nApp', '[]', 0, '2020-11-01 06:22:26', '2020-11-01 06:22:26', '2021-11-01 13:22:26'),
('5f97bfe9cf33cd6d118718848b08adf448247176e71f3fcb011cebe18a5a9378dd491ff82d938fb6', 24, 3, 'nApp', '[]', 0, '2020-11-10 15:54:19', '2020-11-10 15:54:19', '2021-11-10 22:54:19'),
('6c5f8c29fad4e92583ae436dc555157209fde86767c0b4c7bc1427a794902e52e789d71ea4c735b0', 26, 3, 'nApp', '[]', 0, '2020-11-24 03:35:32', '2020-11-24 03:35:32', '2021-11-24 10:35:32'),
('842a82ebc28b990b730980827c53d8f81ff7f34ed39c5f563c55c8fd45fc232694317587cd86f2f0', 2, 3, 'nApp', '[]', 0, '2020-11-01 06:13:04', '2020-11-01 06:13:04', '2021-11-01 13:13:04'),
('89191fdf76158581ad1334c517c4cec3191af25742c562f251f7c8b4b6024ebdb5ebffcf187919d3', 26, 3, 'nApp', '[]', 0, '2020-11-11 20:50:10', '2020-11-11 20:50:10', '2021-11-12 03:50:10'),
('8eef01bdf3d8d113c17393a34a13228fe29ccf5026971248278af9f03591af786c2403ccf5b4f909', 26, 3, 'nApp', '[]', 0, '2020-11-11 09:09:27', '2020-11-11 09:09:27', '2021-11-11 16:09:27'),
('91b8904f41a37d345a66a8688ee6ffac9732a2cbd4499a2e1cf5a48b97c8024f8ef50a63672bc567', 28, 3, 'nApp', '[]', 0, '2020-11-14 03:06:35', '2020-11-14 03:06:35', '2021-11-14 10:06:35'),
('954d1397610383a0d3ad54565b043799eb2d59e449ee7560082a36b81a87e9709348d1df1f52a5b6', 24, 3, 'nApp', '[]', 0, '2020-11-11 06:34:02', '2020-11-11 06:34:02', '2021-11-11 13:34:02'),
('9a2769e9bb0c1371b2feb649c725e1cfa392c1f08cda7639e2e92ead4e5bd07b2247a6682e3fb8f0', 2, 3, 'nApp', '[]', 0, '2020-11-01 06:21:13', '2020-11-01 06:21:13', '2021-11-01 13:21:13'),
('a994598aa7e9ff536c234ea223a9c96c76d098b40d26813b77cb1f99317183f48fea52821cebafca', 28, 3, 'nApp', '[]', 0, '2020-11-22 07:06:38', '2020-11-22 07:06:38', '2021-11-22 14:06:38'),
('b67ca040611151008ece0789c4e664e8eafb03c9760d812d91d4a9e4d0b6eb8a3d1b2ab058a36f31', 28, 3, 'nApp', '[]', 0, '2020-11-14 03:11:21', '2020-11-14 03:11:21', '2021-11-14 10:11:21'),
('b77742ec7ca7998db265dd807c9976e5a545aac494cdde68427584e0cf90966655196cff8dad32b8', 28, 3, 'nApp', '[]', 0, '2020-11-14 03:12:51', '2020-11-14 03:12:51', '2021-11-14 10:12:51'),
('bed3d68229ed320d2599bf9b6584239e79bcaab34eda85320659547d611ed4a2f482025f2f4c71f3', 26, 3, 'nApp', '[]', 0, '2020-11-23 08:10:32', '2020-11-23 08:10:32', '2021-11-23 15:10:32'),
('c1bf9a8c05e14db4805ac5901f0a20519edeb880e535d59c138712339cb879a4adc7a0959eea434f', 24, 3, 'nApp', '[]', 0, '2020-11-11 06:23:48', '2020-11-11 06:23:48', '2021-11-11 13:23:48'),
('de56c650564a36da616098699fc19cdd8740743f6cf9a9d03c415521d6eaf64a2a1a6f5b1a904316', 24, 3, 'nApp', '[]', 0, '2020-11-11 06:37:26', '2020-11-11 06:37:26', '2021-11-11 13:37:26'),
('e2b26d267d2b7f488ec53c007c4fa1a9bd106fcb0b0171feb29b14d98d0411670e384e568e7cee4a', 26, 3, 'nApp', '[]', 0, '2020-11-23 07:59:39', '2020-11-23 07:59:39', '2021-11-23 14:59:39'),
('e4d5d47d0e389efa539c41fbb21999ec944b4890171688f8b9f8e26e4882754c58d0c6037d23154d', 26, 3, 'nApp', '[]', 0, '2020-11-24 00:36:47', '2020-11-24 00:36:47', '2021-11-24 07:36:47'),
('f9c7ebe636f1b1ccd0aa1434166999ebb5dd1672c6497d24ccb7cee054cb65df6ec73225b84ba97e', 24, 3, 'nApp', '[]', 0, '2020-11-11 06:16:21', '2020-11-11 06:16:21', '2021-11-11 13:16:21'),
('fc6db72728f6c33408985508c7f614cbc60bfab88e1931edbee8cce5d68bbcbc9512a30ab9af3c29', 24, 3, 'nApp', '[]', 0, '2020-11-11 06:31:35', '2020-11-11 06:31:35', '2021-11-11 13:31:35');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_clients`
--

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `provider`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Laravel Personal Access Client', 'xw01vYnQQd6QTfAlt1RnlUliyGvOnAMaAQkp3oI8', NULL, 'http://localhost', 1, 0, 0, '2020-11-01 05:04:18', '2020-11-01 05:04:18'),
(2, NULL, 'Laravel Password Grant Client', 'QO7Ge77lw0PH4aqlO96BHv7nTnHblXSa4GR4dgjl', 'users', 'http://localhost', 0, 1, 0, '2020-11-01 05:04:18', '2020-11-01 05:04:18'),
(3, NULL, 'Laravel Personal Access Client', 'oLkkQx9wKgNCmttZmtNNN55FfSsjt77J4Hn86U0j', NULL, 'http://localhost', 1, 0, 0, '2020-11-01 05:43:11', '2020-11-01 05:43:11'),
(4, NULL, 'Laravel Password Grant Client', 'eqj45SdVbrZGxRQxwZ2KBDTCXu7fzH3MOoRjjNjy', 'users', 'http://localhost', 0, 1, 0, '2020-11-01 05:43:11', '2020-11-01 05:43:11');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_personal_access_clients`
--

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2020-11-01 05:04:18', '2020-11-01 05:04:18'),
(2, 3, '2020-11-01 05:43:11', '2020-11-01 05:43:11');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `partner`
--

CREATE TABLE `partner` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `logo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_category` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `partner`
--

INSERT INTO `partner` (`id`, `name`, `logo`, `id_category`, `created_at`, `updated_at`) VALUES
(7, 'BCA', 'partnerLogo1604756628.png', 3, '2020-11-07 06:43:49', '2020-11-07 06:43:49'),
(8, 'BNI', 'partnerLogo1604756642.png', 3, '2020-11-07 06:44:02', '2020-11-07 06:44:02'),
(9, 'Bukalapak', 'partnerLogo1604756665.png', 2, '2020-11-07 06:44:25', '2020-11-07 06:44:25'),
(10, 'KFC', 'partnerLogo1604756695.png', 1, '2020-11-07 06:44:55', '2020-11-07 06:44:55'),
(11, 'Wendys', 'partnerLogo1604756705.png', 1, '2020-11-07 06:45:05', '2020-11-07 06:45:05'),
(12, 'Tix Id', 'partnerLogo1604756724.png', 1, '2020-11-07 06:45:24', '2020-11-07 06:45:24'),
(13, 'BPJS', 'partnerLogo1604756742.png', 1, '2020-11-07 06:45:42', '2020-11-07 06:45:42'),
(14, 'Tea Leaf', 'partnerLogo1604756751.png', 2, '2020-11-07 06:45:52', '2020-11-07 06:45:52'),
(15, 'Mandiri', 'partnerLogo1604756768.png', 3, '2020-11-07 06:46:08', '2020-11-07 06:46:08'),
(16, 'Atm Bersama', 'partnerLogo1604756787.png', 3, '2020-11-07 06:46:27', '2020-11-07 06:46:27'),
(17, 'MayBank', 'partnerLogo1604756800.png', 3, '2020-11-07 06:46:40', '2020-11-07 06:46:40'),
(18, 'Dan Dan', 'partnerLogo1604756828.png', 2, '2020-11-07 06:47:08', '2020-11-07 06:47:08'),
(19, 'Hokben', 'partnerLogo1604756837.png', 2, '2020-11-07 06:47:17', '2020-11-07 06:47:17'),
(20, 'Ramayana', 'partnerLogo1604756857.png', 2, '2020-11-07 06:47:37', '2020-11-07 06:47:37'),
(21, 'btpn', 'partnerLogo1604756874.png', 3, '2020-11-07 06:47:54', '2020-11-07 06:47:54');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `patungan`
--

CREATE TABLE `patungan` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `group_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `partner_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `saldo` decimal(12,2) NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `bank` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(110) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mitra` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rekening` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nomor_hp` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `app` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `receiver_id` bigint(20) UNSIGNED DEFAULT NULL,
  `mitra_id` bigint(20) UNSIGNED DEFAULT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp(),
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payments`
--

INSERT INTO `payments` (`id`, `saldo`, `type`, `bank`, `email`, `mitra`, `rekening`, `nomor_hp`, `app`, `user_id`, `receiver_id`, `mitra_id`, `date`, `created_at`, `updated_at`) VALUES
(14, '100000.00', 'Mitra bisnis', NULL, NULL, 'Copter Vision', NULL, NULL, NULL, 26, NULL, 4, '2020-11-13 16:08:06', '2020-11-13 16:08:06', '2020-11-13 16:08:06');

-- --------------------------------------------------------

--
-- Table structure for table `pricing_game`
--

CREATE TABLE `pricing_game` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `price` decimal(12,2) NOT NULL,
  `point` decimal(12,2) NOT NULL,
  `banner` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_game` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pricing_game`
--

INSERT INTO `pricing_game` (`id`, `price`, `point`, `banner`, `id_game`, `created_at`, `updated_at`) VALUES
(7, '15000.00', '10000.00', 'price.1604833527.jpeg', 7, '2020-11-08 03:16:56', '2020-11-08 04:05:27'),
(8, '45000.00', '35000.00', 'price.1604830765.jpeg', 7, '2020-11-08 03:17:32', '2020-11-08 03:19:25'),
(9, '75000.00', '70000.00', 'price.1604830797.jpeg', 7, '2020-11-08 03:19:58', '2020-11-08 03:19:58'),
(10, '110000.00', '100000.00', 'price.1604830946.jpeg', 7, '2020-11-08 03:20:31', '2020-11-08 03:22:26'),
(11, '130000.00', '125000.00', 'price.1604830870.jpeg', 7, '2020-11-08 03:21:10', '2020-11-08 03:21:10'),
(12, '250000.00', '250000.00', 'price.1604830910.jpeg', 7, '2020-11-08 03:21:50', '2020-11-08 03:21:50'),
(13, '10000.00', '1000.00', 'price.1604831181.jpeg', 8, '2020-11-08 03:26:21', '2020-11-08 03:26:21'),
(14, '50000.00', '5000.00', 'price.1604831197.jpeg', 8, '2020-11-08 03:26:37', '2020-11-08 03:26:37'),
(15, '100000.00', '10000.00', 'price.1604831212.jpeg', 8, '2020-11-08 03:26:52', '2020-11-08 03:26:52'),
(16, '12000.00', '120.00', 'price.1604831299.png', 9, '2020-11-08 03:28:19', '2020-11-08 03:28:19'),
(17, '20000.00', '250.00', 'price.1604831315.jpeg', 9, '2020-11-08 03:28:35', '2020-11-08 03:28:35'),
(18, '30000.00', '350.00', 'price.1604831328.jpeg', 9, '2020-11-08 03:28:48', '2020-11-08 03:28:48'),
(19, '10000.00', '100.00', 'price.1604831476.jpeg', 10, '2020-11-08 03:31:16', '2020-11-08 03:31:16'),
(20, '20000.00', '200.00', 'price.1604831486.jpeg', 10, '2020-11-08 03:31:26', '2020-11-08 03:31:26'),
(21, '30000.00', '300.00', 'price.1604831495.jpeg', 10, '2020-11-08 03:31:35', '2020-11-08 03:31:35'),
(22, '40000.00', '400.00', 'price.1604831507.jpeg', 10, '2020-11-08 03:31:47', '2020-11-08 03:31:47'),
(23, '15000.00', '150.00', 'price.1604831689.jpeg', 11, '2020-11-08 03:34:49', '2020-11-08 03:34:49'),
(24, '25000.00', '250.00', 'price.1604831701.jpeg', 11, '2020-11-08 03:35:02', '2020-11-08 03:35:02'),
(25, '35000.00', '350.00', 'price.1604831710.jpeg', 11, '2020-11-08 03:35:10', '2020-11-08 03:35:10'),
(26, '45000.00', '450.00', 'price.1604831717.jpeg', 11, '2020-11-08 03:35:18', '2020-11-08 03:35:18'),
(27, '55000.00', '550.00', 'price.1604831729.png', 11, '2020-11-08 03:35:29', '2020-11-08 03:35:29'),
(28, '50000.00', '250.00', 'price.1604832313.jpeg', 12, '2020-11-08 03:45:13', '2020-11-08 03:45:13'),
(29, '100000.00', '500.00', 'price.1604832371.jpeg', 12, '2020-11-08 03:45:31', '2020-11-08 03:46:11'),
(30, '150000.00', '750.00', 'price.1604832397.jpeg', 12, '2020-11-08 03:46:37', '2020-11-08 03:46:37'),
(31, '13000.00', '130.00', 'price.1604832591.jpeg', 13, '2020-11-08 03:49:51', '2020-11-08 03:49:51'),
(32, '26000.00', '260.00', 'price.1604832602.jpeg', 13, '2020-11-08 03:50:02', '2020-11-08 03:50:02'),
(33, '39000.00', '390.00', 'price.1604832619.jpeg', 13, '2020-11-08 03:50:19', '2020-11-08 03:50:19'),
(34, '40000.00', '4000.00', 'price.1604832700.jpeg', 14, '2020-11-08 03:51:41', '2020-11-08 03:51:41'),
(35, '80000.00', '8000.00', 'price.1604832710.jpeg', 14, '2020-11-08 03:51:50', '2020-11-08 03:51:50'),
(36, '120000.00', '12000.00', 'price.1604832726.jpeg', 14, '2020-11-08 03:52:06', '2020-11-08 03:52:06');

-- --------------------------------------------------------

--
-- Table structure for table `promo`
--

CREATE TABLE `promo` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `banner` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_category` bigint(20) UNSIGNED NOT NULL,
  `ex_date` date DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `promo`
--

INSERT INTO `promo` (`id`, `title`, `banner`, `description`, `id_category`, `ex_date`, `created_at`, `updated_at`) VALUES
(8, 'Bikin Akun MOMN BONUS Voucher Tagihan Rp20Ribu', 'promoBanner1604728754.jpeg', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed aliquam dolor at ipsum tincidunt scelerisque. Ut non justo cursus, imperdiet sem id, consequat risus. Duis in euismod dui. Aenean ut venenatis neque, a molestie ligula. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris sit amet tincidunt sem. Sed pulvinar elit sed vestibulum tempor. Duis porta purus sed elit scelerisque ultrices. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Integer vel venenatis quam. Cras commodo tellus in porttitor interdum. Fusce imperdiet nunc ligula, a condimentum nisl aliquam nec. Nam euismod leo a sem ornare malesuada.\n\nCras sed ullamcorper ante. Ut viverra nulla vel odio mollis ultricies. Morbi elit lectus, pulvinar at lacus sodales, porta fermentum nulla. Donec et purus porttitor, malesuada sapien vel, rhoncus ligula. Vestibulum ac blandit ex. Integer tempus placerat turpis, et posuere lorem venenatis id. Sed porta sit amet justo in mollis. Nam ante ante, sollicitudin eget lacus id, posuere eleifend leo. Nam suscipit euismod dui eu tincidunt. Curabitur quis urna vitae ex efficitur tincidunt id at quam. Donec leo mi, posuere a porta commodo, efficitur sit amet mauris. Ut in vulputate erat, nec rutrum sapien. Nam aliquet sollicitudin velit sit amet ultrices. Suspendisse efficitur velit ac libero pellentesque tempus. Nulla eget risus sed elit sodales euismod sed quis diam. Phasellus eu ultrices libero.', 1, '2020-12-18', '2020-11-06 22:59:21', '2020-11-06 22:59:21'),
(9, 'Bonus Arcana setiap topup steam wallet', 'promoBanner1604728941.jpeg', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed aliquam dolor at ipsum tincidunt scelerisque. Ut non justo cursus, imperdiet sem id, consequat risus. Duis in euismod dui. Aenean ut venenatis neque, a molestie ligula. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris sit amet tincidunt sem. Sed pulvinar elit sed vestibulum tempor. Duis porta purus sed elit scelerisque ultrices. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Integer vel venenatis quam. Cras commodo tellus in porttitor interdum. Fusce imperdiet nunc ligula, a condimentum nisl aliquam nec. Nam euismod leo a sem ornare malesuada.\n\nCras sed ullamcorper ante. Ut viverra nulla vel odio mollis ultricies. Morbi elit lectus, pulvinar at lacus sodales, porta fermentum nulla. Donec et purus porttitor, malesuada sapien vel, rhoncus ligula. Vestibulum ac blandit ex. Integer tempus placerat turpis, et posuere lorem venenatis id. Sed porta sit amet justo in mollis. Nam ante ante, sollicitudin eget lacus id, posuere eleifend leo. Nam suscipit euismod dui eu tincidunt. Curabitur quis urna vitae ex efficitur tincidunt id at quam. Donec leo mi, posuere a porta commodo, efficitur sit amet mauris. Ut in vulputate erat, nec rutrum sapien. Nam aliquet sollicitudin velit sit amet ultrices. Suspendisse efficitur velit ac libero pellentesque tempus. Nulla eget risus sed elit sodales euismod sed quis diam. Phasellus eu ultrices libero.', 1, '2020-11-26', '2020-11-06 23:02:23', '2020-11-06 23:02:23'),
(10, 'Bonus Pulsa 150rb setiap topup lebih dari Rp 150ribu', 'promoBanner1604728987.jpeg', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed aliquam dolor at ipsum tincidunt scelerisque. Ut non justo cursus, imperdiet sem id, consequat risus. Duis in euismod dui. Aenean ut venenatis neque, a molestie ligula. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris sit amet tincidunt sem. Sed pulvinar elit sed vestibulum tempor. Duis porta purus sed elit scelerisque ultrices. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Integer vel venenatis quam. Cras commodo tellus in porttitor interdum. Fusce imperdiet nunc ligula, a condimentum nisl aliquam nec. Nam euismod leo a sem ornare malesuada.\n\nCras sed ullamcorper ante. Ut viverra nulla vel odio mollis ultricies. Morbi elit lectus, pulvinar at lacus sodales, porta fermentum nulla. Donec et purus porttitor, malesuada sapien vel, rhoncus ligula. Vestibulum ac blandit ex. Integer tempus placerat turpis, et posuere lorem venenatis id. Sed porta sit amet justo in mollis. Nam ante ante, sollicitudin eget lacus id, posuere eleifend leo. Nam suscipit euismod dui eu tincidunt. Curabitur quis urna vitae ex efficitur tincidunt id at quam. Donec leo mi, posuere a porta commodo, efficitur sit amet mauris. Ut in vulputate erat, nec rutrum sapien. Nam aliquet sollicitudin velit sit amet ultrices. Suspendisse efficitur velit ac libero pellentesque tempus. Nulla eget risus sed elit sodales euismod sed quis diam. Phasellus eu ultrices libero.', 1, '2020-11-26', '2020-11-06 23:03:08', '2020-11-06 23:03:08'),
(11, 'Bonus Kuota setiap beli pulsa Rp150rb', 'promoBanner1604743598.jpeg', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed aliquam dolor at ipsum tincidunt scelerisque. Ut non justo cursus, imperdiet sem id, consequat risus. Duis in euismod dui. Aenean ut venenatis neque, a molestie ligula. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris sit amet tincidunt sem. Sed pulvinar elit sed vestibulum tempor. Duis porta purus sed elit scelerisque ultrices. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Integer vel venenatis quam. Cras commodo tellus in porttitor interdum. Fusce imperdiet nunc ligula, a condimentum nisl aliquam nec. Nam euismod leo a sem ornare malesuada.\n\nCras sed ullamcorper ante. Ut viverra nulla vel odio mollis ultricies. Morbi elit lectus, pulvinar at lacus sodales, porta fermentum nulla. Donec et purus porttitor, malesuada sapien vel, rhoncus ligula. Vestibulum ac blandit ex. Integer tempus placerat turpis, et posuere lorem venenatis id. Sed porta sit amet justo in mollis. Nam ante ante, sollicitudin eget lacus id, posuere eleifend leo. Nam suscipit euismod dui eu tincidunt. Curabitur quis urna vitae ex efficitur tincidunt id at quam. Donec leo mi, posuere a porta commodo, efficitur sit amet mauris. Ut in vulputate erat, nec rutrum sapien. Nam aliquet sollicitudin velit sit amet ultrices. Suspendisse efficitur velit ac libero pellentesque tempus. Nulla eget risus sed elit sodales euismod sed quis diam. Phasellus eu ultrices libero.', 2, '2020-12-10', '2020-11-07 03:07:02', '2020-11-07 03:07:02'),
(12, 'Beli 1 Gratis 120jt', 'promoBanner1604799425.png', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean eu velit cursus justo elementum vestibulum eget id quam. Ut vehicula blandit nibh, eget sodales nibh. Aenean sagittis elit quis quam elementum, ac malesuada ligula placerat. Donec maximus justo quis orci consectetur scelerisque. Donec quis enim diam. Curabitur auctor vulputate lorem non lobortis. Sed ultricies elit lorem, vel facilisis neque vestibulum quis. Duis a quam ac libero pulvinar posuere. Nunc molestie posuere est, id gravida metus vestibulum ut. Integer libero justo, ultrices non nunc in, varius sollicitudin nisi. Sed nec odio pellentesque, vehicula metus euismod, sollicitudin ipsum. Quisque pulvinar lobortis nisl sed tincidunt. Donec viverra nunc eu nunc tristique varius. Proin sagittis, lectus ac imperdiet placerat, magna tellus feugiat eros, efficitur semper nulla orci quis ipsum. Sed vel feugiat massa, in interdum orci. Duis gravida, odio eu eleifend scelerisque, elit lorem semper libero, a consectetur erat eros in eros.\n\nVivamus vitae dui imperdiet, tempor nibh vitae, lobortis sapien. Pellentesque faucibus pretium varius. Donec feugiat lorem tellus. Aliquam pharetra porttitor porta. Sed pharetra ipsum nec nunc dapibus, sit amet gravida dui elementum. Quisque sodales facilisis porta. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Nunc eget lectus enim. Pellentesque placerat consectetur lorem, eu volutpat mi consequat vitae. Proin ut diam auctor, aliquet arcu eget, fermentum odio.\n\nNulla et molestie ante, vel hendrerit magna. Donec lacinia vestibulum sapien non rhoncus. Aenean nec lorem vitae erat volutpat porta. Donec sed sem vel mi scelerisque vehicula consectetur id quam. Sed cursus sapien vel nibh commodo facilisis. Curabitur eros diam, tempor et tincidunt at, laoreet sed mi. In ultrices eros magna, sed tempor nibh sagittis ut. Vestibulum commodo quis magna quis maximus. Duis vehicula nisl a nibh feugiat, nec tempus mauris porttitor. Cras ut interdum arcu. Vivamus ultricies fermentum leo non faucibus. Aenean eget erat pretium, elementum dui in, iaculis dui. Ut eget consequat libero. Maecenas iaculis erat mi, vitae elementum velit laoreet at. Nam aliquam sapien sit amet tellus dignissim varius id in nisi. Integer ultrices, ex quis euismod sollicitudin, mauris nulla aliquet turpis, ut iaculis orci eros id enim.', 2, '2020-11-25', '2020-11-07 18:37:06', '2020-11-07 18:37:06'),
(13, 'Buy 1 Get 10', 'promoBanner1604799483.jpeg', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean eu velit cursus justo elementum vestibulum eget id quam. Ut vehicula blandit nibh, eget sodales nibh. Aenean sagittis elit quis quam elementum, ac malesuada ligula placerat. Donec maximus justo quis orci consectetur scelerisque. Donec quis enim diam. Curabitur auctor vulputate lorem non lobortis. Sed ultricies elit lorem, vel facilisis neque vestibulum quis. Duis a quam ac libero pulvinar posuere. Nunc molestie posuere est, id gravida metus vestibulum ut. Integer libero justo, ultrices non nunc in, varius sollicitudin nisi. Sed nec odio pellentesque, vehicula metus euismod, sollicitudin ipsum. Quisque pulvinar lobortis nisl sed tincidunt. Donec viverra nunc eu nunc tristique varius. Proin sagittis, lectus ac imperdiet placerat, magna tellus feugiat eros, efficitur semper nulla orci quis ipsum. Sed vel feugiat massa, in interdum orci. Duis gravida, odio eu eleifend scelerisque, elit lorem semper libero, a consectetur erat eros in eros.\n\nVivamus vitae dui imperdiet, tempor nibh vitae, lobortis sapien. Pellentesque faucibus pretium varius. Donec feugiat lorem tellus. Aliquam pharetra porttitor porta. Sed pharetra ipsum nec nunc dapibus, sit amet gravida dui elementum. Quisque sodales facilisis porta. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Nunc eget lectus enim. Pellentesque placerat consectetur lorem, eu volutpat mi consequat vitae. Proin ut diam auctor, aliquet arcu eget, fermentum odio.\n\nNulla et molestie ante, vel hendrerit magna. Donec lacinia vestibulum sapien non rhoncus. Aenean nec lorem vitae erat volutpat porta. Donec sed sem vel mi scelerisque vehicula consectetur id quam. Sed cursus sapien vel nibh commodo facilisis. Curabitur eros diam, tempor et tincidunt at, laoreet sed mi. In ultrices eros magna, sed tempor nibh sagittis ut. Vestibulum commodo quis magna quis maximus. Duis vehicula nisl a nibh feugiat, nec tempus mauris porttitor. Cras ut interdum arcu. Vivamus ultricies fermentum leo non faucibus. Aenean eget erat pretium, elementum dui in, iaculis dui. Ut eget consequat libero. Maecenas iaculis erat mi, vitae elementum velit laoreet at. Nam aliquam sapien sit amet tellus dignissim varius id in nisi. Integer ultrices, ex quis euismod sollicitudin, mauris nulla aliquet turpis, ut iaculis orci eros id enim.', 2, '2020-11-27', '2020-11-07 18:38:05', '2020-11-07 18:38:05'),
(14, 'Get 10 Buy 1', 'promoBanner1604799507.jpeg', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean eu velit cursus justo elementum vestibulum eget id quam. Ut vehicula blandit nibh, eget sodales nibh. Aenean sagittis elit quis quam elementum, ac malesuada ligula placerat. Donec maximus justo quis orci consectetur scelerisque. Donec quis enim diam. Curabitur auctor vulputate lorem non lobortis. Sed ultricies elit lorem, vel facilisis neque vestibulum quis. Duis a quam ac libero pulvinar posuere. Nunc molestie posuere est, id gravida metus vestibulum ut. Integer libero justo, ultrices non nunc in, varius sollicitudin nisi. Sed nec odio pellentesque, vehicula metus euismod, sollicitudin ipsum. Quisque pulvinar lobortis nisl sed tincidunt. Donec viverra nunc eu nunc tristique varius. Proin sagittis, lectus ac imperdiet placerat, magna tellus feugiat eros, efficitur semper nulla orci quis ipsum. Sed vel feugiat massa, in interdum orci. Duis gravida, odio eu eleifend scelerisque, elit lorem semper libero, a consectetur erat eros in eros.\n\nVivamus vitae dui imperdiet, tempor nibh vitae, lobortis sapien. Pellentesque faucibus pretium varius. Donec feugiat lorem tellus. Aliquam pharetra porttitor porta. Sed pharetra ipsum nec nunc dapibus, sit amet gravida dui elementum. Quisque sodales facilisis porta. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Nunc eget lectus enim. Pellentesque placerat consectetur lorem, eu volutpat mi consequat vitae. Proin ut diam auctor, aliquet arcu eget, fermentum odio.\n\nNulla et molestie ante, vel hendrerit magna. Donec lacinia vestibulum sapien non rhoncus. Aenean nec lorem vitae erat volutpat porta. Donec sed sem vel mi scelerisque vehicula consectetur id quam. Sed cursus sapien vel nibh commodo facilisis. Curabitur eros diam, tempor et tincidunt at, laoreet sed mi. In ultrices eros magna, sed tempor nibh sagittis ut. Vestibulum commodo quis magna quis maximus. Duis vehicula nisl a nibh feugiat, nec tempus mauris porttitor. Cras ut interdum arcu. Vivamus ultricies fermentum leo non faucibus. Aenean eget erat pretium, elementum dui in, iaculis dui. Ut eget consequat libero. Maecenas iaculis erat mi, vitae elementum velit laoreet at. Nam aliquam sapien sit amet tellus dignissim varius id in nisi. Integer ultrices, ex quis euismod sollicitudin, mauris nulla aliquet turpis, ut iaculis orci eros id enim.', 2, '2020-12-15', '2020-11-07 18:38:29', '2020-11-07 18:38:29'),
(15, 'Beli Arcana Dota Gratis Skin ML', 'promoBanner1604799553.jpeg', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean eu velit cursus justo elementum vestibulum eget id quam. Ut vehicula blandit nibh, eget sodales nibh. Aenean sagittis elit quis quam elementum, ac malesuada ligula placerat. Donec maximus justo quis orci consectetur scelerisque. Donec quis enim diam. Curabitur auctor vulputate lorem non lobortis. Sed ultricies elit lorem, vel facilisis neque vestibulum quis. Duis a quam ac libero pulvinar posuere. Nunc molestie posuere est, id gravida metus vestibulum ut. Integer libero justo, ultrices non nunc in, varius sollicitudin nisi. Sed nec odio pellentesque, vehicula metus euismod, sollicitudin ipsum. Quisque pulvinar lobortis nisl sed tincidunt. Donec viverra nunc eu nunc tristique varius. Proin sagittis, lectus ac imperdiet placerat, magna tellus feugiat eros, efficitur semper nulla orci quis ipsum. Sed vel feugiat massa, in interdum orci. Duis gravida, odio eu eleifend scelerisque, elit lorem semper libero, a consectetur erat eros in eros.\n\nVivamus vitae dui imperdiet, tempor nibh vitae, lobortis sapien. Pellentesque faucibus pretium varius. Donec feugiat lorem tellus. Aliquam pharetra porttitor porta. Sed pharetra ipsum nec nunc dapibus, sit amet gravida dui elementum. Quisque sodales facilisis porta. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Nunc eget lectus enim. Pellentesque placerat consectetur lorem, eu volutpat mi consequat vitae. Proin ut diam auctor, aliquet arcu eget, fermentum odio.\n\nNulla et molestie ante, vel hendrerit magna. Donec lacinia vestibulum sapien non rhoncus. Aenean nec lorem vitae erat volutpat porta. Donec sed sem vel mi scelerisque vehicula consectetur id quam. Sed cursus sapien vel nibh commodo facilisis. Curabitur eros diam, tempor et tincidunt at, laoreet sed mi. In ultrices eros magna, sed tempor nibh sagittis ut. Vestibulum commodo quis magna quis maximus. Duis vehicula nisl a nibh feugiat, nec tempus mauris porttitor. Cras ut interdum arcu. Vivamus ultricies fermentum leo non faucibus. Aenean eget erat pretium, elementum dui in, iaculis dui. Ut eget consequat libero. Maecenas iaculis erat mi, vitae elementum velit laoreet at. Nam aliquam sapien sit amet tellus dignissim varius id in nisi. Integer ultrices, ex quis euismod sollicitudin, mauris nulla aliquet turpis, ut iaculis orci eros id enim.', 2, '2020-11-30', '2020-11-07 18:39:15', '2020-11-07 18:39:15');

-- --------------------------------------------------------

--
-- Table structure for table `tag`
--

CREATE TABLE `tag` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tag`
--

INSERT INTO `tag` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Dompet Digital', '2020-10-30 22:01:49', '2020-10-30 22:14:01'),
(2, 'Bisnis', '2020-10-30 22:01:49', '2020-10-30 22:01:49'),
(3, 'MOMN', '2020-10-30 22:01:49', '2020-10-30 22:01:49'),
(4, 'Digital', '2020-10-30 22:01:49', '2020-10-30 22:01:49'),
(5, 'Startup', '2020-10-30 22:01:49', '2020-10-30 22:01:49');

-- --------------------------------------------------------

--
-- Table structure for table `tag_blog`
--

CREATE TABLE `tag_blog` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_tag` bigint(20) UNSIGNED NOT NULL,
  `id_blog` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tag_blog`
--

INSERT INTO `tag_blog` (`id`, `id_tag`, `id_blog`, `created_at`, `updated_at`) VALUES
(10, 1, 8, NULL, NULL),
(11, 1, 9, NULL, NULL),
(12, 2, 9, NULL, NULL),
(13, 1, 10, NULL, NULL),
(14, 2, 10, NULL, NULL),
(15, 3, 10, NULL, NULL),
(16, 4, 11, NULL, NULL),
(17, 4, 12, NULL, NULL),
(18, 5, 12, NULL, NULL),
(19, 1, 13, NULL, NULL),
(20, 2, 14, NULL, NULL),
(21, 5, 15, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `testimoni`
--

CREATE TABLE `testimoni` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `age` int(11) NOT NULL,
  `caption` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `profession` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `level` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo_png` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `testimoni`
--

INSERT INTO `testimoni` (`id`, `name`, `age`, `caption`, `profession`, `level`, `photo`, `photo_png`, `created_at`, `updated_at`) VALUES
(2, 'Mohammad Khusnul Khuluq', 19, 'Lorem Ipsum Dolor Sit Amet', 'CEO SideScript MOMN', 'dev', 'personTestimoni1604212706.png', NULL, '2020-10-31 23:38:27', '2020-10-31 23:38:27'),
(3, 'Ade Mada Marshanda', 17, 'Lorem Ipsum Dolor Sit Amet', 'Presentator', 'dev', 'personTestimoni1604212853.jpeg', NULL, '2020-10-31 23:38:45', '2020-10-31 23:40:53'),
(4, 'Reihan Almas', 18, 'Lorem Ipsum Dolor Sit Amet', 'Mobile Developer', 'dev', 'personTestimoni1604212760.jpeg', NULL, '2020-10-31 23:39:23', '2020-10-31 23:39:23'),
(5, 'Mohammad Khusnul Khuluq', 18, 'Simple Praktis, Engga Ribet, Aman dan Nyaman, Sekali pencet langsung Cair.', 'Fullstack dev', 'general', 'personTestimoni1604719252.png', NULL, '2020-11-06 08:31:35', '2020-11-06 20:20:52'),
(6, 'Ade Mada Marshanda', 17, 'Ada Pembayaran BPJS dan itu Mudah banget dan bisa dipakai di Restoran manapun.', 'Presentator', 'general', 'personTestimoni1604719203.jpeg', NULL, '2020-11-06 08:33:44', '2020-11-06 20:20:05'),
(7, 'Ilham Magfiro', 17, 'Praktis gak pakek ribet', 'Frontend web developer', 'general', 'personTestimoni1604719345.jpeg', NULL, '2020-11-06 08:34:45', '2020-11-06 20:22:27'),
(8, 'Reihan almas hamster', 17, 'Ribetnya gak ada sama sekali', 'Mobile developer', 'general', 'personTestimoni1604719413.jpeg', NULL, '2020-11-06 08:40:27', '2020-11-06 20:23:36'),
(9, 'Deva Ntahlah', 17, 'Waww.. Mudah sekali kalo pakek MOMN', 'Illustrator', 'general', 'personTestimoni1604719485.jpeg', NULL, '2020-11-06 08:41:33', '2020-11-06 20:24:46'),
(10, 'Mohammad Khusnul Khuluq', 18, 'MOMN pakai webpack, jadi webnya canggih hahah', 'CO-Founder Sidescript', 'partner', 'personTestimoni1604982837.jpeg', 'FilePng1604982837.png', '2020-11-09 21:33:58', '2020-11-09 21:33:58'),
(11, 'Ilham Magfiro', 17, 'Kita mengembangakan website MOMN dengan Totalitas', 'Web Developer Sidescript', 'partner', 'personTestimoni1604983008.jpeg', 'FilePng1604983010.png', '2020-11-09 21:36:52', '2020-11-09 21:36:52'),
(12, 'Ade Mada Marshanda', 17, 'Kita sangat totalitas dalam mengembangkan software', 'Presentator Sidescript', 'partner', 'personTestimoni1604983197.jpeg', 'FilePng1604983199.png', '2020-11-09 21:40:01', '2020-11-09 21:40:01');

-- --------------------------------------------------------

--
-- Table structure for table `topup_users`
--

CREATE TABLE `topup_users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nominal` decimal(12,2) NOT NULL,
  `rekening` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bank` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `topup_users`
--

INSERT INTO `topup_users` (`id`, `type`, `nominal`, `rekening`, `bank`, `user_id`, `created_at`, `updated_at`) VALUES
(3, 'market', '100000.00', NULL, NULL, 26, '2020-11-11 20:27:42', '2020-11-11 20:27:42'),
(4, 'market', '100000.00', NULL, NULL, 26, '2020-11-11 20:28:05', '2020-11-11 20:28:05'),
(5, 'pulsa', '10000.00', NULL, NULL, 26, '2020-11-11 20:39:06', '2020-11-11 20:39:06'),
(6, 'pulsa', '100000.00', NULL, NULL, 28, '2020-11-21 22:32:33', '2020-11-21 22:32:33');

-- --------------------------------------------------------

--
-- Table structure for table `transaction_game`
--

CREATE TABLE `transaction_game` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_account` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_account` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token_tf` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `verified` tinyint(1) NOT NULL DEFAULT 0,
  `id_game` bigint(20) UNSIGNED NOT NULL,
  `id_price` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `transaction_game`
--

INSERT INTO `transaction_game` (`id`, `id_account`, `name_account`, `phone`, `email`, `token_tf`, `verified`, `id_game`, `id_price`, `created_at`, `updated_at`) VALUES
(7, '27262156d', 'SatriyaBajaKarat', '085645027785', 'khusnul.ninno15@gmail.com', 'StHBce', 1, 8, 15, '2020-11-08 07:29:45', '2020-11-08 08:35:12'),
(8, '524262', 'SatriyaBajaKarat', '085645027785', 'khusnul.ninno15@gmail.com', 'A877K7', 1, 9, 16, '2020-11-08 08:36:54', '2020-11-08 08:37:12'),
(10, '3t73528', 'jdhejcvjhwa', 'kjjnbkj', 'kjbhjebwjh', 'uRHViC', 1, 7, 7, '2020-11-08 09:03:04', '2020-11-08 09:03:24'),
(11, '342624', 'str', '25262', 'khusnul.ninno15@gmail.com', '9LNAhS', 1, 7, 7, '2020-11-08 09:04:37', '2020-11-08 09:04:51'),
(12, '23t72', 'hrbu', '123536', 'khusnul.ninno15@gmail.com', '9N4lJb', 0, 7, 8, '2020-11-08 09:10:53', '2020-11-08 09:10:53'),
(13, '22323', 'wekjfwb', 'kjnbjhbjk', 'kjnqwkejn', 'ir5KSc', 0, 7, 8, '2020-11-08 09:12:03', '2020-11-08 09:12:03'),
(14, '34t3y', 'hdgdh', '24326214', 'khusnul.ninno15@gmail.com', 'tNGocS', 1, 8, 14, '2020-11-08 09:14:05', '2020-11-08 09:17:13'),
(15, '2e425', 'jhjh', '23r4r34', 'khusnul.ninno15@gmail.com', 'KygGHj', 0, 13, 33, '2020-11-08 09:17:00', '2020-11-08 09:17:00'),
(16, '686877', 'jbhjuy', '638262982', 'khusnul.ninno15@gmail.com', 'd2a06I', 1, 8, 14, '2020-11-09 20:54:05', '2020-11-09 20:54:28'),
(17, '686877', 'jbhjuy', '638262982', 'khusnul.ninno15@gmail.com', 'XqC5dj', 0, 8, 14, '2020-11-09 20:54:05', '2020-11-09 20:54:05');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `phone_number` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `saldo` decimal(12,2) NOT NULL,
  `api_token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token_verify` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `level` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `active` tinyint(1) DEFAULT 0,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `name`, `email`, `email_verified_at`, `phone_number`, `password`, `avatar`, `saldo`, `api_token`, `token_verify`, `level`, `active`, `remember_token`, `created_at`, `updated_at`) VALUES
(26, 'Khusnul', 'khusnul.ninno15@gmail.com', '2020-11-11 09:09:13', '05645027785', '$2y$10$KDLQGRDCuY1PBj3yxyLhNOxHMZptROcaqLDdNDRYiE1nZbUdxNgMS', '_1605232241.png', '8870000.00', 'UU6JlYA6Sw7iOgMKcmAZXjNXb', 'x7S2Sx', 'user', 1, NULL, '2020-11-11 09:08:53', '2020-11-24 00:35:44'),
(28, 'Ninno', 'ninno.khulqu@gmail.com', '2020-11-14 03:06:18', '1425232623', '$2y$10$6veSPgVWpLuaoHrOFVEvWuGdGyYdOiRdsi.O/oJ5.8k8/SnjSSU2m', '_1605323141.png', '100000.00', 'TgBqx9YVewIG6k3N2Nnf9nFBL', 'S9YJQL', 'user', 1, NULL, '2020-11-14 03:05:16', '2020-11-21 22:32:33');

-- --------------------------------------------------------

--
-- Table structure for table `user_bussiness`
--

CREATE TABLE `user_bussiness` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `bussiness_id` bigint(20) UNSIGNED NOT NULL,
  `level` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user_group`
--

CREATE TABLE `user_group` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `group_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user_patungan`
--

CREATE TABLE `user_patungan` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nominal` decimal(12,2) NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `blog`
--
ALTER TABLE `blog`
  ADD PRIMARY KEY (`id`),
  ADD KEY `blog_id_category_foreign` (`id_category`);

--
-- Indexes for table `bussiness`
--
ALTER TABLE `bussiness`
  ADD PRIMARY KEY (`id`),
  ADD KEY `bussiness_owner_id_foreign` (`owner_id`);

--
-- Indexes for table `category_blog`
--
ALTER TABLE `category_blog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category_game`
--
ALTER TABLE `category_game`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category_partner`
--
ALTER TABLE `category_partner`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category_promo`
--
ALTER TABLE `category_promo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `chat_group`
--
ALTER TABLE `chat_group`
  ADD PRIMARY KEY (`id`),
  ADD KEY `chat_group_group_id_foreign` (`group_id`),
  ADD KEY `chat_group_user_id_foreign` (`user_id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `game`
--
ALTER TABLE `game`
  ADD PRIMARY KEY (`id`),
  ADD KEY `game_id_category_foreign` (`id_category`);

--
-- Indexes for table `group`
--
ALTER TABLE `group`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_access_tokens_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_auth_codes`
--
ALTER TABLE `oauth_auth_codes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_auth_codes_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_clients_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`);

--
-- Indexes for table `partner`
--
ALTER TABLE `partner`
  ADD PRIMARY KEY (`id`),
  ADD KEY `partner_id_category_foreign` (`id_category`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `patungan`
--
ALTER TABLE `patungan`
  ADD PRIMARY KEY (`id`),
  ADD KEY `patungan_group_id_foreign` (`group_id`),
  ADD KEY `patungan_user_id_foreign` (`user_id`),
  ADD KEY `patungan_partner_id_foreign` (`partner_id`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `payments_user_id_foreign` (`user_id`),
  ADD KEY `payments_receiver_id_foreign` (`receiver_id`),
  ADD KEY `payments_mitra_id_foreign` (`mitra_id`);

--
-- Indexes for table `pricing_game`
--
ALTER TABLE `pricing_game`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pricing_game_id_game_foreign` (`id_game`);

--
-- Indexes for table `promo`
--
ALTER TABLE `promo`
  ADD PRIMARY KEY (`id`),
  ADD KEY `promo_id_category_foreign` (`id_category`);

--
-- Indexes for table `tag`
--
ALTER TABLE `tag`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tag_blog`
--
ALTER TABLE `tag_blog`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tag_blog_id_tag_foreign` (`id_tag`),
  ADD KEY `tag_blog_id_blog_foreign` (`id_blog`);

--
-- Indexes for table `testimoni`
--
ALTER TABLE `testimoni`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `topup_users`
--
ALTER TABLE `topup_users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `topup_users_user_id_foreign` (`user_id`);

--
-- Indexes for table `transaction_game`
--
ALTER TABLE `transaction_game`
  ADD PRIMARY KEY (`id`),
  ADD KEY `transaction_games_id_game_foreign` (`id_game`),
  ADD KEY `transaction_games_id_price_foreign` (`id_price`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_email_unique` (`email`);

--
-- Indexes for table `user_bussiness`
--
ALTER TABLE `user_bussiness`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_bussiness_user_id_foreign` (`user_id`),
  ADD KEY `user_bussiness_bussiness_id_foreign` (`bussiness_id`);

--
-- Indexes for table `user_group`
--
ALTER TABLE `user_group`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_group_group_id_foreign` (`group_id`),
  ADD KEY `user_group_user_id_foreign` (`user_id`);

--
-- Indexes for table `user_patungan`
--
ALTER TABLE `user_patungan`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_patungan_user_id_foreign` (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `blog`
--
ALTER TABLE `blog`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `bussiness`
--
ALTER TABLE `bussiness`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `category_blog`
--
ALTER TABLE `category_blog`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `category_game`
--
ALTER TABLE `category_game`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `category_partner`
--
ALTER TABLE `category_partner`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `category_promo`
--
ALTER TABLE `category_promo`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `chat_group`
--
ALTER TABLE `chat_group`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `game`
--
ALTER TABLE `game`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `group`
--
ALTER TABLE `group`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `partner`
--
ALTER TABLE `partner`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `patungan`
--
ALTER TABLE `patungan`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `pricing_game`
--
ALTER TABLE `pricing_game`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `promo`
--
ALTER TABLE `promo`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `tag`
--
ALTER TABLE `tag`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tag_blog`
--
ALTER TABLE `tag_blog`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `testimoni`
--
ALTER TABLE `testimoni`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `topup_users`
--
ALTER TABLE `topup_users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `transaction_game`
--
ALTER TABLE `transaction_game`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `user_bussiness`
--
ALTER TABLE `user_bussiness`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_group`
--
ALTER TABLE `user_group`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_patungan`
--
ALTER TABLE `user_patungan`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `blog`
--
ALTER TABLE `blog`
  ADD CONSTRAINT `blog_id_category_foreign` FOREIGN KEY (`id_category`) REFERENCES `category_blog` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `bussiness`
--
ALTER TABLE `bussiness`
  ADD CONSTRAINT `bussiness_owner_id_foreign` FOREIGN KEY (`owner_id`) REFERENCES `user` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `chat_group`
--
ALTER TABLE `chat_group`
  ADD CONSTRAINT `chat_group_group_id_foreign` FOREIGN KEY (`group_id`) REFERENCES `group` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `chat_group_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `game`
--
ALTER TABLE `game`
  ADD CONSTRAINT `game_id_category_foreign` FOREIGN KEY (`id_category`) REFERENCES `category_game` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `partner`
--
ALTER TABLE `partner`
  ADD CONSTRAINT `partner_id_category_foreign` FOREIGN KEY (`id_category`) REFERENCES `category_partner` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `patungan`
--
ALTER TABLE `patungan`
  ADD CONSTRAINT `patungan_group_id_foreign` FOREIGN KEY (`group_id`) REFERENCES `group` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `patungan_partner_id_foreign` FOREIGN KEY (`partner_id`) REFERENCES `partner` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `patungan_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `group` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `payments`
--
ALTER TABLE `payments`
  ADD CONSTRAINT `payments_mitra_id_foreign` FOREIGN KEY (`mitra_id`) REFERENCES `bussiness` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `payments_receiver_id_foreign` FOREIGN KEY (`receiver_id`) REFERENCES `user` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `payments_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `pricing_game`
--
ALTER TABLE `pricing_game`
  ADD CONSTRAINT `pricing_game_id_game_foreign` FOREIGN KEY (`id_game`) REFERENCES `game` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `promo`
--
ALTER TABLE `promo`
  ADD CONSTRAINT `promo_id_category_foreign` FOREIGN KEY (`id_category`) REFERENCES `category_promo` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `tag_blog`
--
ALTER TABLE `tag_blog`
  ADD CONSTRAINT `tag_blog_id_blog_foreign` FOREIGN KEY (`id_blog`) REFERENCES `blog` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `tag_blog_id_tag_foreign` FOREIGN KEY (`id_tag`) REFERENCES `tag` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `topup_users`
--
ALTER TABLE `topup_users`
  ADD CONSTRAINT `topup_users_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `transaction_game`
--
ALTER TABLE `transaction_game`
  ADD CONSTRAINT `transaction_games_id_game_foreign` FOREIGN KEY (`id_game`) REFERENCES `game` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `transaction_games_id_price_foreign` FOREIGN KEY (`id_price`) REFERENCES `pricing_game` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `user_bussiness`
--
ALTER TABLE `user_bussiness`
  ADD CONSTRAINT `user_bussiness_bussiness_id_foreign` FOREIGN KEY (`bussiness_id`) REFERENCES `bussiness` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_bussiness_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `user_group`
--
ALTER TABLE `user_group`
  ADD CONSTRAINT `user_group_group_id_foreign` FOREIGN KEY (`group_id`) REFERENCES `group` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_group_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `user_patungan`
--
ALTER TABLE `user_patungan`
  ADD CONSTRAINT `user_patungan_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
