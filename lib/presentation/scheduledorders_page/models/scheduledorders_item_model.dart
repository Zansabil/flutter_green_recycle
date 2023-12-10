import '../../../core/app_export.dart';

/// This class is used in the [scheduledorders_item_widget] screen.
class ScheduledordersItemModel {
  ScheduledordersItemModel({
    this.senin,
    this.kotaBaru,
    this.wib,
    this.ubah,
    this.id,
  }) {
    senin = senin ?? Rx("Senin");
    kotaBaru = kotaBaru ?? Rx("Kota Baru");
    wib = wib ?? Rx("09:00 WIB");
    ubah = ubah ?? Rx("Ubah");
    id = id ?? Rx("");
  }

  Rx<String>? senin;

  Rx<String>? kotaBaru;

  Rx<String>? wib;

  Rx<String>? ubah;

  Rx<String>? id;
}
