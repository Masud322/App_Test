class FavList{

  static List<String> favList = [];

  static void addImagetoFav({required String imagePath}){
    if(checkList(imagePath: imagePath)){
      favList.remove(imagePath);
    }else{
      favList.add(imagePath);
    }
  }

  static Future<List<String>> getFavImgList() async {

    print(favList.length);

    return favList;
  }

  static bool checkList({required String imagePath}){
    bool ret = false;
    for(int i=0;i<favList.length;i++){
      if(favList[i] == imagePath) {
        ret = true;
      }
    }
    return ret;
  }

}