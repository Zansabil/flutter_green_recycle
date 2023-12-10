import '../../../core/app_export.dart';

/// This class is used in the [orderhistory_item_widget] screen.
class OrderhistoryItemModel {
  OrderhistoryItemModel({
    this.noPesanan,
    this.penjemputanSampah,
    this.tanggalPemesanan,
    this.price,
    this.berat,
    this.weight,
    this.jenisSampah,
    this.kaleng,
    this.coinYangDiDapat,
    this.id,
  }) {
    noPesanan = noPesanan ?? Rx("No. Pesanan: 143 ");
    penjemputanSampah = penjemputanSampah ?? Rx("Penjemputan Sampah");
    tanggalPemesanan = tanggalPemesanan ?? Rx("Tanggal Pemesanan");
    price = price ?? Rx("20 Juni 2023 | 11:30 WIB");
    berat = berat ?? Rx("Berat");
    weight = weight ?? Rx("10kg");
    jenisSampah = jenisSampah ?? Rx("Jenis Sampah");
    kaleng = kaleng ?? Rx("Kaleng");
    coinYangDiDapat = coinYangDiDapat ?? Rx("Coin yang di dapat: Rp. 4.000,00");
    id = id ?? Rx("");
  }

  Rx<String>? noPesanan;

  Rx<String>? penjemputanSampah;

  Rx<String>? tanggalPemesanan;

  Rx<String>? price;

  Rx<String>? berat;

  Rx<String>? weight;

  Rx<String>? jenisSampah;

  Rx<String>? kaleng;

  Rx<String>? coinYangDiDapat;

  Rx<String>? id;
}
