import '../../../core/app_export.dart';

/// This class is used in the [pickuptrash_item_widget] screen.
class PickuptrashItemModel {
  PickuptrashItemModel({
    this.bankSampahDahlia,
    this.bankSampahKobar,
    this.menerimaSemuaJenis,
    this.kotaBaru,
    this.distance,
    this.id,
  }) {
    bankSampahDahlia = bankSampahDahlia ?? Rx(ImageConstant.imgRectangle233);
    bankSampahKobar = bankSampahKobar ?? Rx("Bank Sampah Dahlia");
    menerimaSemuaJenis =
        menerimaSemuaJenis ?? Rx("Menerima semua jenis sampah");
    kotaBaru = kotaBaru ?? Rx("Jelutung");
    distance = distance ?? Rx("2.5km");
    id = id ?? Rx("");
  }

  Rx<String>? bankSampahDahlia;

  Rx<String>? bankSampahKobar;

  Rx<String>? menerimaSemuaJenis;

  Rx<String>? kotaBaru;

  Rx<String>? distance;

  Rx<String>? id;
}
