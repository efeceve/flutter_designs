import 'package:flutter/material.dart';

class BasicDesignScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          // Banner Image
          Image(image: AssetImage('assets/landscape.jpg')),

          // Title
          Title(),

          // Button Section
          ButtonSection(),

          // Text
          Container(
            margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Text(
                'Incididunt adipisicing dolor ut magna irure laboris occaecat. Qui nisi qui elit nostrud aliquip minim reprehenderit quis laboris voluptate. Eu deserunt dolor et enim duis deserunt magna enim deserunt aute enim. Ad tempor velit occaecat dolore pariatur laborum Lorem aliquip est irure aute consectetur irure reprehenderit. Non eiusmod aliquip non velit velit laborum ad dolor culpa eu. Ut quis ullamco anim mollit dolore consectetur officia amet cillum. Sunt cillum dolor labore voluptate nulla voluptate veniam eiusmod tempor ut laborum culpa labore enim.'),
          )
        ],
      ),
    );
  }
}

class Title extends StatelessWidget {
  const Title({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Oeschinen Lake campground',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text(
                'Kandersteg, Switzerland',
                style: TextStyle(color: Colors.black45),
              ),
            ],
          ),
          Expanded(child: Container()),
          Icon(
            Icons.star,
            color: Colors.red,
          ),
          Text('41'),
        ],
      ),
    );
  }
}

class ButtonSection extends StatelessWidget {
  const ButtonSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomButton(icon: Icons.phone, text: 'CALL'),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 30),
          ),
          CustomButton(
            icon: Icons.near_me,
            text: 'ROUTE',
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 30),
          ),
          CustomButton(
            icon: Icons.share,
            text: 'SHARE',
          ),
        ],
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  final IconData icon;
  final String text;
  const CustomButton({
    Key? key,
    required this.icon,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(
          this.icon,
          color: Colors.lightBlue[400],
        ),
        Text(
          this.text,
          style: TextStyle(color: Colors.lightBlue[400]),
        )
      ],
    );
  }
}
