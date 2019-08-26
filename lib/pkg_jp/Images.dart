import 'package:flutter/material.dart';

class ShowImage extends StatelessWidget
{
  int value;
  ShowImage(this.value);
  @override
  Widget build(BuildContext context) {
    AssetImage assetImage =AssetImage('images/$value.jpeg');
    Image image =Image(image: assetImage,width: 250.0,height: 250.0,);
    return Container(child: image,);

  }
}

class ShowImage2 extends StatelessWidget
{
  String img;
  ShowImage2(this.img);
  @override
  Widget build(BuildContext context) {
    AssetImage assetImage =AssetImage('images/$img.jpeg');
    Image image =Image(image: assetImage,width: 250.0,height: 250.0,);
    return Container(child: image,);

  }
}
// class ShowImage3 extends StatelessWidget
// {
//   @override
//   Widget build(BuildContext context) {
//     AssetImage assetImage =AssetImage('images/dr.jpeg');
//     Image image =Image(image: assetImage,width: 250.0,height: 250.0,);
//     return Container(child: image,);

//   }
// }


// class ShowImage4 extends StatelessWidget
// {
//   @override
//   Widget build(BuildContext context) {
//     AssetImage assetImage =AssetImage('images/game.jpeg');
//     Image image =Image(image: assetImage,width: 250.0,height: 250.0,);
//     return Container(child: image,);

//   }
// }


// class ShowImage5 extends StatelessWidget
// {
//   @override
//   Widget build(BuildContext context) {
//     AssetImage assetImage =AssetImage('images/anx.jpeg');
//     Image image =Image(image: assetImage,width: 250.0,height: 250.0,);
//     return Container(child: image,);

//   }
// }


// class ShowImage6 extends StatelessWidget
// {
//   @override
//   Widget build(BuildContext context) {
//     AssetImage assetImage =AssetImage('images/Social.jpeg');
//     Image image =Image(image: assetImage,width: 250.0,height: 250.0,);
//     return Container(child: image,);

//   }
// }

// class ShowImage7 extends StatelessWidget
// {
//   @override
//   Widget build(BuildContext context) {
//     AssetImage assetImage =AssetImage('images/eat.jpeg');
//     Image image =Image(image: assetImage,width: 250.0,height: 250.0,);
//     return Container(child: image,);

//   }
// }


