import '../../../core/app_export.dart';

/// This class is used in the [privacylist_item_widget] screen.
class PrivacylistItemModel {
  PrivacylistItemModel({
    this.kataSandi,
    this.id,
  }) {
    kataSandi = kataSandi ?? Rx("Kata Sandi");
    id = id ?? Rx("");
  }

  Rx<String>? kataSandi;

  Rx<String>? id;
}
