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

User diwajibkan melakukan registrasi dan verifikasi email. Link aktivasi akan dikirimkan ke email user untuk memastikan validitas akun.

![Login](assets/images/gambar1.jpeg) ![Register](assets/images/gambar2.jpeg) ![Verify](assets/images/gambar3.jpeg)
![Process](assets/images/gambar4.jpeg) ![Success](assets/images/gambar6.jpeg) ![Dashboard](assets/images/gambar7.jpeg)

### 2. Dashboard & Katalog Produk

Halaman utama menampilkan daftar laptop yang diambil langsung dari database MySQL melalui API Backend.

![Catalog 1](assets/images/gambar8.jpeg) ![Catalog 2](assets/images/gambar9.jpeg) ![Detail](assets/images/gambar10.jpeg)

### 3. Manajemen Keranjang (Cart) & Notifikasi

Sistem keranjang memungkinkan user menambah produk dengan feedback **Local Notification**.

![Cart](assets/images/gambar11.jpeg)

### 4. Checkout & Konfirmasi Pembayaran

Proses transaksi akhir yang otomatis mengosongkan keranjang setelah pembayaran berhasil.

![Checkout](assets/images/gambar12.jpeg) ![Payment](assets/images/gambar13.jpeg)
![Summary](assets/images/gambar14.jpeg) ![Finished](assets/images/gambar15.jpeg)

### 5. Manajemen Profil & Role Admin (CRUD)

Admin memiliki menu tambahan untuk mengelola stok produk (Tambah, Edit, Hapus).

![Profile](assets/images/gambar16.jpeg) ![Admin Menu](assets/images/gambar17.jpeg) ![Add Product](assets/images/gambar18.jpeg)
![Edit Product](assets/images/gambar19.jpeg) ![Delete Product](assets/images/gambar20.jpeg)

---

## Cara Menjalankan Project

1. **Backend:** Jalankan service MySQL dan API Golang kamu.
2. **Flutter Aset:** Pastikan folder `assets/images/` berisi semua file gambar di atas.
3. **Setup:**

```bash
flutter pub get
flutter run
