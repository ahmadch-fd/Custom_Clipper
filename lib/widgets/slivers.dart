import 'package:flutter/material.dart';

class MySlivers extends StatelessWidget {
  const MySlivers({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: CustomScrollView(
              slivers: [
                // 1. Floating/Collapsing Header
                SliverAppBar(
                  expandedHeight: 200.0,
                  floating: true,
                  pinned: true, // Scroll karne par header top par ruk jayega
                  flexibleSpace: FlexibleSpaceBar(
                    title: Text("Slivers Mastery"),
                    background: Image.network(
                      'https://picsum.photos/400/200',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),

                // 2. Normal Widget ko Sliver mein badalna
                SliverToBoxAdapter(
                  child: Padding(
                    padding: EdgeInsets.all(20),
                    child: Text("Yeh aik normal text hai slivers ke darmiyan."),
                  ),
                ),

                // 3. Aik List
                SliverList(
                  delegate: SliverChildBuilderDelegate(
                    (context, index) => ListTile(title: Text("Item #$index")),
                    childCount: 20,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
