import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ImageComponent extends StatelessWidget {
  const ImageComponent({
    super.key,
    required this.image,
  });
  final String image;
  // "https://t4.ftcdn.net/jpg/00/77/51/81/360_F_77518136_F88I0v3R2mZsKEgxxXMc4iqXlOjK8OLE.jpg"
  // "https://media.istockphoto.com/id/174846251/photo/portrait-of-a-cat.jpg?s=612x612&w=0&k=20&c=36RKBn1xvkjct4_7BuxFQzUwxb-aUraZFsWzFFUIwqE="
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
        width: 100.w,
        child: Image.network(image),
      ),
    );
  }
}