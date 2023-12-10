import '../../../core/app_export.dart';
import 'card_item_model.dart';

/// This class defines the variables used in the [home_page],
/// and is typically used to hold data that is passed between different parts of the application.
class HomeModel {
  Rx<List<CardItemModel>> cardItemList = Rx([
    CardItemModel(
        teknologi: ImageConstant.imgRectangle11.obs,
        teknologi1: "Teknologi".obs,
        aplikasiInovatif:
            "Aplikasi Inovatif Mengubah Cara Pengelolaan Sampah menjadi Lebih Berkelanjutan 📲"
                .obs),
    CardItemModel(
        teknologi: ImageConstant.imgRectangle11143x361.obs,
        teknologi1: "Daur Ulang".obs,
        aplikasiInovatif:
            "Dari Sampah Menjadi Harta: Yuk daur ulang sampah dari sekarang!"
                .obs),
    CardItemModel(
        teknologi: ImageConstant.imgRectangle111.obs,
        teknologi1: "Edukasi".obs,
        aplikasiInovatif:
            "Pentingnya Edukasi Sampah dalam Kehidupan Sehari-hari ✨".obs),
    CardItemModel(
        teknologi: ImageConstant.imgRectangle112.obs,
        teknologi1: "Edukasi".obs,
        aplikasiInovatif:
            "Mengubah Ancaman menjadi Peluang dengan Edukasi yang Tepat  📑"
                .obs),
    CardItemModel(
        teknologi: ImageConstant.imgRectangle113.obs,
        teknologi1: "Kompos".obs,
        aplikasiInovatif:
            "Tata cara untuk mulai melakukan pengomposan dirumah sendiri 🏠"
                .obs)
  ]);
}
