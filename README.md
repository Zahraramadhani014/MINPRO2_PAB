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

Halaman pertama yang muncul ketika aplikasi dibuka.

| Light Mode | Dark Mode |
|:----------|:-----|
| <img width="1919" height="1033" alt="Image" src="https://github.com/user-attachments/assets/4ade33f8-04f6-4af1-8d02-3b094ed0a830" /> | <img width="1919" height="1030" alt="Image" src="https://github.com/user-attachments/assets/b6b917dc-90d0-4151-ae62-34bcf67d8f55" /> |

### Login Page

Pengguna dapat login menggunakan email dan password.

| Light Mode | Dark Mode |
|:----------|:-----|
| <img width="1919" height="1031" alt="Image" src="https://github.com/user-attachments/assets/15b7937b-d86f-442f-947f-dd69e2f21270" /> | Zahraturramadhani |

### Register Page

Pengguna dapat membuat akun baru.

| Light Mode | Dark Mode |
|:----------|:-----|
| Nama | Zahraturramadhani |

### Home Page

Menampilkan daftar habit, progress, serta fitur pencarian dan filter.

| Light Mode | Dark Mode |
|:----------|:-----|
| Nama | Zahraturramadhani |

### Habit Form Page

Digunakan untuk menambahkan atau mengedit habit.

| Light Mode | Dark Mode |
|:----------|:-----|
| Nama | Zahraturramadhani |

| Light Mode | Dark Mode |
|:----------|:-----|
| Nama | Zahraturramadhani |

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
