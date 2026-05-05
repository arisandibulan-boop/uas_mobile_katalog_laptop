# UAS Pemrograman Mobile Lanjutan

## Identitas Pengembang

* **Nama:** Yehezkiel Arisandi Bulan
* **NIM:** 1125170084
* **Kelas:** KS 25
* **Program Studi:** Teknik Informatika
* **Konsentrasi:** Software Engineering

---

## Aplikasi E-commerce Katalog Laptop

Aplikasi ini dibuat untuk memenuhi tugas **UAS Pemrograman Mobile Lanjutan**. Sistem ini mengintegrasikan **Flutter** sebagai *frontend*, **Firebase** untuk layanan autentikasi keamanan, dan **Golang** sebagai *backend* API untuk manajemen data produk secara real-time.

### Tech Stack

* **Frontend:** Flutter (State Management: Provider)
* **Authentication:** Firebase (Google Sign-in & Email Verification)
* **Backend API:** Golang (Gin Framework)
* **Database:** MySQL (Local Database)
* **Notification:** Flutter Local Notifications

---

## Alur dan Tampilan UI Aplikasi

### 1. Autentikasi & Verifikasi Email

User diwajibkan melakukan registrasi dan verifikasi email. Link aktivasi akan dikirimkan ke email user untuk memastikan validitas akun sebelum dapat mengakses dashboard.

![Gambar 1](assets/images/gambar1.jpeg) ![Gambar 2](assets/images/gambar2.jpeg)
![Gambar 3](assets/images/gambar3.jpeg) ![Gambar 4](assets/images/gambar4.jpeg)
![Gambar 6](assets/images/gambar6.jpeg) ![Gambar 7](assets/images/gambar7.jpeg)

### 2. Dashboard & Katalog Produk

Halaman utama menampilkan daftar laptop yang diambil langsung dari database MySQL melalui API Backend. Dilengkapi dengan informasi detail produk yang informatif.

![Gambar 8](assets/images/gambar8.jpeg) ![Gambar 9](assets/images/gambar9.jpeg) ![Gambar 10](assets/images/gambar10.jpeg)

### 3. Manajemen Keranjang (Cart) & Notifikasi

Sistem keranjang memungkinkan user menambah produk. Setiap aksi belanja akan memicu **Local Notification** sebagai feedback instan kepada pengguna.

![Gambar 11](assets/images/gambar11.jpeg)

### 4. Checkout & Konfirmasi Pembayaran

Proses transaksi akhir dimana setelah pembayaran berhasil, sistem akan otomatis mengosongkan keranjang (Clear Cart) dan memberikan notifikasi sukses.

![Gambar 12](assets/images/gambar12.jpeg) ![Gambar 13](assets/images/gambar13.jpeg)
![Gambar 14](assets/images/gambar14.jpeg) ![Gambar 15](assets/images/gambar15.jpeg)

### 5. Manajemen Profil & Role Admin (CRUD)

Aplikasi mendukung **Role-Based Access Control (RBAC)**. Admin memiliki menu tambahan untuk mengelola stok produk (Tambah, Edit, Hapus) secara langsung ke database.

![Gambar 16](assets/images/gambar16.jpeg) ![Gambar 17](assets/images/gambar17.jpeg)
![Gambar 18](assets/images/gambar18.jpeg) ![Gambar 19](assets/images/gambar19.jpeg)
![Gambar 20](assets/images/gambar20.jpeg)

---

## Cara Menjalankan Project

1. **Backend:** Jalankan service MySQL dan API Golang kamu.
2. **Flutter Aset:** Pastikan folder `assets/images/` berisi semua file gambar di atas.
3. **Setup:**

```bash
flutter pub get
flutter run
