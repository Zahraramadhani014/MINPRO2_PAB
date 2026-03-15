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

**HabitBloom** merupakan aplikasi mobile berbasis Flutter yang dirancang untuk membantu pengguna membangun kebiasaan positif serta memantau konsistensi aktivitas harian.

Aplikasi ini memungkinkan pengguna untuk mencatat berbagai kebiasaan yang ingin dilakukan setiap hari, seperti belajar, olahraga, membaca buku, atau aktivitas produktif lainnya. Setiap kebiasaan dapat ditambahkan, diedit, maupun dihapus secara fleksibel.

HabitBloom juga menyediakan fitur **progress tracking** yang menampilkan jumlah kebiasaan yang telah diselesaikan setiap hari sehingga pengguna dapat melihat perkembangan konsistensi mereka.

Data kebiasaan disimpan menggunakan **Supabase Database**, sehingga semua data dapat dikelola secara dinamis menggunakan operasi CRUD (Create, Read, Update, Delete).

Selain itu, aplikasi ini dilengkapi dengan **sistem autentikasi login dan register menggunakan Supabase Auth** serta mendukung **Light Mode dan Dark Mode** untuk meningkatkan kenyamanan pengguna.

---

# 🎯 Fitur Aplikasi

### 1️⃣ Login & Register

Pengguna dapat membuat akun baru dan login menggunakan email dan password melalui Supabase Authentication.

### 2️⃣ Tambah Habit (Create)

Pengguna dapat menambahkan kebiasaan baru dengan mengisi:
- Nama Habit
- Kategori
- Target Harian
- Catatan

### 3️⃣ Tampilkan Habit (Read)

Semua habit yang tersimpan akan ditampilkan dalam bentuk daftar pada halaman utama.

### 4️⃣ Edit Habit (Update)

Pengguna dapat mengubah data habit yang sudah ada jika terdapat kesalahan atau perubahan target.

### 5️⃣ Hapus Habit (Delete)

Habit yang sudah tidak diperlukan dapat dihapus dari daftar.

### 6️⃣ Checklist Habit

Setiap habit memiliki tombol check untuk menandai bahwa habit telah selesai dilakukan pada hari tersebut.

### 7️⃣ Progress Habit

Aplikasi menampilkan progress jumlah habit yang telah selesai dibandingkan dengan total habit.

### 8️⃣ Search Habit

Pengguna dapat mencari habit dengan mengetik nama habit pada kolom pencarian.

### 9️⃣ Filter Kategori
Habit dapat difilter berdasarkan kategori seperti:
- Akademik
- Kesehatan
- Fitness
- Produktivitas
- Mental Health
- Personal Development
- Morning Routine
- Spiritual

### 🔟 Dark Mode & Light Mode
Aplikasi mendukung tema terang dan gelap yang dapat diubah melalui tombol di aplikasi.

---

# 🧩 Widget yang Digunakan

Aplikasi **HabitBloom** dibangun menggunakan berbagai widget Flutter untuk membentuk tampilan antarmuka serta mengatur interaksi pengguna. Berikut adalah beberapa widget utama yang digunakan dalam pengembangan aplikasi ini.

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

Aplikasi ini dikembangkan menggunakan beberapa tools pendukung agar proses pengembangan lebih terstruktur, efisien, dan mudah dikelola.

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

  <img width="221" height="553" alt="image" src="https://github.com/user-attachments/assets/7cf42050-5184-437b-bae0-f0fcc6de3524" />
  

  Project ini menggunakan struktur standar dari Flutter, sehingga beberapa folder dan file sudah otomatis terbentuk sejak awal pembuatan project. Bagian yang paling utama terdapat pada folder lib, karena di dalam folder inilah seluruh kode aplikasi ditulis. File
  main.dart yang berada di dalam folder tersebut menjadi titik awal saat aplikasi dijalankan.
    
  Selain itu, terdapat folder seperti android, ios, web, windows, linux, dan macos yang berfungsi sebagai konfigurasi untuk masing-masing platform. Hal ini memungkinkan aplikasi dapat dijalankan di berbagai sistem operasi karena Flutter mendukung pengembangan multi
  platform dalam satu project yang sama.
    
  Folder build berisi hasil proses kompilasi aplikasi dan biasanya dibuat secara otomatis oleh sistem, sehingga tidak perlu diubah secara manual. Kemudian terdapat file pubspec.yaml yang berfungsi untuk mengatur dependency atau package yang digunakan dalam project
  termasuk konfigurasi dasar aplikasi. File pubspec.lock digunakan untuk mencatat versi dependency yang terpasang agar tetap konsisten saat project dijalankan di perangkat lain.
    
  Selain itu, terdapat file .gitignore yang berfungsi untuk menentukan file atau folder mana saja yang tidak perlu diunggah ke repository GitHub, seperti file hasil build. Terakhir, file README.md digunakan sebagai dokumentasi project yang berisi penjelasan mengenai
  aplikasi, fitur, serta struktur yang digunakan.

# 🗄 Struktur Database

Aplikasi **HabitBloom** menggunakan **Supabase Database** untuk menyimpan data habit pengguna. Tabel yang digunakan pada aplikasi **HabitBloom** adalah tabel `habits` yang menyimpan data kebiasaan pengguna. Berikut adalah struktur tabel yang digunakan:

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
Halaman pertama yang muncul ketika aplikasi dibuka.

### Login Page
Pengguna dapat login menggunakan email dan password.

### Register Page
Pengguna dapat membuat akun baru.

### Home Page
Menampilkan daftar habit, progress, serta fitur pencarian dan filter.

### Habit Form Page
Digunakan untuk menambahkan atau mengedit habit.

---

# 🔐 Nilai Tambah

Beberapa fitur tambahan yang diterapkan dalam aplikasi ini:

- Supabase Authentication (Login & Register)
- Dark Mode & Light Mode
- Progress Bar Habit
- Search Habit
- Filter Kategori
- Snackbar Notification
- Environment Variables (.env) untuk keamanan API Key

---

# 🔄 Alur Aplikasi

Berikut adalah alur penggunaan aplikasi **HabitBloom**:

### 1️⃣ Welcome Page

Saat aplikasi pertama kali dibuka, pengguna akan melihat **halaman Welcome** yang menampilkan nama aplikasi serta tombol untuk melanjutkan ke halaman login.

Halaman ini berfungsi sebagai tampilan pembuka sebelum pengguna masuk ke dalam aplikasi.

---

### 2️⃣ Login Page

Setelah menekan tombol login, pengguna akan diarahkan ke **halaman Login**.

Pada halaman ini pengguna harus memasukkan:

- Email
- Password

Jika data yang dimasukkan benar, maka pengguna akan berhasil masuk ke dalam aplikasi.

Apabila belum memiliki akun, pengguna dapat memilih menu **Register** untuk membuat akun baru.

---

### 3️⃣ Register Page

Pada halaman ini pengguna dapat membuat akun baru dengan mengisi:

- Email
- Password
- Konfirmasi Password

Data akun yang dibuat akan disimpan menggunakan **Supabase Authentication**.

Setelah berhasil register, pengguna dapat login menggunakan akun tersebut.

---

### 4️⃣ Home Page

Setelah login berhasil, pengguna akan diarahkan ke **halaman utama (Home Page)**.

Pada halaman ini pengguna dapat melihat:

- Daftar habit yang telah dibuat
- Progress habit yang telah selesai
- Fitur pencarian habit
- Filter kategori habit

Selain itu terdapat **progress bar** yang menunjukkan jumlah habit yang telah selesai dibandingkan total habit yang ada.

---

### 5️⃣ Tambah Habit

Pengguna dapat menambahkan habit baru dengan menekan tombol **Floating Action Button (+)**.

Pada halaman form, pengguna diminta mengisi:

- Nama Habit
- Kategori
- Target Harian
- Catatan (opsional)

Setelah data disimpan, habit akan langsung muncul pada halaman utama.

---

### 6️⃣ Menandai Habit Selesai

Setiap habit memiliki tombol **check**.

Ketika tombol tersebut ditekan:

- Habit akan ditandai sebagai selesai
- Tampilan habit akan berubah
- Progress habit akan diperbarui

---

### 7️⃣ Edit Habit

Pengguna dapat mengedit habit dengan menekan ikon **edit**.

Data habit akan muncul kembali pada halaman form sehingga pengguna dapat memperbarui informasi yang diperlukan.

---

### 8️⃣ Hapus Habit

Habit yang tidak diperlukan dapat dihapus dengan menekan ikon **delete**.

Aplikasi akan menampilkan **dialog konfirmasi** sebelum habit benar-benar dihapus dari database.

---

### 9️⃣ Logout

Pengguna dapat keluar dari aplikasi dengan menekan tombol **Logout** pada menu profil.

Setelah logout, pengguna akan kembali ke **halaman Welcome**.
