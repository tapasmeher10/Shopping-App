import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:equatable/equatable.dart';

class Catagory extends Equatable{
  final String name;
  final String imageUrl;

  const Catagory({
    required this.name,
    required this.imageUrl,
});

  @override
  List<Object?> get props => [name,imageUrl];

  static Catagory fromSnapshot(DocumentSnapshot snap){
    Catagory catagory = Catagory(name:snap["name"], imageUrl: snap["imageUrl"],);
    return catagory;
  }

  static List<Catagory> categories=[
    Catagory(name: 'Kanjipuram',
        imageUrl: 'https://static.kankatala.com/media/wysiwyg/home-page/kankatala-kanchipuram-saree-26.jpg'
    ),
    Catagory(name: "Banarasi",
        imageUrl: 'https://static.kankatala.com/media/wysiwyg/home-page/kankatala-banarasi-saree-14.jpg'
    ),
    Catagory(name: 'Silk',
        imageUrl: 'https://img0.junaroad.com/uiproducts/17790399/zoom_0-1623675241.jpg'
    ),
    Catagory(name: 'Sambalpuri',
        imageUrl: 'https://azlqkobuum.cloudimg.io/v7/https://seerat.shop/wp-content/uploads/2020/06/Whitagram-Image-44-min.jpg'
    ),
  ];

}