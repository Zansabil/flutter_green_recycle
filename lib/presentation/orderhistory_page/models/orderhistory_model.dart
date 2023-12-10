import '../../../core/app_export.dart';
import 'orderhistory_item_model.dart';

/// This class defines the variables used in the [orderhistory_page],
/// and is typically used to hold data that is passed between different parts of the application.
class OrderhistoryModel {
  Rx<List<OrderhistoryItemModel>> orderhistoryItemList = Rx([
    OrderhistoryItemModel(
        noPesanan: "No. Pesanan: 143 ".obs,
        penjemputanSampah: "Penjemputan Sampah".obs,
        tanggalPemesanan: "Tanggal Pemesanan".obs,
        price: "20 Juni 2023 | 11:30 WIB".obs,
        berat: "Berat".obs,
        weight: "10kg".obs,
        jenisSampah: "Jenis Sampah".obs,
        kaleng: "Kaleng".obs,
        coinYangDiDapat: "Coin yang di dapat: Rp. 4.000,00".obs),
    OrderhistoryItemModel(
        noPesanan: "No. Pesanan: 163 ".obs,
        penjemputanSampah: "Penjemputan Sampah".obs,
        tanggalPemesanan: "Tanggal Pemesanan".obs,
        price: "13 Juni 2023 | 11:30 WIB".obs,
        berat: "Berat".obs,
        weight: "10kg".obs,
        jenisSampah: "Jenis Sampah".obs,
        kaleng: "Kaleng".obs,
        coinYangDiDapat: "Coin yang di dapat: Rp. 4.000,00".obs),
    OrderhistoryItemModel(
        noPesanan: "No. Pesanan: 183 ".obs,
        penjemputanSampah: "Penjemputan Sampah".obs,
        tanggalPemesanan: "Tanggal Pemesanan".obs,
        price: "10 Juni 2023 | 11:30 WIB".obs,
        berat: "Berat".obs,
        weight: "10kg".obs,
        jenisSampah: "Jenis Sampah".obs,
        kaleng: "Kaleng".obs,
        coinYangDiDapat: "Coin yang di dapat: Rp. 4.000,00".obs),
    OrderhistoryItemModel(
        noPesanan: "No. Pesanan: 183 ".obs,
        penjemputanSampah: "Penjemputan Sampah".obs,
        tanggalPemesanan: "Tanggal Pemesanan".obs,
        price: "10 Juni 2023 | 11:30 WIB".obs,
        berat: "Berat".obs,
        weight: "10kg".obs,
        jenisSampah: "Jenis Sampah".obs,
        kaleng: "Kaleng".obs,
        coinYangDiDapat: "Coin yang di dapat: Rp. 4.000,00".obs),
    OrderhistoryItemModel(
        noPesanan: "No. Pesanan: 183 ".obs,
        penjemputanSampah: "Penjemputan Sampah".obs,
        tanggalPemesanan: "Tanggal Pemesanan".obs,
        price: "10 Juni 2023 | 11:30 WIB".obs,
        berat: "Berat".obs,
        weight: "10kg".obs,
        jenisSampah: "Jenis Sampah".obs,
        kaleng: "Kaleng".obs,
        coinYangDiDapat: "Coin yang di dapat: Rp. 4.000,00".obs)
  ]);
}
