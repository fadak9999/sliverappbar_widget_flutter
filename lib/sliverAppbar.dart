import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class sliverAppbar extends StatefulWidget {
  const sliverAppbar({super.key});

  @override
  State<sliverAppbar> createState() => _sliverAppbarState();
}

class _sliverAppbarState extends State<sliverAppbar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //  appBar: AppBar(backgroundColor: Colors.brown,),
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            backgroundColor: Color.fromARGB(255, 81, 74, 51),
            pinned: true, //يحدد اذا كان الرئس مرئيا او لا  في السحب و الافلات
            expandedHeight: 160.0, //يحدد ارتاع الرئس
            flexibleSpace: FlexibleSpaceBar(
              //اخلي بي اي شي من عنوان او صورة
              title: Text("slverAppBar"),
              background: Image.network(
                "https://static.euronews.com/articles/stories/07/80/88/10/1440x810_cmsv2_c9355965-6b0d-5605-8726-a47340519907-7808810.jpg",
                fit: BoxFit.cover,
              ),
            ),
          ),
          //
          SliverList(
            delegate: SliverChildBuilderDelegate(((context, index) {
              return ListTile(
                title: Text("item${1 + index}"),
              );
            }), childCount: 20),
          ),
        ],
      ),
    );
  }
}
