import 'package:api_exam/features/home/presentation/components/image_component.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple[300],
        title: const Text('Flutter Cats App toy'),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.replay_outlined),
          ),
        ],
      ),
      body: const SizedBox(
        width: double.maxFinite,
        height: double.maxFinite,
        // color: Colors.blue[100],
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //! Column 1
              Column(
                children: [
                  ImageComponent(
                    image:
                        "https://media.istockphoto.com/id/174846251/photo/portrait-of-a-cat.jpg?s=612x612&w=0&k=20&c=36RKBn1xvkjct4_7BuxFQzUwxb-aUraZFsWzFFUIwqE=",
                  ),
                  ImageComponent(
                    image:
                        "https://media.istockphoto.com/id/174846251/photo/portrait-of-a-cat.jpg?s=612x612&w=0&k=20&c=36RKBn1xvkjct4_7BuxFQzUwxb-aUraZFsWzFFUIwqE=",
                  ),
                  ImageComponent(
                    image:
                        "https://media.istockphoto.com/id/174846251/photo/portrait-of-a-cat.jpg?s=612x612&w=0&k=20&c=36RKBn1xvkjct4_7BuxFQzUwxb-aUraZFsWzFFUIwqE=",
                  ),
                ],
              ),
              //! Column 2
              Column(
                children: [
                  ImageComponent(
                    image:
                        "https://media.istockphoto.com/id/174846251/photo/portrait-of-a-cat.jpg?s=612x612&w=0&k=20&c=36RKBn1xvkjct4_7BuxFQzUwxb-aUraZFsWzFFUIwqE=",
                  ),
                  ImageComponent(
                    image:
                        "https://media.istockphoto.com/id/174846251/photo/portrait-of-a-cat.jpg?s=612x612&w=0&k=20&c=36RKBn1xvkjct4_7BuxFQzUwxb-aUraZFsWzFFUIwqE=",
                  ),
                  ImageComponent(
                    image:
                        "https://t4.ftcdn.net/jpg/00/77/51/81/360_F_77518136_F88I0v3R2mZsKEgxxXMc4iqXlOjK8OLE.jpg",
                  ),
                  ImageComponent(
                    image:
                        "https://media.istockphoto.com/id/174846251/photo/portrait-of-a-cat.jpg?s=612x612&w=0&k=20&c=36RKBn1xvkjct4_7BuxFQzUwxb-aUraZFsWzFFUIwqE=",
                  ),
                ],
              ),
              //! Column 3
              Column(
                children: [
                  ImageComponent(
                    image:
                        "https://t4.ftcdn.net/jpg/00/77/51/81/360_F_77518136_F88I0v3R2mZsKEgxxXMc4iqXlOjK8OLE.jpg",
                  ),
                  ImageComponent(
                    image:
                        "https://media.istockphoto.com/id/174846251/photo/portrait-of-a-cat.jpg?s=612x612&w=0&k=20&c=36RKBn1xvkjct4_7BuxFQzUwxb-aUraZFsWzFFUIwqE=",
                  ),
                  ImageComponent(
                    image:
                        "https://t4.ftcdn.net/jpg/00/77/51/81/360_F_77518136_F88I0v3R2mZsKEgxxXMc4iqXlOjK8OLE.jpg",
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}


