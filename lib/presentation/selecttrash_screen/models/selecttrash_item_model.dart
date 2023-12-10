import '../../../core/app_export.dart';

/// This class is used in the [selecttrash_item_widget] screen.
class SelecttrashItemModel {
  SelecttrashItemModel({
    this.image,
    this.botolPlastik,
    this.semuaJenisBotol,
    this.id,
  }) {
    image = image ?? Rx(ImageConstant.imgRectangle233175x175);
    botolPlastik = botolPlastik ?? Rx("Botol Plastik");
    semuaJenisBotol = semuaJenisBotol ?? Rx("Semua jenis botol plastik");
    id = id ?? Rx("");
  }

  Rx<String>? image;

  Rx<String>? botolPlastik;

  Rx<String>? semuaJenisBotol;

  Rx<String>? id;
}
