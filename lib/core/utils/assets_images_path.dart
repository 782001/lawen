const String imageAssetsRoot = "assets/images/";
const String audiosAssetsRoot = "assets/audios/";
//fruits
String apple = _getAssetsImagePath('apple.png');
String banana = _getAssetsImagePath('banana.png');
String dates = _getAssetsImagePath('dates.png');
String grape = _getAssetsImagePath('grape.png');
String guava = _getAssetsImagePath('guava.png');
String kiwi = _getAssetsImagePath('kiwi.png');
String mango = _getAssetsImagePath('mango.png');
String orange = _getAssetsImagePath('orange.png');
String pear = _getAssetsImagePath('pear.png');
String pomegranate = _getAssetsImagePath('pomegranate.png');
String strawberry = _getAssetsImagePath('strawberry.png');
String watermelon = _getAssetsImagePath('watermelon.png');

//vegetables
String corn = _getAssetsImagePath('corn.png');
String carrot = _getAssetsImagePath('carrot.png');
String cucumber = _getAssetsImagePath('cucumber.png');
String lettuce = _getAssetsImagePath('lettuce.png');
String onion = _getAssetsImagePath('onion.png');
String pepper = _getAssetsImagePath('pepper.png');
String potato = _getAssetsImagePath('potato.png');
String tomato = _getAssetsImagePath('tomato.png');

//error
String error = _getAssetsImagePath('error.png');

//sad cloud
String sadCloud = _getAssetsImagePath('cloud.gif');

String _getAssetsImagePath(String fileName) {
  return imageAssetsRoot + fileName;
}

String Applemp3 = _getAssetsaudiosPath('Apple.mp3');
String Bananamp3 = _getAssetsaudiosPath('Banana.mp3');
String Carrotmp3 = _getAssetsaudiosPath('Carrot.mp3');
String Cornmp3 = _getAssetsaudiosPath('Corn.mp3');
String Cucumbermp3 = _getAssetsaudiosPath('Cucumber.mp3');
String Datesmp3 = _getAssetsaudiosPath('Dates.mp3');
String Grapemp3 = _getAssetsaudiosPath('Grape.mp3');
String Guavamp3 = _getAssetsaudiosPath('Guava.mp3');
String Kiwimp3 = _getAssetsaudiosPath('Kiwi.mp3');
String Lettucemp3 = _getAssetsaudiosPath('Lettuce.mp3');
String Mangomp3 = _getAssetsaudiosPath('Mango.mp3');
String Onionmp3 = _getAssetsaudiosPath('Onion.mp3');
String Orangemp3 = _getAssetsaudiosPath('Orange.mp3');
String Pearmp3 = _getAssetsaudiosPath('Pear.mp3');
String Peppermp3 = _getAssetsaudiosPath('Pepper.mp3');
String Pomegranatemp3 = _getAssetsaudiosPath('Pomegranate.mp3');
String Potatomp3 = _getAssetsaudiosPath('Potato.mp3');
String Strawberrymp3 = _getAssetsaudiosPath('Strawberry.mp3');
String Tomatomp3 = _getAssetsaudiosPath('Tomato.mp3');
String Watermelonmp3 = _getAssetsaudiosPath('Watermelon.mp3');

//تعزيز
String heymp31 = _getAssetsaudiosPath('1.mp3');
String heymp32 = _getAssetsaudiosPath('3.mp3');
String bravo1 = _getAssetsaudiosPath('bravo1.mp3');
String bravo2 = _getAssetsaudiosPath('bravo2.mp3');

//  خطأ
// String errormp31 = _getAssetsaudiosPath('1 X.mp3');
String errormp32 = _getAssetsaudiosPath('2X.mp3');

String _getAssetsaudiosPath(String fileName) {
  return audiosAssetsRoot + fileName;
}
