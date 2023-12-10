import '../../../core/app_export.dart';

/// This class is used in the [card_item_widget] screen.
class CardItemModel {
  CardItemModel({
    this.teknologi,
    this.teknologi1,
    this.aplikasiInovatif,
    this.id,
  }) {
    teknologi = teknologi ?? Rx(ImageConstant.imgRectangle11);
    teknologi1 = teknologi1 ?? Rx("Teknologi");
    aplikasiInovatif = aplikasiInovatif ??
        Rx("Aplikasi Inovatif Mengubah Cara Pengelolaan Sampah menjadi Lebih Berkelanjutan 📲");
    id = id ?? Rx("");
  }

  Rx<String>? teknologi;

  Rx<String>? teknologi1;

  Rx<String>? aplikasiInovatif;

  Rx<String>? id;
}
