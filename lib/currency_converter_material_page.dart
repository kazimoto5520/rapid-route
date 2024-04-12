import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:rapid_route/controllers/tap_controller.dart';

class CurrencyConverterMaterialPage extends StatefulWidget {
  const CurrencyConverterMaterialPage({Key? key}) : super(key: key);

  @override
  State<CurrencyConverterMaterialPage> createState() =>
      _CurrencyConverterMaterialPageState();
}

class _CurrencyConverterMaterialPageState
    extends State<CurrencyConverterMaterialPage> {
  late final TapController tapController;

  @override
  void initState() {
    super.initState();
    tapController = Get.put(TapController());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            "Rapid Route",
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          ),
          GestureDetector(
            onTap: () => {
              tapController.increaseX(),
            },
            child: Container(
              margin: const EdgeInsets.all(20),
              width: double.infinity,
              height: 48,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: Colors.cyan,
              ),
              child: const Center(
                child: Text(
                  "Go",
                  style: TextStyle(fontSize: 18),
                ),
              ),
            ),
          ),
        ],
      ),
    ));
  }
}
