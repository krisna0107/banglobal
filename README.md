# HOW To Use
- Download/clone repo ini
- Masukan kedalam Reseources
- ensure banglobal

# Dokumentasi (Optional)

Jika ingin membuat pengecekan dengan playerConnecting sendiri gunakan API dibawah ini. (Contoh cek server.lua)

Untuk saat ini hanya tersedia Method GET saja untuk mengambil data yang sudah terkumpul.

Next Update akan saya buatkan tambah data.

## API

Berikut adalah List API yang digunakan :

Get Data Ban List (GET) :  https://api.vercityrp.id/api/ban-list

Parameter :

```
steam
license
discord
xbl
live
```

Contoh ingin menggunakan 3 pengecekan identifier (steam, license, discord) :

https://api.vercityrp.id/api/ban-list?steam=xxx&license=xxx&discord=xxx

*xxx adalah identifier
