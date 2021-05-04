import 'package:flutter/material.dart';

class BasicPage extends StatelessWidget {
  final titleStyle = TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold);
  final subTitleStyle = TextStyle(fontSize: 18.0, color: Colors.grey);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: Column(
        children: [
          _createImage(),
          _createTitle(),
          _createActions(),
          _createText(),
          _createText(),
          _createText(),
          _createText(),
        ],
      )),
    );
  }

  Widget _createImage() {
    return Container(
      width: double.infinity,
      child: Image(
        image: NetworkImage(
          'https://www.adobe.com/content/dam/cc/us/en/creative-cloud/photography/discover/landscape-photography/CODERED_B1_landscape_P2d_714x348.jpg.img.jpg',
        ),
        height: 220.0,
        fit: BoxFit.cover,
      ),
    );
  }

  Widget _createTitle() {
    return SafeArea(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 20.0),
        child: Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Lake with a brige", style: titleStyle),
                  SizedBox(height: 7.0),
                  Text("A Lake in German", style: subTitleStyle),
                ],
              ),
            ),
            Icon(Icons.star, color: Colors.red, size: 30.0),
            Text(
              '41',
              style: TextStyle(fontSize: 20.0),
            )
          ],
        ),
      ),
    );
  }

  Widget _createActions() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _acction(Icons.call, 'CALL'),
        _acction(Icons.near_me, 'ROUTE'),
        _acction(Icons.share, 'SHARE')
      ],
    );
  }

  Widget _acction(IconData icon, String text) {
    return Column(
      children: [
        Icon(
          icon,
          color: Colors.blue,
          size: 40.0,
        ),
        SizedBox(
          height: 5.0,
        ),
        Text(
          text,
          style: TextStyle(color: Colors.blue, fontSize: 15.0),
        )
      ],
    );
  }

  Widget _createText() {
    return SafeArea(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 35.0),
        child: Text(
          'Sit minim et sunt incididunt fugiat eu laboris cupidatat voluptate irure quis ut commodo consequat. Exercitation velit velit nisi irure aliqua reprehenderit culpa. Tempor cillum laborum non minim dolore ea voluptate voluptate proident incididunt et ut esse nostrud. Eiusmod sit ad eiusmod proident magna elit reprehenderit tempor pariatur elit. Qui officia non tempor aliquip aliqua cillum velit.',
          textAlign: TextAlign.justify,
        ),
      ),
    );
  }
}
