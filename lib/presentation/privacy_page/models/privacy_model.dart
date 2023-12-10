import '../../../core/app_export.dart';
import 'privacylist_item_model.dart';

/// This class defines the variables used in the [privacy_page],
/// and is typically used to hold data that is passed between different parts of the application.
class PrivacyModel {
  Rx<List<PrivacylistItemModel>> privacylistItemList = Rx([
    PrivacylistItemModel(kataSandi: "Kata Sandi".obs),
    PrivacylistItemModel(kataSandi: "Aktivitas Akun".obs),
    PrivacylistItemModel(kataSandi: "Kelola Izin Aplikasi".obs)
  ]);
}
