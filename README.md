<p align="center">
  <img src="https://github.com/user-attachments/assets/eb5aa8bf-ecc1-46af-b5ed-1d649a5a3df9" width="850"/>
</p>

<h1 align="center">🌸 HabitBloom 🌸 </h1>

<p align="center">
  <img src="https://img.shields.io/badge/Flutter-CE93D8?style=for-the-badge&logo=flutter&logoColor=white" />
  <img src="https://img.shields.io/badge/Dart-F8BBD0?style=for-the-badge&logo=dart&logoColor=black" />
  <img src="https://img.shields.io/badge/SUPABASE-3ECF8E?style=for-the-badge&logo=supabase&logoColor=white"/>
  <img src="https://img.shields.io/badge/Status-Completed-ff85c1?style=for-the-badge" />
</p>

<p align="center">
  <b>Habit Builder & Consistency Tracker App</b>
</p>

<p align="center">
  <i>Track your habits. Build discipline. Achieve your goals.</i>
</p>

---

## 👩‍💻 Disusun Oleh

| Keterangan | Data |
|:----------|:-----|
| Nama | Zahraturramadhani |
| NIM | 2409116014 |
| Kelas | A'2024 – Sistem Informasi |

---

# 📌 Deskripsi Aplikasi

**HabitBloom** merupakan aplikasi mobile berbasis Flutter yang dirancang untuk membantu pengguna membangun kebiasaan positif serta menjaga konsistensi aktivitas harian.

Aplikasi ini memungkinkan pengguna untuk mencatat berbagai kebiasaan yang ingin dilakukan setiap hari, seperti belajar, olahraga, membaca buku, atau aktivitas produktif lainnya. Setiap kebiasaan dapat ditambahkan, diedit, maupun dihapus secara fleksibel.

HabitBloom juga menyediakan fitur **progress tracking** yang menampilkan jumlah kebiasaan yang telah diselesaikan oleh pengguna. Dengan fitur ini, pengguna dapat melihat perkembangan konsistensi mereka dalam menjalankan habit setiap hari.

Data kebiasaan yang dibuat oleh pengguna akan disimpan menggunakan **Supabase Database**, sehingga data tersebut dapat dikelola secara dinamis melalui operasi **CRUD** (Create, Read, Update, Delete).

Selain itu, aplikasi ini dilengkapi dengan **sistem autentikasi login dan register menggunakan Supabase Auth** serta mendukung **Light Mode dan Dark Mode** untuk meningkatkan kenyamanan pengguna.

Selain membantu pengguna mencatat kebiasaan, HabitBloom juga dirancang dengan tampilan antarmuka yang sederhana dan mudah digunakan sehingga pengguna dapat mengelola habit mereka tanpa merasa rumit. Pengguna dapat menambahkan habit baru dengan menentukan nama kebiasaan, kategori, target harian, serta catatan tambahan jika diperlukan.

Pada halaman utama aplikasi, seluruh habit yang telah dibuat akan ditampilkan dalam bentuk daftar sehingga pengguna dapat dengan mudah melihat aktivitas apa saja yang perlu dilakukan. Setiap habit juga dapat ditandai sebagai selesai ketika sudah dilakukan, sehingga pengguna dapat mengetahui sejauh mana progres kebiasaan yang telah mereka jalankan.

Aplikasi ini juga menyediakan fitur untuk mengedit atau menghapus habit apabila pengguna ingin memperbarui target atau tidak lagi menjalankan kebiasaan tersebut. Dengan adanya fitur ini, pengguna dapat menyesuaikan daftar kebiasaan mereka sesuai kebutuhan.

Melalui aplikasi HabitBloom, diharapkan pengguna dapat lebih konsisten dalam menjalankan kebiasaan positif setiap hari, memantau perkembangan mereka, serta membangun rutinitas yang lebih produktif secara bertahap.

---

# 🎯 Fitur Aplikasi

### 1️⃣ Halaman Welcome

Saat aplikasi pertama kali dibuka, pengguna akan melihat halaman Welcome yang menampilkan nama aplikasi HabitBloom, tagline aplikasi, tombol login untuk masuk ke halaman login, serta link register untuk masuk ke halaman registrasi akun. Halaman ini berfungsi sebagai tampilan pembuka sebelum pengguna mulai menggunakan aplikasi.

### 2️⃣ Login & Register

Aplikasi menyediakan sistem autentikasi menggunakan Supabase Authentication. Pengguna yang sudah memiliki akun dapat langsung login menggunakan email dan password. Jika belum memiliki akun, pengguna dapat membuat akun baru melalui halaman Register dengan mengisi email, password, dan konfirmasi password.

### 3️⃣ Tambah Habit (Create)

Pengguna dapat menambahkan kebiasaan baru melalui halaman Tambah Habit. Pada halaman ini pengguna diminta mengisi beberapa informasi seperti Nama Habit, Kategori Habit, Target Harian, Catatan tambahan (opsional). Setelah data disimpan, habit tersebut akan langsung muncul pada daftar habit di halaman utama (Home Page).

### 4️⃣ Tampilkan Habit (Read)

Semua habit yang sudah dibuat akan ditampilkan pada halaman utama (Home Page) dalam bentuk daftar. Setiap habit menampilkan informasi seperti nama habit, kategori, target yang harus dicapai dan catatan apabila pengguna mengisi kolom catatan pada saat menambah habit. Dengan tampilan ini pengguna dapat dengan mudah melihat kebiasaan apa saja yang perlu dilakukan pada hari tersebut.

### 5️⃣ Edit Habit (Update)

Jika terdapat kesalahan atau pengguna ingin mengubah target habit, data habit dapat diperbarui melalui halaman Edit Habit. Ketika tombol edit ditekan, data habit yang sebelumnya sudah tersimpan akan ditampilkan kembali pada form sehingga pengguna dapat mengubah informasi yang diperlukan.

### 6️⃣ Hapus Habit (Delete)

Habit yang sudah tidak ingin dilakukan lagi dapat dihapus dari daftar. Fitur ini membantu pengguna menjaga daftar habit tetap relevan dengan kebiasaan yang sedang dijalankan.

### 7️⃣ Checklist Habit

Setiap habit memiliki tombol checklist yang dapat digunakan untuk menandai bahwa habit tersebut sudah selesai dilakukan. Ketika habit dicentang, status habit akan berubah menjadi selesai sehingga pengguna dapat mengetahui kebiasaan mana saja yang sudah dikerjakan.

### 8️⃣ Progress Habit

Aplikasi juga menampilkan progress penyelesaian habit pada bagian atas halaman utama (Home Page). Progress ini menunjukkan perbandingan antara jumlah habit yang telah selesai dengan total habit yang ada, sehingga pengguna dapat melihat sejauh mana konsistensi mereka dalam menjalankan kebiasaan.

### 9️⃣ Search Habit

Untuk memudahkan pengguna menemukan habit tertentu, aplikasi menyediakan fitur pencarian. Pengguna cukup mengetik nama habit pada kolom pencarian, dan aplikasi akan menampilkan habit yang sesuai dengan kata kunci tersebut.

### 🔟 Filter Kategori Habit

Habit juga dapat difilter berdasarkan kategori tertentu seperti Akademik, Kesehatan, Fitness, Produktivitas, Mental Health, Personal Development, Morning Routine, Spiritual. Fitur ini membantu pengguna melihat habit berdasarkan jenis aktivitas yang ingin difokuskan.

### 1️⃣1️⃣ Statistik Habit

Pada halaman utama (Home Page) juga terdapat informasi statistik seperti jumlah habit yang telah selesai dan persentase keberhasilan habit. Informasi ini membantu pengguna memantau perkembangan konsistensi mereka setiap hari.

### 1️⃣2️⃣ Greeting Message 

Pada halaman utama (Home Page) aplikasi terdapat pesan sapaan yang muncul secara otomatis ketika pengguna membuka aplikasi, misalnya seperti “Good Morning”. Pesan ini dibuat agar aplikasi terasa lebih personal dan ramah bagi pengguna. Selain itu, nama pengguna juga ditampilkan pada sapaan tersebut sehingga pengguna merasa aplikasi benar-benar ditujukan untuk mereka.

### 1️⃣3️⃣ Motivational Quote

Di bagian atas halaman utama (Home Page) juga terdapat kutipan motivasi singkat yang bertujuan untuk memberikan semangat kepada pengguna dalam menjalankan kebiasaan mereka. Pesan ini diharapkan dapat membantu pengguna tetap termotivasi untuk menyelesaikan habit yang sudah mereka buat setiap harinya.

### 1️⃣4️⃣ Reset Form pada Tambah Habit

Pada halaman tambah habit terdapat tombol **Reset Form** yang berfungsi untuk menghapus seluruh input yang sudah diisi oleh pengguna pada form. Fitur ini berguna jika pengguna ingin mengulang pengisian data dari awal tanpa harus menghapus setiap kolom secara manual.

### 1️⃣5️⃣ Preview Habit Card di halaman form

Saat pengguna mengisi form untuk menambahkan atau mengedit habit, aplikasi menampilkan **preview habit card** di bagian atas form. Preview ini akan menampilkan gambaran bagaimana habit tersebut akan terlihat di halaman utama. Dengan adanya preview ini, pengguna dapat langsung melihat hasil dari data yang mereka isi sebelum habit disimpan.

### 1️⃣6️⃣ Dark Mode & Light Mode

Aplikasi HabitBloom mendukung dua tema tampilan, yaitu Light Mode dan Dark Mode. Pengguna dapat mengganti tema sesuai preferensi agar tampilan aplikasi lebih nyaman digunakan dalam berbagai kondisi pencahayaan.

### 1️⃣7️⃣ Profile dan Logout

Aplikasi HabitBloom juga menyediakan fitur **Profile** yang menampilkan informasi akun pengguna yang sedang login. Pada halaman ini pengguna dapat melihat email yang digunakan untuk masuk ke dalam aplikasi. Selain menampilkan informasi akun, pada halaman ini juga tersedia tombol **Logout** yang dapat digunakan untuk keluar dari aplikasi. Ketika tombol logout ditekan, pengguna akan keluar dari sesi login dan akan diarahkan kembali ke halaman awal aplikasi. Fitur ini membantu menjaga keamanan akun serta memudahkan pengguna jika ingin berganti akun atau menghentikan penggunaan aplikasi sementara.

### 1️⃣8️⃣ Navigasi Antar Halaman

Fitur navigasi antar halaman digunakan untuk memindahkan pengguna dari satu halaman ke halaman lain di dalam aplikasi. Navigasi ini memungkinkan pengguna berpindah antara halaman welcome, login, register, home, serta halaman form habit dengan lebih mudah. 

Pada aplikasi ini, navigasi diatur menggunakan `Navigator` dan `MaterialPageRoute` dari Flutter. Dengan navigasi tersebut, pengguna dapat membuka halaman tertentu seperti menambah habit baru, mengedit habit, atau kembali ke halaman sebelumnya setelah menyelesaikan suatu proses.

---

# 🧩 Widget yang Digunakan

Aplikasi **HabitBloom** dibangun menggunakan berbagai widget yang disediakan oleh Flutter untuk membentuk tampilan antarmuka serta mengatur interaksi antara pengguna dan aplikasi. Setiap widget memiliki peran masing-masing, mulai dari mengatur struktur halaman, menampilkan data, hingga menangani input dari pengguna. Pada tabel berikut ditampilkan beberapa widget utama yang digunakan dalam pengembangan aplikasi HabitBloom beserta fungsinya.

| No | Widget | Fungsi |
|----|--------|--------|
| 1 | `MaterialApp` | Root aplikasi yang mengatur tema, navigasi, dan struktur dasar aplikasi. |
| 2 | `StatelessWidget` | Digunakan untuk widget tanpa perubahan state seperti `MyApp`. |
| 3 | `StatefulWidget` | Digunakan untuk halaman yang memiliki perubahan state seperti `HomePage`, `LoginPage`, `RegisterPage`, `HabitFormPage`, dan `HabitCard`. |
| 4 | `Scaffold` | Struktur dasar halaman yang menyediakan AppBar, body, dan FloatingActionButton. |
| 5 | `AppBar` | Menampilkan judul halaman serta tombol aksi seperti toggle theme dan profile. |
| 6 | `Container` | Digunakan untuk membungkus widget serta memberikan styling seperti background, border radius, dan shadow. |
| 7 | `Column` | Menyusun widget secara vertikal. |
| 8 | `Row` | Menyusun widget secara horizontal. |
| 9 | `Padding` | Memberikan jarak di sekitar widget. |
| 10 | `Expanded` | Mengatur pembagian ruang pada layout agar fleksibel. |
| 11 | `SizedBox` | Memberikan jarak antar widget. |
| 12 | `ListView` | Menampilkan daftar habit secara dinamis pada halaman utama. |
| 13 | `ListView.builder` | Digunakan untuk membuat daftar habit secara otomatis berdasarkan data dari database. |
| 14 | `ListTile` | Digunakan untuk menampilkan informasi habit seperti nama, kategori, target, dan aksi. |
| 15 | `Text` | Menampilkan teks seperti judul halaman, nama habit, dan informasi lainnya. |
| 16 | `TextField` | Digunakan untuk fitur pencarian habit pada halaman utama. |
| 17 | `TextFormField` | Digunakan untuk input form seperti nama habit, kategori, target, catatan, email, dan password. |
| 18 | `DropdownButtonFormField` | Digunakan untuk memilih kategori habit pada form. |
| 19 | `ElevatedButton` | Digunakan sebagai tombol aksi seperti login, register, simpan habit, dan konfirmasi dialog. |
| 20 | `OutlinedButton` | Digunakan sebagai tombol sekunder seperti batal atau reset form. |
| 21 | `IconButton` | Digunakan untuk tombol aksi seperti edit, delete, logout, dan toggle theme. |
| 22 | `FloatingActionButton` | Tombol untuk menambahkan habit baru. |
| 23 | `LinearProgressIndicator` | Menampilkan progress penyelesaian habit. |
| 24 | `SnackBar` | Menampilkan notifikasi ketika aksi berhasil dilakukan seperti tambah, edit, atau hapus habit. |
| 25 | `Dialog` | Digunakan untuk konfirmasi seperti hapus habit, logout, dan notifikasi sukses. |
| 26 | `AlertDialog` | Digunakan untuk menampilkan dialog informasi kepada pengguna. |
| 27 | `Navigator` | Mengatur navigasi antar halaman seperti dari login ke home atau ke form habit. |
| 28 | `MaterialPageRoute` | Digunakan bersama Navigator untuk berpindah halaman. |
| 29 | `TextEditingController` | Mengontrol input teks pada form. |
| 30 | `AnimatedContainer` | Digunakan pada checkbox habit untuk animasi perubahan status selesai. |
| 31 | `AnimatedOpacity` | Memberikan efek perubahan transparansi pada habit yang sudah selesai. |
| 32 | `TweenAnimationBuilder` | Digunakan untuk membuat animasi progress bar habit. |
| 33 | `RefreshIndicator` | Digunakan untuk fitur pull-to-refresh pada daftar habit. |
| 34 | `Stack` | Digunakan untuk menumpuk widget seperti background image dan overlay. |
| 35 | `GestureDetector` | Digunakan untuk mendeteksi interaksi pengguna seperti klik checkbox habit. |
| 36 | `PopScope` | Digunakan untuk menangani navigasi ketika pengguna mencoba keluar dari halaman form tanpa menyimpan perubahan. |

---

# 🛠️ Tools yang Digunakan

Aplikasi **HabitBloom** dikembangkan dengan memanfaatkan beberapa tools pendukung yang membantu proses pengembangan aplikasi menjadi lebih terstruktur dan efisien. Tools ini digunakan mulai dari penulisan kode program, pengelolaan database, hingga penyimpanan repository project. Dengan menggunakan tools tersebut, proses pengembangan aplikasi dapat dilakukan dengan lebih mudah serta mempermudah proses pengujian dan pengelolaan kode.

| Tools | Keterangan |
|------|------------|
| Flutter | Framework yang digunakan untuk membangun aplikasi mobile berbasis UI. |
| Dart | Bahasa pemrograman utama yang digunakan dalam pengembangan aplikasi Flutter. |
| Supabase | Digunakan sebagai backend untuk database dan authentication pengguna. |
| Visual Studio Code (VS Code) | Digunakan sebagai code editor untuk menulis dan mengelola source code aplikasi. |
| Git | Digunakan untuk version control agar perubahan kode dapat dilacak dengan baik. |
| GitHub | Digunakan untuk menyimpan repository project serta mengelola source code secara online. |
| dotenv | Digunakan untuk menyimpan konfigurasi sensitif seperti URL dan API Key Supabase. |
| Chrome (Web Preview) | Digunakan untuk menjalankan dan menguji aplikasi Flutter dalam mode web selama proses pengembangan. |

---

# 📂 Struktur Project

  <img width="285" height="1006" alt="Image" src="https://github.com/user-attachments/assets/b0ac39a7-93ad-4df8-8e7b-938c44d4db10" />
  
  Struktur project pada aplikasi **HabitBloom** mengikuti struktur standar dari project Flutter. Saat project Flutter dibuat, beberapa folder seperti
  `android`, `ios`, `linux`, `macos`, `web`, dan `windows` akan otomatis terbentuk. Folder-folder ini digunakan untuk mendukung aplikasi agar bisa dijalankan di berbagai platform, sehingga saya tidak melakukan banyak perubahan pada bagian tersebut karena lebih berfungsi untuk konfigurasi sistem.

  Sebagian besar kode yang saya kerjakan berada di dalam folder **lib**. Folder ini merupakan bagian utama dari aplikasi karena di sinilah seluruh logika program dan tampilan aplikasi ditulis.

  Di dalam folder `lib`, terdapat beberapa folder yang digunakan untuk memisahkan kode berdasarkan fungsinya agar lebih rapi dan mudah dikelola.

  Folder **config** digunakan untuk menyimpan file konfigurasi yang berkaitan dengan koneksi aplikasi ke layanan eksternal. Pada project ini terdapat file `supabase_config.dart` yang berfungsi untuk menghubungkan aplikasi dengan Supabase sebagai backend database dan authentication.

  Folder **models** digunakan untuk menyimpan struktur data yang digunakan di dalam aplikasi. Pada folder ini terdapat file `habit_model.dart` yang berisi model data habit seperti nama habit, kategori, target, catatan, serta status apakah habit tersebut sudah selesai atau belum.

  Folder **pages** berisi halaman-halaman utama yang ditampilkan kepada pengguna. Beberapa halaman yang terdapat pada folder ini antara lain  `welcome_page.dart` sebagai halaman awal aplikasi, `login_page.dart` dan `register_page.dart` untuk proses autentikasi pengguna, `home_page.dart` sebagai halaman utama yang menampilkan daftar habit, serta `habit_form_page.dart` yang digunakan untuk menambahkan atau mengedit habit.

  Selanjutnya terdapat folder **services** yang berfungsi untuk menangani proses komunikasi antara aplikasi dengan database Supabase. Pada folder ini terdapat file `habit_services.dart` yang berisi fungsi-fungsi untuk melakukan operasi CRUD seperti menambahkan habit, mengambil data habit, memperbarui habit, dan menghapus habit dari database.

  Folder **widgets** digunakan untuk menyimpan komponen UI yang digunakan kembali di beberapa bagian aplikasi. Pada project ini terdapat file `habit_card.dart` yang berfungsi untuk menampilkan tampilan setiap item habit pada daftar habit di halaman utama.

  Selain folder-folder tersebut, terdapat juga file **main.dart** yang merupakan titik awal ketika aplikasi dijalankan. Pada file ini diatur konfigurasi awal aplikasi seperti tema, routing halaman, serta inisialisasi koneksi ke Supabase.

  Di luar folder `lib`, terdapat juga folder **assets** yang digunakan untuk menyimpan file tambahan seperti gambar background yang digunakan pada tampilan aplikasi.

  Selain itu terdapat beberapa file konfigurasi penting seperti `pubspec.yaml` yang digunakan untuk mengatur dependency atau library yang digunakan pada project Flutter serta mendaftarkan assets yang digunakan dalam aplikasi. Selain itu terdapat juga file `.env` yang digunakan untuk menyimpan konfigurasi sensitif seperti Supabase URL dan API Key. Dengan menggunakan file ini, informasi penting tersebut tidak langsung dituliskan di dalam source code sehingga lebih aman ketika project diunggah ke GitHub atau dibagikan kepada orang lain.

  Project ini juga menggunakan file `.gitignore` yang berfungsi untuk menentukan file atau folder mana saja yang tidak perlu diunggah ke repository GitHub. Biasanya file yang diabaikan adalah file build, file konfigurasi lokal, serta file yang berisi data sensitif seperti `.env`. Dengan adanya `.gitignore`, repository menjadi lebih rapi dan hanya berisi file yang benar-benar diperlukan untuk menjalankan project.

  Dengan pembagian struktur seperti ini, kode program menjadi lebih terorganisir, mudah dibaca, serta memudahkan proses pengembangan dan pemeliharaan aplikasi di kemudian hari.

# 🗄 Struktur Database

Aplikasi **HabitBloom** menggunakan **Supabase** sebagai database untuk menyimpan seluruh data kebiasaan yang dibuat oleh pengguna. Data tersebut disimpan dalam sebuah tabel bernama `habits`. Setiap habit yang dibuat akan memiliki beberapa informasi seperti nama habit, kategori, target harian, catatan, serta status apakah habit tersebut sudah diselesaikan atau belum. Berikut merupakan struktur tabel yang digunakan untuk menyimpan data habit pada aplikasi HabitBloom.

| Kolom Database | Tipe Data | Keterangan |
|---------------|-----------|------------|
| id | int | ID unik setiap habit yang tersimpan di dalam database. |
| user_id | uuid | ID pengguna yang berasal dari Supabase Authentication. |
| name | text | Menyimpan nama habit yang ingin dilakukan oleh pengguna. |
| category | text | Menyimpan kategori habit seperti Akademik, Fitness, Produktivitas, dll. |
| target | text | Target harian habit seperti 30 menit, 10 halaman, dan lainnya. |
| notes | text | Catatan tambahan mengenai habit yang dibuat oleh pengguna. |
| is_done | boolean | Menyimpan status apakah habit sudah selesai atau belum dilakukan. |

---

# 📱 Tampilan Aplikasi

### Welcome Page

Halaman **Welcome Page** merupakan halaman pertama yang ditampilkan ketika aplikasi HabitBloom dibuka. Pada halaman ini pengguna akan melihat tampilan pembuka aplikasi beserta tombol untuk melanjutkan ke proses login atau registrasi akun. Tampilan halaman ini juga mendukung **Light Mode** dan **Dark Mode**, sehingga tampilan aplikasi dapat menyesuaikan dengan tema yang dipilih pengguna. Perbedaan tampilan kedua mode tersebut dapat dilihat pada gambar berikut.

| Light Mode | Dark Mode |
|:----------|:-----|
| <img width="1919" height="1033" alt="Image" src="https://github.com/user-attachments/assets/4ade33f8-04f6-4af1-8d02-3b094ed0a830" /> | <img width="1919" height="1033" alt="Image" src="https://github.com/user-attachments/assets/b6b917dc-90d0-4151-ae62-34bcf67d8f55" /> |

### Login Page

Halaman **Login Page** digunakan untuk proses autentikasi pengguna sebelum masuk ke dalam aplikasi. Pada halaman ini pengguna diminta untuk memasukkan **email** dan **password** yang telah terdaftar. Jika data yang dimasukkan benar, pengguna akan diarahkan ke halaman utama aplikasi.

Halaman login juga dilengkapi dengan validasi input untuk memastikan format email dan password sudah sesuai sebelum proses login dilakukan. Selain itu, tampilan halaman ini mendukung **Light Mode** dan **Dark Mode** sehingga pengguna tetap nyaman menggunakan aplikasi dalam berbagai kondisi tampilan.

| Light Mode | Dark Mode |
|:----------|:-----|
| <img width="1919" height="1031" alt="Image" src="https://github.com/user-attachments/assets/15b7937b-d86f-442f-947f-dd69e2f21270" /> | <img width="1919" height="1031" alt="Image" src="https://github.com/user-attachments/assets/de1b69a9-26fe-4eb5-98d8-9156769ff75b" /> |

### Register Page

Halaman **Register Page** digunakan untuk membuat akun baru sebelum pengguna dapat menggunakan aplikasi HabitBloom. Pada halaman ini pengguna diminta untuk mengisi beberapa data seperti **email**, **password**, dan **konfirmasi password**. Data tersebut kemudian akan disimpan melalui sistem autentikasi yang disediakan oleh Supabase.

Halaman ini juga dilengkapi dengan validasi input untuk memastikan data yang dimasukkan sudah benar, seperti memastikan format email valid dan password sesuai dengan ketentuan. Selain itu, tampilan halaman register juga mendukung **Light Mode** dan **Dark Mode** sehingga pengguna tetap dapat menggunakan aplikasi dengan nyaman sesuai tema yang dipilih.

| Light Mode | Dark Mode |
|:----------|:-----|
| <img width="1914" height="1030" alt="Image" src="https://github.com/user-attachments/assets/0837f616-58e4-439e-aaa2-565895e85840" /> | <img width="1914" height="1030" alt="Image" src="https://github.com/user-attachments/assets/071a4296-514d-41db-b8f2-5f349c344628" /> |

### Home Page

Halaman **Home Page** merupakan halaman utama yang ditampilkan setelah pengguna berhasil login ke dalam aplikasi. Pada halaman ini pengguna dapat melihat daftar habit yang telah dibuat, status habit yang sudah diselesaikan, serta progress penyelesaian habit pada hari tersebut.

Selain menampilkan daftar habit, halaman ini juga menyediakan beberapa fitur tambahan seperti **search habit** untuk mencari kebiasaan tertentu, **filter kategori**, serta **progress tracking** yang menunjukkan persentase habit yang telah diselesaikan. Pengguna juga dapat melakukan aksi seperti menandai habit sebagai selesai, mengedit habit, menghapus habit, atau menambahkan habit baru melalui tombol tambah yang tersedia pada halaman ini.

Perlu diperhatikan bahwa daftar habit pada halaman ini **tidak otomatis ter-reset setiap hari**. Habit yang telah dibuat akan tetap tersimpan dan ditampilkan pada hari berikutnya. Oleh karena itu, pengguna dapat mengelola kembali habit tersebut secara manual sesuai kebutuhan. Jika habit tersebut masih ingin digunakan, pengguna dapat **menghapus tanda selesai (uncheck)** agar habit dapat dikerjakan kembali. Jika ada habit yang sudah tidak digunakan, pengguna dapat **menghapus habit** tersebut. Selain itu, pengguna juga dapat **mengedit data habit** apabila terdapat perubahan pada nama habit, kategori, target harian, atau catatan.

Seperti halaman lainnya, tampilan Home Page juga mendukung **Light Mode** dan **Dark Mode** agar pengguna tetap nyaman menggunakan aplikasi dalam berbagai kondisi tampilan.

| Light Mode | Dark Mode |
|:----------|:-----|
| <img width="1919" height="1032" alt="Image" src="https://github.com/user-attachments/assets/f51e7892-2a1d-4244-b935-db5c8cc47d50" /> | <img width="1919" height="1032" alt="Image" src="https://github.com/user-attachments/assets/3aff687a-f127-4841-a001-5187e12b63bb" /> |

### Habit Form Page

Halaman **Habit Form Page** digunakan ketika pengguna ingin menambahkan habit baru atau mengedit habit yang sudah ada.

a. Form Tambah Habit

Halaman **Form Tambah Habit** digunakan ketika pengguna ingin menambah data habit baru. Pada halaman ini pengguna diminta untuk mengisi beberapa informasi seperti **nama habit**, **kategori**, **target harian**, serta **catatan tambahan** jika diperlukan.
    
Form ini juga dilengkapi dengan validasi input untuk memastikan data yang dimasukkan sudah sesuai, misalnya nama habit tidak boleh kosong, kategori harus dipilih terlebih dahulu, target harian tidak boleh kosong, serta catatan berupa opsional jadi pengguna bisa mengosongkan nya. Selain itu terdapat tombol **Tambah Habit** untuk menyimpan data habit ke database, serta tombol **Reset Form** untuk mengosongkan kembali seluruh input pada form.
    
Seperti halaman lainnya, tampilan halaman ini juga mendukung **Light Mode** dan **Dark Mode** sehingga tampilan aplikasi tetap nyaman digunakan sesuai tema yang dipilih oleh pengguna.

| Light Mode | Dark Mode |
|:----------|:-----|
| <img width="1919" height="1034" alt="Image" src="https://github.com/user-attachments/assets/947713ba-8546-4480-b1db-0931afbe972b" /> | <img width="1918" height="1028" alt="Image" src="https://github.com/user-attachments/assets/6fa93eac-7526-4a63-81ce-853bc9600859" /> |

b. Form Edit Habit

Halaman **Form Edit Habit** digunakan ketika pengguna ingin memperbarui data habit yang sudah dibuat sebelumnya. Pada halaman ini, informasi habit yang dipilih akan otomatis ditampilkan di dalam form sehingga pengguna dapat dengan mudah mengubah data seperti **nama habit**, **kategori**, **target harian**, maupun **catatan tambahan**.

Setelah melakukan perubahan, pengguna dapat menekan tombol **Update Habit** untuk menyimpan perubahan tersebut ke dalam database. Jika pengguna tidak ingin melanjutkan proses pengeditan, tersedia juga tombol **Batal** untuk kembali ke halaman sebelumnya tanpa menyimpan perubahan.

Tampilan halaman ini juga mendukung **Light Mode** dan **Dark Mode**, sehingga tampilan aplikasi tetap nyaman digunakan sesuai tema yang dipilih oleh pengguna.

| Light Mode | Dark Mode |
|:----------|:-----|
| <img width="1919" height="1033" alt="Image" src="https://github.com/user-attachments/assets/3f160db2-437b-448c-a1c3-b11b42a172ee" /> | <img width="1919" height="1033" alt="Image" src="https://github.com/user-attachments/assets/fa23fc1e-e0f0-475a-b340-da85d11a5631" /> |

---

# 🔄 Alur Aplikasi

Berikut adalah alur penggunaan aplikasi **HabitBloom**:

### 1️⃣ Welcome Page

Pada saat aplikasi HabitBloom pertama kali dibuka, pengguna akan melihat halaman Welcome Page. Halaman ini berfungsi sebagai tampilan pembuka yang menampilkan nama aplikasi, tagline, serta beberapa tombol yang dapat digunakan untuk masuk ke dalam aplikasi.

Di halaman ini pengguna diberikan dua pilihan, yaitu login jika sudah memiliki akun, atau register jika belum memiliki akun. Tampilan halaman ini juga dibuat menarik dengan ilustrasi dan warna yang lembut agar memberikan kesan nyaman saat pertama kali pengguna membuka aplikasi.

><img width="1919" height="1033" alt="Image" src="https://github.com/user-attachments/assets/4ade33f8-04f6-4af1-8d02-3b094ed0a830" />

Pada halaman Welcome Page terdapat dua aksi utama yang dapat dilakukan oleh pengguna:

a. Login

Jika pengguna menekan tombol Login, maka pengguna akan diarahkan ke halaman login. Pada halaman ini pengguna diminta untuk memasukkan email dan password yang sudah didaftarkan sebelumnya. Jika data yang dimasukkan benar, maka pengguna akan berhasil masuk ke dalam aplikasi dan diarahkan ke halaman utama (Home Page).

><img width="1919" height="1031" alt="Image" src="https://github.com/user-attachments/assets/15b7937b-d86f-442f-947f-dd69e2f21270" />

b. Register

Jika pengguna belum memiliki akun, pengguna dapat menekan link Register yang tersedia pada halaman Welcome Page. Setelah itu pengguna akan diarahkan ke halaman pendaftaran akun. Pada halaman ini pengguna diminta untuk mengisi beberapa data seperti email, password, dan konfirmasi password untuk membuat akun baru. Setelah proses pendaftaran berhasil, pengguna dapat menggunakan akun tersebut untuk melakukan login ke dalam aplikasi.

><img width="1914" height="1030" alt="Image" src="https://github.com/user-attachments/assets/0837f616-58e4-439e-aaa2-565895e85840" />

Pada halaman ini pengguna juga dapat mengatur tampilan aplikasi sesuai dengan preferensi mereka. Pengguna dapat mengganti tampilan menjadi Dark Mode atau Light Mode dengan menekan ikon yang berada di pojok kanan atas layar. Jika ikon tersebut ditekan, maka tampilan aplikasi akan berubah. Light Mode menampilkan tampilan dengan latar belakang yang terang, sedangkan Dark Mode menggunakan latar belakang yang lebih gelap. Fitur ini disediakan agar pengguna dapat menggunakan aplikasi dengan lebih nyaman, terutama saat digunakan dalam kondisi pencahayaan yang berbeda, misalnya pada malam hari atau di tempat yang minim cahaya. Dengan adanya fitur ini, pengguna dapat menyesuaikan tampilan aplikasi sesuai dengan kenyamanan masing-masing.

><img width="1914" height="1030" alt="Image" src="https://github.com/user-attachments/assets/d3ad5335-6c72-4b87-b3f6-3d7b25369051" />

---

### 2️⃣ Login Page

Pada halaman Login Page, pengguna diminta untuk memasukkan email dan password yang telah didaftarkan sebelumnya. Kedua data tersebut digunakan sebagai proses autentikasi agar pengguna dapat masuk ke dalam aplikasi.

><img width="1919" height="1031" alt="Image" src="https://github.com/user-attachments/assets/15b7937b-d86f-442f-947f-dd69e2f21270" />

Sebagai contoh disini saya mengisi field email dengan **lisa@gmail.com** dan mengisi field password dengan 8 karakter yang telah didaftarkan sebelumnya di halaman registrasi,

><img width="1919" height="1033" alt="Image" src="https://github.com/user-attachments/assets/de93dae8-d9a7-4fc5-8ef4-0c25b8049339" />

Jika email dan password yang dimasukkan sesuai dengan data yang tersimpan di sistem, maka pengguna akan berhasil login dan akan muncul popup notifikasi yang menampilkan pesan bahwa proses login berhasil dilakukan. Setelah proses login berhasil, pengguna akan diarahkan ke halaman utama aplikasi.

><img width="1919" height="1030" alt="Image" src="https://github.com/user-attachments/assets/5f31265e-55bf-4b9c-8d41-21e322855542" />

Apabila pengguna belum memiliki akun, pengguna dapat memilih menu Register untuk membuat akun baru terlebih dahulu sebelum melakukan login.

##### Validasi Input Login Page

Pada halaman login juga diterapkan beberapa validasi untuk memastikan data yang dimasukkan oleh pengguna sudah sesuai.

1. Login tanpa mengisi email dan password
  
   Jika pengguna langsung menekan tombol Login tanpa mengisi email dan password, maka sistem akan menampilkan pesan peringatan bahwa email dan password wajib diisi.

   ><img width="1918" height="1029" alt="Image" src="https://github.com/user-attachments/assets/45b02eab-8f55-4f8f-b9d3-83c3568e1a46" />

2. Login dengan format email atau password yang tidak sesuai
  
   Jika pengguna memasukkan email dengan format yang tidak sesuai atau password yang tidak memenuhi ketentuan, maka sistem akan menampilkan pesan kesalahan pada form input. Hal ini bertujuan untuk memastikan bahwa data yang dimasukkan oleh pengguna sudah sesuai dengan format yang ditentukan oleh sistem.

   ><img width="1919" height="1035" alt="Image" src="https://github.com/user-attachments/assets/2a2e21f6-c112-48ba-a02c-41ea022e4e86" />

3. Login dengan akun yang tidak terdaftar
  
   Jika pengguna memasukkan email dan password yang tidak terdaftar di dalam sistem, maka proses login tidak akan berhasil. Sistem akan menampilkan notifikasi kesalahan yang memberitahukan bahwa email atau password yang dimasukkan tidak valid sehingga pengguna perlu memeriksa kembali data yang dimasukkan.

   ><img width="1919" height="1032" alt="Image" src="https://github.com/user-attachments/assets/58ab6ed0-940c-40cc-b117-61665670d173" />

---

### 3️⃣ Register Page

Pada halaman Register Page, pengguna dapat membuat akun baru agar bisa menggunakan aplikasi HabitBloom. Untuk membuat akun, pengguna perlu mengisi beberapa data yaitu email, password, dan konfirmasi password. Data akun yang dimasukkan akan disimpan menggunakan layanan Supabase Authentication, sehingga akun dapat digunakan untuk login ke dalam aplikasi.

Pada gambar ini ditampilkan halaman Register yang berisi form pendaftaran akun. Pengguna diminta untuk mengisi email, password, dan konfirmasi password. Setelah semua data diisi dengan benar, pengguna dapat menekan tombol Register untuk membuat akun baru.

><img width="1914" height="1030" alt="Image" src="https://github.com/user-attachments/assets/0837f616-58e4-439e-aaa2-565895e85840" />

Pada gambar ini ditunjukkan contoh ketika pengguna sudah mengisi data pada form register. Email, password, dan konfirmasi password telah diisi sesuai dengan format yang diperlukan. Jika semua data sudah benar, pengguna dapat menekan tombol Register untuk melanjutkan proses pendaftaran akun.

><img width="1919" height="1033" alt="Image" src="https://github.com/user-attachments/assets/6d462825-430f-40a4-a4b3-a4e5cfbd6ea7" />

Setelah proses pendaftaran berhasil, sistem akan menampilkan popup notifikasi yang menunjukkan bahwa registrasi telah berhasil dilakukan. Pada popup tersebut terdapat pesan bahwa akun telah berhasil dibuat dan pengguna dapat melanjutkan dengan melakukan login menggunakan akun yang telah didaftarkan.

><img width="1919" height="1033" alt="Image" src="https://github.com/user-attachments/assets/46d9009e-6b11-42fa-a5e0-ce226832ef42" />

##### Validasi Input Register Page

Pada halaman register juga diterapkan beberapa validasi untuk memastikan data yang dimasukkan oleh pengguna sudah sesuai dengan ketentuan yang berlaku.

1. Register tanpa mengisi data
  
   Pada gambar ini ditunjukkan kondisi ketika pengguna langsung menekan tombol Register tanpa mengisi email, password, maupun konfirmasi password. Sistem akan menampilkan pesan peringatan pada setiap field yang kosong untuk memberi tahu bahwa data tersebut wajib diisi sebelum proses pendaftaran dapat dilakukan.

   ><img width="1919" height="1032" alt="Image" src="https://github.com/user-attachments/assets/7143e55a-4850-47c1-adf5-c561baec08ae" />

2. Format email atau password tidak sesuai
  
   Pada gambar ini pengguna memasukkan email dengan format yang tidak sesuai serta password yang tidak memenuhi ketentuan. Selain itu, konfirmasi password juga tidak sama dengan password yang dimasukkan. Sistem akan menampilkan pesan kesalahan untuk memberitahu pengguna bahwa data yang dimasukkan belum sesuai sehingga perlu diperbaiki terlebih dahulu.

   ><img width="1917" height="1033" alt="Image" src="https://github.com/user-attachments/assets/727091e4-dc82-49bd-865f-216105bf08b0" />

3. Email sudah terdaftar di sistem
  
   Pada gambar ini pengguna mencoba melakukan pendaftaran menggunakan email yang sudah pernah digunakan sebelumnya. Sistem akan menolak proses registrasi dan menampilkan notifikasi bahwa email tersebut sudah digunakan. Pengguna diminta untuk menggunakan email lain agar dapat membuat akun baru.

   ><img width="1918" height="1033" alt="Image" src="https://github.com/user-attachments/assets/45a1cd2d-4f14-4ba3-95f9-ef19027f70a6" />

---

### 4️⃣ Home Page

Setelah login berhasil, pengguna akan diarahkan ke **halaman utama (Home Page)**.

><img width="1919" height="1032" alt="Image" src="https://github.com/user-attachments/assets/f51e7892-2a1d-4244-b935-db5c8cc47d50" />

Pada halaman ini pengguna dapat melihat:

a. filter kategori

><img width="1919" height="1032" alt="Image" src="https://github.com/user-attachments/assets/f34220b1-55a0-4816-98bd-f0d234b17a8b" />

- ada data kategori itu

  ><img width="1917" height="1036" alt="Image" src="https://github.com/user-attachments/assets/fbfc742b-45f5-4e3a-b898-0155bfe2085c" />
  
- ga ada kategori tersebut

  ><img width="1916" height="1033" alt="Image" src="https://github.com/user-attachments/assets/a054f11b-631c-47fd-9d19-c226bc9bdc4c" />

b. Ganti mode dark/light

><img width="858" height="462" alt="Image" src="https://github.com/user-attachments/assets/3effe7ee-ee7c-40ac-9a08-62c679c24041" />

c. profile dan logout. 

><img width="1919" height="1031" alt="Image" src="https://github.com/user-attachments/assets/3a3cf49d-6982-455b-b554-3719c051d511" />

d. gretting sesuai situasi pagi, siang, sore. serta nama yang gunain akun

><img width="1917" height="119" alt="Image" src="https://github.com/user-attachments/assets/fc8c22f5-a8c0-4e05-bcbb-99fe43a5cfaa" />

e. quotes random setiap login

><img width="1892" height="72" alt="Image" src="https://github.com/user-attachments/assets/ae9a0376-8c08-4c1c-860e-49fdc4380dc8" />

f. statistik completed 

><img width="1919" height="157" alt="Image" src="https://github.com/user-attachments/assets/bab300d1-405b-439e-b61c-22dd533f657c" />

g. progres bar

><img width="1916" height="109" alt="Image" src="https://github.com/user-attachments/assets/b1d3c0f4-b107-44bb-9ed0-2e8331e4eead" />

h. search bar

><img width="1917" height="69" alt="Image" src="https://github.com/user-attachments/assets/5ed41837-9ae4-489d-bcb5-b6e8277f4cdd" />

- ada data

  ><img width="1919" height="1029" alt="Image" src="https://github.com/user-attachments/assets/7822530d-7bf4-4ae4-91bc-046e9612749f" />

- ga ada data

  ><img width="1919" height="1033" alt="Image" src="https://github.com/user-attachments/assets/bf7dc3b2-79a4-45f8-9cdc-682bd42517df" />

i. daftar habit yang belum diselesakan dan sudah diselesaikan

><img width="1919" height="627" alt="Image" src="https://github.com/user-attachments/assets/88bc8234-2882-4967-8ad3-413828ac8a42" />

j. checkbox, edit, dan hapus habit

><img width="1915" height="150" alt="Image" src="https://github.com/user-attachments/assets/158b6607-15f2-4002-b08a-40dc5e730913" />

k. tambah habit klik ikon (+)

><img width="1919" height="734" alt="Image" src="https://github.com/user-attachments/assets/08888006-7275-432d-a342-36c824b8aab6" />

l. Tampilan home page ketika habit belum ada di list

><img width="1919" height="1029" alt="Image" src="https://github.com/user-attachments/assets/fb93e17f-96f4-41f7-97da-5e33a785133b" />

---

### 5️⃣ Tambah Habit

Pengguna dapat menambahkan habit baru dengan menekan tombol **Floating Action Button (+)**. Pada halaman form, pengguna diminta mengisi Nama Habit, Kategori, Target Harian, dan Catatan (opsional). Setelah data disimpan, habit akan langsung muncul pada halaman utama. Pada halaman ini juga ada tombol reset form 

><img width="1919" height="1034" alt="Image" src="https://github.com/user-attachments/assets/947713ba-8546-4480-b1db-0931afbe972b" />

sebagai contoh saya

><img width="1916" height="1036" alt="Image" src="https://github.com/user-attachments/assets/54a3320d-df5a-4c33-817d-1602ead2e4f5" />

muncul pop up

><img width="1919" height="1029" alt="Image" src="https://github.com/user-attachments/assets/0defa5a0-1ee0-4199-a3cd-b904a8abb168" />

data muncul di list habit

><img width="1917" height="1033" alt="Image" src="https://github.com/user-attachments/assets/46c08cd7-71e0-4f8c-b96b-c8a90e7b941a" />

##### Validasi Input Tambah Habit

1. klik tombol tambah data langsung

   ><img width="1917" height="1033" alt="Image" src="https://github.com/user-attachments/assets/ca8f5bef-48a7-4c88-a858-5d7c78841851" />

2. nama habit dan target harian kurang dari 2 kata, dan catatan lebih dari 200 karakter

   ><img width="1918" height="1030" alt="Image" src="https://github.com/user-attachments/assets/816fb19f-38da-4d84-b72b-6ec43246bf84" />

3. reset form muncul notif 2 pilihan

   ><img width="1918" height="1026" alt="Image" src="https://github.com/user-attachments/assets/828c36c7-a9e0-4852-8ac1-68b62ba429d7" />

   - klik no, form tetap
   
     ><img width="1919" height="1037" alt="Image" src="https://github.com/user-attachments/assets/25263b18-be00-4e5a-bc47-fe1bab33cbe1" />

   - klik yes, form tereset dan muncul notif

     ><img width="1915" height="1034" alt="Image" src="https://github.com/user-attachments/assets/b12b0055-cd17-4fe8-9df5-e0d2506f44e9" />

4. Jika klik back pada appbar disaat data belum ke tambah

   ><img width="1918" height="1030" alt="Image" src="https://github.com/user-attachments/assets/d657fee5-29d3-468b-b1cf-d8c4f2645bc6" />

   - lanjut edit, tetap di form

     ><img width="1919" height="1031" alt="Image" src="https://github.com/user-attachments/assets/912024ba-f5d5-40ee-b990-e3d88900bb29" />

   - tetap keluar, kembali ke home page
   
     ><img width="1919" height="1033" alt="Image" src="https://github.com/user-attachments/assets/703a1ca7-1844-4221-9f1d-8e226ead0ca9" />

---

### 6️⃣ Menandai Habit Selesai

Setiap habit memiliki tombol **check**. Ketika tombol tersebut ditekan Habit akan ditandai sebagai selesai, Tampilan habit akan berubah, dan Progress habit akan diperbarui.

untuk menandai habit yang sudah selesai pengguna tinggal klik tombol **check** berbentuk bulat yang ada disetiap habit

><img width="1917" height="142" alt="Image" src="https://github.com/user-attachments/assets/1c0f3e82-c609-42f0-b7d1-0d12f4f377bc" />

- jika sudah menandai habit maka langsung masuk ke list completed today dan muncul snackbar, seperti gambar dibawah

  ><img width="1918" height="427" alt="Image" src="https://github.com/user-attachments/assets/8cf4f06a-c7c7-4609-8fa4-d48194ca3357" />
  
  habit yang telah diselesaikan akan merubah progres bar dan statistik completed yang awalnya begini

  ><img width="1912" height="1028" alt="Image" src="https://github.com/user-attachments/assets/4311c96e-5ff1-4b56-94c3-cf6f8586b216" />
  
  jadi begini

  ><img width="1918" height="1030" alt="Image" src="https://github.com/user-attachments/assets/b65f866a-412c-4e97-82d5-2809173fab68" />

- jika pengguna ingin kembali memakai habit nya, tinggal uncheck checkbox nya maka akan hilang dari completed today dan kembali ke today habit

  ><img width="1916" height="1030" alt="Image" src="https://github.com/user-attachments/assets/f508236e-a747-4cf7-b345-3442422481cc" />


---

### 7️⃣ Edit Habit

Pengguna dapat mengedit habit dengan menekan ikon **edit** yang berbentuk ikon pensil yang ada di setiap habit. Data habit akan muncul kembali pada halaman form sehingga pengguna dapat memperbarui informasi yang diperlukan.

><img width="1919" height="1033" alt="Image" src="https://github.com/user-attachments/assets/3f160db2-437b-448c-a1c3-b11b42a172ee" />

sebagai contoh saya mau mengubah habit yang awalnya begini 

><img width="1919" height="1037" alt="Image" src="https://github.com/user-attachments/assets/32679fa9-dbc9-43a1-a768-3544a8b25971" />

jadi begini

><img width="1919" height="1035" alt="Image" src="https://github.com/user-attachments/assets/efb34430-6801-4619-b302-87c1183b5f6c" />

kalau berhasil muncul pop up

><img width="1913" height="1030" alt="Image" src="https://github.com/user-attachments/assets/85fb41e6-f671-4d41-a66d-3b737075691e" />

data di home page berubah sesuai data yang kita edit

><img width="1915" height="1032" alt="Image" src="https://github.com/user-attachments/assets/4b4a3146-6b15-431d-a6c5-974eae04b54a" />

##### Validasi Input Edit Habit

1.  klik tombol edit habit tanpa mengubah data
  
   ><img width="1912" height="1028" alt="Image" src="https://github.com/user-attachments/assets/271cb27c-f501-429b-811d-47f27b3fd9bb" />

2. jika melakukan perubahan tetapi belum klik tombol edit habit dan malah klik tombol batal maka akan muncul pop up seperti gambar dibawah. jika klik lanjut edit maka akan tetap di form edit habit, jika klik tetap keluar maka akan kembali ke home page

   ><img width="1919" height="1027" alt="Image" src="https://github.com/user-attachments/assets/ef9cd80a-16c4-4922-9cca-31a3640f7371" />

3.  untuk tombol back di app bar juga sama saja fungsinya kayak tombol batal di form edit habit

   ><img width="1919" height="1033" alt="Image" src="https://github.com/user-attachments/assets/e051fd43-7a6a-45b2-9dd9-d6dd070d6668" />

4.  jika klik tombol batal dan back di app bar  tanpa edit data, maka bisa langsung keluar dari halaman edit dan kembali ke homepage

5.  untuk habit yang completed maka tombol edit yang berbentuk pensil tidak bisa di klik

   ><img width="1919" height="193" alt="Image" src="https://github.com/user-attachments/assets/aa877430-2735-43e6-8484-e2f072079ba5" />

---

### 8️⃣ Hapus Habit

Habit yang tidak diperlukan dapat dihapus dengan menekan ikon **delete**. Aplikasi akan menampilkan **dialog konfirmasi** sebelum habit benar-benar dihapus dari database.

<img width="1600" height="860" alt="Image" src="https://github.com/user-attachments/assets/c71e0ef8-6ec2-48bd-9039-db301ff48889" />

sebagai contoh disini saya ingin menghapus "mengerjakan tugas kuliah PAB", maka akan muncul pop up 2 pilihan

><img width="1919" height="1030" alt="Image" src="https://github.com/user-attachments/assets/7223bd08-301d-4bbd-ba81-fcf8ad106cf5" />

a. jika batal, maka data masih ada dilist

><img width="1918" height="1027" alt="Image" src="https://github.com/user-attachments/assets/b0e76449-60f3-4f94-9bbe-f948627f5cc5" />

b.  jika ya,hapus. maka data akan hilang dari list, dan muncul pop up 

><img width="1919" height="1032" alt="Image" src="https://github.com/user-attachments/assets/f895d4be-ed10-46dd-9334-9cf35b8477b1" />


---

### 9️⃣ Logout

Pengguna dapat keluar dari aplikasi dengan menekan tombol **Logout** pada menu profil. Setelah logout, pengguna akan kembali ke **halaman Welcome**.

jika ingin logout pengguna tinggal klik ikon profil yang ada di app bar, disana ada tombol logout yang pengguna bisa klik

<img width="1919" height="1030" alt="Image" src="https://github.com/user-attachments/assets/ca413036-5c8d-41cb-82da-298d1df999d0" />

akan muncul pop up 2 pilihan

a. jika batal maka pengguna tetap ada di homepage aplikasi

b. jika ya,logout maka akan muncul pop up dan diarahkan ke halaman welcome

><img width="1919" height="1030" alt="Image" src="https://github.com/user-attachments/assets/727323d6-573f-4644-acc5-cfd1d0200570" />
