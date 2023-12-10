import '../../../core/app_export.dart';
import 'selecttrash_item_model.dart';

/// This class defines the variables used in the [selecttrash_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class SelecttrashModel {
  Rx<List<SelecttrashItemModel>> selecttrashItemList = Rx([
    SelecttrashItemModel(
        image: ImageConstant.imgRectangle233175x175.obs,
        botolPlastik: "Botol Plastik".obs,
        semuaJenisBotol: "Semua jenis botol plastik".obs),
    SelecttrashItemModel(
        image: ImageConstant.imgRectangle2337.obs,
        botolPlastik: "Botol Kaca".obs,
        semuaJenisBotol: "Semua jenis botol kaca".obs),
    SelecttrashItemModel(
        image: ImageConstant.imgRectangle2338.obs,
        botolPlastik: "Kertas ".obs,
        semuaJenisBotol: "Semua jenis kertas".obs),
    SelecttrashItemModel(
        image: ImageConstant.imgRectangle2339.obs,
        botolPlastik: "Kardus".obs,
        semuaJenisBotol: "Semua jenis kardus".obs),
    SelecttrashItemModel(image: ImageConstant.imgRectangle23310.obs),
    SelecttrashItemModel(image: ImageConstant.imgRectangle23311.obs),
    SelecttrashItemModel(image: ImageConstant.imgRectangle23312.obs),
    SelecttrashItemModel(image: ImageConstant.imgRectangle23313.obs),
    SelecttrashItemModel(image: ImageConstant.imgRectangle23314.obs),
    SelecttrashItemModel(image: ImageConstant.imgRectangle23315.obs)
  ]);
}
