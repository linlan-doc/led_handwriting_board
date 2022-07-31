import 'package:flutter/material.dart';
import 'package:led_handwriting_board/view/pop_up_menu.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: const [PopUpMenu()],
      ),
    );
  }
}
