# Tutorial 2 - Introduction to Game Engine

## Latihan: Playtest

**1. Apa saja pesan log yang dicetak pada panel Output?**
Saat dijalankan, log mencetak "Platform initialized". Ketika pesawat mengenai area atas target, log mencetak "Reached objective!".

**2. Coba gerakkan landasan ke batas area bawah, lalu gerakkan kembali ke atas hingga hampir menyentuh batas atas. Apa saja pesan log yang dicetak pada panel Output?**
Log akan kembali mencetak "Reached objective!" saat pesawat menyentuh area target. Pesan ini terpicu secara otomatis setiap kali kondisi tabrakan terpenuhi.

**3. Buka scene MainLevel dengan tampilan workspace 2D. Apakah lokasi scene ObjectiveArea memiliki kaitan dengan pesan log yang dicetak pada panel Output pada percobaan sebelumnya?**
Ya, sangat berkaitan. Sinyal pemicu pesan log tersebut dipasang pada `ObjectiveArea` yang memang diposisikan di bagian atas area permainan.

---

## Latihan: Memanipulasi Node dan Scene

**1. Scene BlueShip dan StonePlatform sama-sama memiliki sebuah child node bertipe Sprite2D. Apa fungsi dari node bertipe Sprite2D?**
Node `Sprite2D` berfungsi murni untuk menampilkan visual atau gambar 2D dari objek tersebut di dalam layar permainan.

**2. Root node dari scene BlueShip dan StonePlatform menggunakan tipe yang berbeda. BlueShip menggunakan tipe RigidBody2D, sedangkan StonePlatform menggunakan tipe StaticBody2D. Apa perbedaan dari masing-masing tipe node?**
`RigidBody2D` dipengaruhi secara penuh oleh simulasi mesin fisika Godot seperti gravitasi dan momentum dorongan. Sebaliknya, `StaticBody2D` adalah objek fisik yang diam dan tidak terpengaruh gaya fisika luar, namun benda lain tetap bisa menabraknya.

**3. Ubah nilai atribut Mass pada tipe RigidBody2D secara bebas di scene BlueShip, lalu coba jalankan scene MainLevel. Apa yang terjadi?**
Mengubah massa memengaruhi seberapa berat reaksi `BlueShip` terhadap dorongan dan gaya gravitasi. Jika massa diperbesar, pesawat akan terasa lebih berat dan pantulannya menjadi lebih lambat.

**4. Ubah nilai atribut Disabled milik node CollisionShape2D pada scene StonePlatform, lalu coba jalankan scene MainLevel. Apa yang terjadi?**
`StonePlatform` kehilangan interaksi fisiknya secara keseluruhan. Hal ini membuat `BlueShip` jatuh menembus landasan karena tidak ada lagi komponen yang mendeteksi tabrakan.

**5. Pada scene MainLevel, coba manipulasi atribut Position, Rotation, dan Scale milik node BlueShip secara bebas. Apa yang terjadi pada visualisasi BlueShip di Viewport?**
Visualisasi `BlueShip` di Viewport akan langsung ikut bergeser posisinya, miring, dan berubah ukurannya. Perubahan pada atribut Transform ini secara instan mengubah wujud objek di dalam scene.

**6. Pada scene MainLevel, perhatikan nilai atribut Position node PlatformBlue, StonePlatform, dan StonePlatform2. Mengapa nilai Position node StonePlatform dan StonePlatform2 tidak sesuai dengan posisinya di dalam scene (menurut Inspector) namun visualisasinya berada di posisi yang tepat?**
Nilai posisi `StonePlatform` pada Inspector adalah posisi relatif (lokal) terhadap induknya yaitu `PlatformBlue`. Oleh karena itu, posisi aslinya di layar adalah gabungan dari koordinat induk ditambah koordinat lokal anaknya.