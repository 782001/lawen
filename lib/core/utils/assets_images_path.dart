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


//sad cloud
String sadCloud = _getAssetsImagePath('cloud.gif');

String _getAssetsImagePath(String fileName) {
  return imageAssetsRoot + fileName;
}



String Applem4a = _getAssetsaudiosPath('Apple.m4a');
String Bananam4a = _getAssetsaudiosPath('Banana .m4a');
String Carrotm4a = _getAssetsaudiosPath('Carrot .m4a');
String Cornm4a = _getAssetsaudiosPath('Corn.m4a');
String Cucumberm4a = _getAssetsaudiosPath('Cucumber .m4a');
String Datesm4a = _getAssetsaudiosPath('Dates.m4a');
String Grapem4a = _getAssetsaudiosPath('Grape.m4a');
String Guavam4a = _getAssetsaudiosPath('Guava .m4a');
String Kiwim4a = _getAssetsaudiosPath('Kiwi.m4a');
String Lettucem4a = _getAssetsaudiosPath('Lettuce.m4a');
String Mangom4a = _getAssetsaudiosPath('Mango.m4a');
String Onionm4a = _getAssetsaudiosPath('Onion.m4a');
String Orangem4a = _getAssetsaudiosPath('Orange .m4a');
String Pearm4a = _getAssetsaudiosPath('Pear.m4a');
String Pepperm4a = _getAssetsaudiosPath('Pepper .m4a');
String Pomegranatem4a = _getAssetsaudiosPath('Pomegranate .m4a');
String Potatom4a = _getAssetsaudiosPath('Potato .m4a');
String Strawberrym4a = _getAssetsaudiosPath('Strawberry .m4a');
String Tomatom4a = _getAssetsaudiosPath('Tomato .m4a');
String Watermelonm4a = _getAssetsaudiosPath('Watermelon .m4a');

//تعزيز
String heym4a1 = _getAssetsaudiosPath('1 .m4a');
String heym4a2 = _getAssetsaudiosPath('3.m4a');
//  خطأ
// String errorm4a1 = _getAssetsaudiosPath('1 X.m4a');
String errorm4a2 = _getAssetsaudiosPath('2 X.m4a');


String _getAssetsaudiosPath(String fileName) {
  return audiosAssetsRoot + fileName;
}
