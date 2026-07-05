# 📱 UAS Pemrograman Mobile Lanjutan

## Identitas Pengembang

- **Nama:** Yehezkiel Arisandi Bulan
- **NIM:** 1125170084
- **Kelas:** KS 25
- **Program Studi:** Teknik Informatasi
- **Konsentrasi:** Software Engineering

---

## 🛒 Aplikasi E-Commerce Katalog Laptop

Aplikasi ini dikembangkan sebagai tugas **UAS Pemrograman Mobile Lanjutan**. Sistem dibangun menggunakan **Flutter** sebagai frontend, **Firebase Authentication** untuk autentikasi pengguna, dan **Golang (Gin Framework)** sebagai backend API yang terhubung dengan database **MySQL**.

Aplikasi memungkinkan pengguna melakukan registrasi akun, melihat katalog laptop, mengelola keranjang belanja, melakukan checkout, serta menerima notifikasi lokal ketika produk berhasil ditambahkan ke keranjang.

---

## Teknologi yang Digunakan

| Teknologi | Keterangan |
| ---------- | ---------- |
| Flutter | Frontend Mobile |
| Provider | State Management |
| Firebase Authentication | Login, Register & Email Verification |
| Golang Gin | REST API Backend |
| MySQL | Database |
| Flutter Local Notification | Notifikasi Lokal |

---

## 📱 Fitur Aplikasi

## ✅ Login & Registrasi

- Login menggunakan Email
- Registrasi akun
- Verifikasi Email Firebase
- Validasi Login

| Login | Register | Verify Email |
| ----- | -------- | ------------ |
| ![login](assets/images/gambar1.jpeg) | ![register](assets/images/gambar2.jpeg) | ![verify-email](assets/images/gambar3.jpeg) |

| Proses Verifikasi | Berhasil Login | Dashboard |
| ----------------- | -------------- | --------- |
| ![proses-verifikasi](assets/images/gambar4.jpeg) | ![berhasil-login](assets/images/gambar6.jpeg) | ![dashboard](assets/images/gambar7.jpeg) |

---

## 💻 Dashboard & Katalog Produk

Pada halaman utama pengguna dapat melihat seluruh daftar laptop yang diambil secara realtime melalui REST API Golang.

| Katalog Produk | Detail Produk | Detail Produk |
| -------------- | ------------- | ------------- |
| ![katalog-produk](assets/images/gambar8.jpeg) | ![detail-produk-1](assets/images/gambar9.jpeg) | ![detail-produk-2](assets/images/gambar10.jpeg) |

---

## 🛒 Keranjang Belanja

Pengguna dapat menambahkan produk ke dalam keranjang.

Fitur yang tersedia:

- Tambah Produk
- Hapus Produk
- Hitung Total Harga
- Local Notification

![keranjang](assets/images/gambar11.jpeg)

---

## 💳 Checkout

Proses pembayaran dilakukan setelah pengguna memilih produk.

Tahapan:

- Checkout
- Konfirmasi Pembayaran
- Ringkasan Pembayaran
- Pembayaran Berhasil

| Checkout | Pembayaran |
| --------- | ---------- |
| ![checkout](assets/images/gambar12.jpeg) | ![pembayaran](assets/images/gambar13.jpeg) |

| Ringkasan | Selesai |
| ---------- | -------- |
| ![ringkasan](assets/images/gambar14.jpeg) | ![selesai](assets/images/gambar15.jpeg) |

---

## 👤 Admin Panel (CRUD Produk)

Admin memiliki hak akses untuk mengelola data laptop.

Fitur Admin:

- Tambah Produk
- Edit Produk
- Hapus Produk

| Profile | Menu Admin | Tambah Produk |
| ------- | ---------- | ------------- |
| ![profile](assets/images/gambar16.jpeg) | ![menu-admin](assets/images/gambar17.jpeg) | ![tambah-produk](assets/images/gambar18.jpeg) |

| Edit Produk | Hapus Produk |
| ------------ | ------------ |
| ![edit-produk](assets/images/gambar19.jpeg) | ![hapus-produk](assets/images/gambar20.jpeg) |

---

## 📂 Struktur Project

```text
lib/
│
├── models/
├── providers/
├── screens/
├── services/
├── widgets/
└── main.dart

backend/
│
├── controllers/
├── models/
├── routes/
├── database/
└── main.go
```

---

## 🛠 Cara Menjalankan Project

## Clone Project

```bash
git clone https://github.com/username/nama-project.git
```

Masuk ke Folder

```bash
cd nama-project
```

Install Dependency

```bash
flutter pub get
```

Jalankan Backend Golang

```bash
go run main.go
```

Jalankan Flutter

```bash
flutter run
```

---

## 📌 Requirement

- Flutter SDK 3.x
- Dart SDK
- Golang 1.22+
- MySQL
- Firebase Project
- Android Studio / VS Code

---

## 👨‍💻 Pengembang

### Yehezkiel Arisandi Bulan

NIM: **1125170084**

Teknik Informatika

Software Engineering

Universitas Global institute

---

## 📄 Lisensi

Project ini dibuat untuk memenuhi tugas **UAS Pemrograman Mobile Lanjutan**.
