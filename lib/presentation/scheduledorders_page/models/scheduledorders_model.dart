import '../../../core/app_export.dart';
import 'scheduledorders_item_model.dart';

/// This class defines the variables used in the [scheduledorders_page],
/// and is typically used to hold data that is passed between different parts of the application.
class ScheduledordersModel {
  Rx<List<ScheduledordersItemModel>> scheduledordersItemList = Rx([
    ScheduledordersItemModel(
        senin: "Senin".obs,
        kotaBaru: "Kota Baru".obs,
        wib: "09:00 WIB".obs,
        ubah: "Ubah".obs),
    ScheduledordersItemModel(
        senin: "Jum’at".obs,
        kotaBaru: "Kota Baru".obs,
        wib: "07:00 WIB".obs,
        ubah: "Ubah".obs),
    ScheduledordersItemModel(
        senin: "Minggu".obs,
        kotaBaru: "Kota Baru".obs,
        wib: "10:00 WIB".obs,
        ubah: "Ubah".obs)
  ]);
}
