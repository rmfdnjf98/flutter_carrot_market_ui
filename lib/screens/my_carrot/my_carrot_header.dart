import 'package:flutter/material.dart';
import 'package:flutter_carrot_market_ui/screens/components/image_container.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MyCarrotHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0.5,
      margin: EdgeInsets.zero,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadiusGeometry.circular(0),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 16),
        child: Column(
          children: [
            _buildProfileRow(),
            const SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _buildRoundTextButton('판매내역', FontAwesomeIcons.receipt),
                _buildRoundTextButton('구매내역', FontAwesomeIcons.bagShopping),
                _buildRoundTextButton('관심목록', FontAwesomeIcons.heart),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildProfileRow() {
    return Row(
      children: [
        Stack(
          children: [
            const ImageContainer(
              width: 65,
              height: 65,
              borderRadius: 32.5,
              imageUrl: 'https://picsum.photos/200/100',
            ),
            Positioned(
              bottom: 0,
              right: 0,
              child: Container(
                width: 20,
                height: 20,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.grey[100],
                ),
                child: const Icon(Icons.camera_alt_outlined, size: 15),
              ),
            ),
          ],
        ),
        const SizedBox(
          width: 16,
        ),
        Builder(
          builder: (context) => Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'developer',
                style: Theme.of(context).textTheme.displayMedium,
              ),
              const SizedBox(height: 10),
              const Text('부전동 #00912'),
            ],
          ),
        ),
        const Spacer(),
        _buildProfileButton(),
      ],
    );
  }

  Widget _buildProfileButton() {
    return InkWell(
      onTap: () {},
      child: Builder(
        builder: (context) => Container(
          decoration: BoxDecoration(
            border: Border.all(color: const Color(0xFFD4D5D0), width: 1.0),
            borderRadius: BorderRadius.circular(6.0),
          ),
          height: 45,
          child: Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: Text(
                '프로필 보기',
                style: Theme.of(context).textTheme.titleMedium,
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildRoundTextButton(String title, IconData iconData) {
    return Builder(
      builder: (context) => Column(
        children: [
          Container(
            width: 60,
            height: 60,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: const Color.fromRGBO(255, 226, 208, 1),
              border: Border.all(color: const Color(0xFFD4D5D0), width: 0.5),
            ),
            child: Icon(iconData, color: Colors.orange),
          ),
          const SizedBox(height: 10),
          Text(title, style: Theme.of(context).textTheme.titleMedium),
        ],
      ),
    );
  }
}
