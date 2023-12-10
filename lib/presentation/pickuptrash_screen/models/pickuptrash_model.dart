import '../../../core/app_export.dart';
import 'pickuptrash_item_model.dart';

/// This class defines the variables used in the [pickuptrash_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class PickuptrashModel {
  Rx<List<PickuptrashItemModel>> pickuptrashItemList = Rx([
    PickuptrashItemModel(
        bankSampahDahlia: ImageConstant.imgRectangle233.obs,
        bankSampahKobar: "Bank Sampah Dahlia".obs,
        menerimaSemuaJenis: "Menerima semua jenis sampah".obs,
        kotaBaru: "Jelutung".obs,
        distance: "2.5km".obs),
    PickuptrashItemModel(
        bankSampahDahlia: ImageConstant.imgRectangle233114x108.obs,
        bankSampahKobar: "Bank Sampah Aurduri".obs,
        menerimaSemuaJenis: "Menerima semua jenis sampah".obs,
        kotaBaru: "Aurduri".obs,
        distance: "15km".obs),
    PickuptrashItemModel(
        bankSampahDahlia: ImageConstant.imgRectangle2331.obs,
        bankSampahKobar: "TPS 3R Sungai Duren".obs,
        menerimaSemuaJenis: "Menerima semua jenis sampah".obs,
        kotaBaru: "Sungai Duren".obs,
        distance: "16km".obs),
    PickuptrashItemModel(
        bankSampahDahlia: ImageConstant.imgRectangle2332.obs,
        bankSampahKobar: "Bank Sampah PYS".obs,
        menerimaSemuaJenis: "Menerima semua jenis sampah".obs,
        kotaBaru: "Telanaipura".obs,
        distance: "8km".obs),
    PickuptrashItemModel(
        bankSampahDahlia: ImageConstant.imgRectangle2333.obs,
        bankSampahKobar: "TPS 3R Mendalo ".obs,
        menerimaSemuaJenis: "Menerima semua jenis sampah".obs,
        kotaBaru: "Mendalo".obs,
        distance: "16km".obs),
    PickuptrashItemModel(
        bankSampahDahlia: ImageConstant.imgRectangle2334.obs,
        bankSampahKobar: "Bank Sampah Inyong".obs,
        menerimaSemuaJenis: "Menerima semua jenis sampah".obs,
        kotaBaru: "Mendalo".obs,
        distance: "16km".obs),
    PickuptrashItemModel(
        bankSampahDahlia: ImageConstant.imgRectangle2335.obs,
        bankSampahKobar: "Bank Sampah Kobar".obs,
        menerimaSemuaJenis: "Menerima semua jenis sampah".obs,
        kotaBaru: "Kota Baru".obs,
        distance: "1.5km".obs),
    PickuptrashItemModel(
        bankSampahDahlia: ImageConstant.imgRectangle2336.obs,
        menerimaSemuaJenis: "Menerima semua jenis sampah".obs),
    PickuptrashItemModel(
        bankSampahDahlia: ImageConstant.imgRectangle2331.obs,
        bankSampahKobar: "TPS 3R Sungai Duren".obs,
        menerimaSemuaJenis: "Menerima semua jenis sampah".obs,
        kotaBaru: "Sungai Duren".obs,
        distance: "16km".obs),
    PickuptrashItemModel(
        bankSampahDahlia: ImageConstant.imgRectangle2332.obs,
        bankSampahKobar: "Bank Sampah PYS".obs,
        menerimaSemuaJenis: "Menerima semua jenis sampah".obs,
        kotaBaru: "Telanaipura".obs,
        distance: "8km".obs),
    PickuptrashItemModel(
        bankSampahDahlia: ImageConstant.imgRectangle233114x108.obs,
        bankSampahKobar: "Bank Sampah Aurduri".obs,
        menerimaSemuaJenis: "Menerima semua jenis sampah".obs,
        kotaBaru: "Aurduri".obs,
        distance: "15km".obs)
  ]);
}
