# Readme Tugas 7

### Jelaskan apa yang dimaksud dengan stateless widget dan stateful widget dan jelaskan perbedaan dari keduanya.
Stateless widget adalah widget yang *state*nya tidak dapat berubah saat aplikasi sedang berjalan (statis). Dengan kata lain Stateless widget adalah widget yang *Immutable* / method build hanya dapat dipanggil sekali saat aplikasi berjalan. Stateful widget adalah widget yang *state*nya dapat berubah setelah build dilakukan (*Mutable*). State pada Stateful Widget dapat berubah dan diubah beberapa kali. Perbdaan kedua utama dari keduanya adalah Stateless Widget hanya bisa dibuild sekali sedangkan Stateful Widget dapat di build berkali-kali sepanjang aplikasi berjalan.

### Sebutkan widget apa saja yang kamu pakai di proyek kali ini dan jelaskan fungsinya.
-  `Scaffold`, untuk mengimplementasikan struktur layout dasar Material Design
-  `AppBar`, untuk membuat appbar 
-  `Center`, untuk membuat child widgetnya menjadi di tengah
-  `Column`, untuk menata children widgets nya dengan arah vertikal
-  `Row`, untuk menata children widgets nya dengan arah horizontal
-  `Padding`, untuk menambahkan padding pada child nya
-  `Visibility`, untuk mengontrol child widgetnya dapat terlihat atau tidak
-  `FloatingActionButton`, untuk membuat button melayang
-  `Icon`, untuk membuat icon

### Apa fungsi dari `setState()?` Jelaskan variabel apa saja yang dapat terdampak dengan fungsi tersebut.
`setState()` adalah method yang digunakan untuk memanggil build method. Memanggil method `setState()` menandakan bahwa pada state ini ada sesuatu yang berubah sehingga widget-widget akan dibuat ulang.

### Jelaskan perbedaan antara const dengan final.
`const` dan `final` merupakan keyword pada bahasa Dart yang digunakan untuk membuat variabel statis. `const` digunakan saat ingin membuat variabel yang konstan sejak *compile time*,  sedangkan `final` dapat digunakan saat ingin membuat variabel yang nilainya tidak dapat diubah dan nilai dari variabelnya bisa didapatkan saat *running time*.

### Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas.
1. Membuat proyek flutter baru dengan memnjalankan `flutter create counter_7`.
2. Membuat Class bernama Counter yang merupakan stateful widgets.
3. Membuat method incerement dan decrement untuk variabel counter.
5. Membuat tampilan sesuai dengan contoh soal.
6. Handle untuk angka ganjil dan genap dengan conditionals.
7. Melakukan handling untuk button decrement.

# Readme Tugas 8

### Jelaskan perbedaan `Navigator.push` dan `Navigator.pushReplacement`
Method `push()` pada widget navigator akan menambahkan route(page/screen) baru ke dalam stack route yang diatur oleh Navigator. Method `pushReplacment()` akan mengganti route lama (route yang berada pada top of the stack) dengan route baru.

### Sebutkan widget apa saja yang kamu pakai di proyek kali ini dan jelaskan fungsinya.
-  `Form`, sebagai container untuk mengelompokkan widget form field lainnya
-  `Expanded`, untuk membuat child widgetnya mengisi ruang pada mainaxis
-  `TextFormField`, untuk membuat Form Field yang berisikan TextField
-  `ListView.builder`, Membuat array widget linier yang *scrollable*. widget yang dibuat dapat sesuai permintaan.
-  `Card`, Widget untuk menampilkan kumpulan data pada suatu rounded corner dan elevasi
-  `SizedBox`, Membuat kotak dengan ukuran tetap.
-  `SingleChildScrollView`, untuk membuat kotak dimana widgetnya menjadi *scrollable*

### Sebutkan jenis-jenis event yang ada pada Flutter (contoh: onPressed).
- onPressed
- onTap
- onClick
- onChanged
- onHover
- onSaved
- onFocusChange
- onLongPress

### Jelaskan bagaimana cara kerja Navigator dalam "mengganti" halaman dari aplikasi Flutter.
Navigator bekerja berdasarkan prinsip Stack. Halaman yang sedang ditampilkan akan berada di top of stack. Sesuai dengan tipe data Stack, Navigator dapat melakukan operasi seperti `push` dan `pop`. Operasi push akan menambahkan route baru kedalam stack sehingga halaman baru akan ditampilkan. Operasi pop akan menghilangkan route yang berada pada top of stack sehingga halaman yang sedang ditampilkan berubah menjadi halaman sebelumnya.

### Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas.
1. Membuat drawer serta routing pada widget drawer
2. Membuat model untuk budget
3. Membuat halaman Tambah Budget
4. Membuah halaman yang menampilkan Data Budget
5. Me-*refactor* widget Drawer ke file terpisah 


# Readme Tugas 9

### Apakah bisa kita melakukan pengambilan data JSON tanpa membuat model terlebih dahulu? Jika iya, apakah hal tersebut lebih baik daripada membuat model sebelum melakukan pengambilan data JSON?
Bisaa. Kita dapat menyimpan data JSON pada sebuah `Map`. Menurut saya jika tidak membuat model sebelum pengambilan data JSON kita akan sulit untuk mengatur data yang sudah diambil terutama data JSON yang kit ambil besar.

### Sebutkan widget apa saja yang kamu pakai di proyek kali ini dan jelaskan fungsinya.
-  `Expanded`, untuk membuat child widgetnya mengisi ruang pada mainaxis
-  `ListView.builder`, Membuat array widget linier yang *scrollable*. widget yang dibuat dapat sesuai permintaan.
- `ListTile`, Membuat satu baris dengan tinggi tetap yang biasanya berisi beberapa teks serta ikon awal atau akhir.
- `Align`, Untuk mengatur posisi childnya

### Jelaskan mekanisme pengambilan data dari json hingga dapat ditampilkan pada Flutter.
Pada tugas ini pengambilan data dilakukan dengan cara membuat function untuk mengirimkan HTTP Request (GET), kemuduai response akan dimanipulasi dan dimasukkan kedalam sebuah Object dan disimpan pada List of Object. Fungsi akan mengembalikan List tersebut. Untuk menampilkan data, kita dapat melakukan iterasi pada hasil list dari fungsi.
### Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas.
1. Membuat file `mywatchlist.dart`
2. Menambahkan Routes mywatchlist ke drawer
3. Membuat fungsi `fetchWatchList()` untuk mengambil data JSON
4. Menampilkan data hasil dari fungsi `fetchWatchList()` di `mywatchlist.dart`
5. Me-*refactor* fungsi `fetchWatchList()`
6. Membuat halaman detail dari watchlist
7. Menambahkan checkbox pada setiap watchlist dan menambahkan outline sesuai dengan status dari watchlist