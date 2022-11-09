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