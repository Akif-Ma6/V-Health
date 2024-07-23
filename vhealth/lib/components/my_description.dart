import 'package:flutter/material.dart';

class MyDescriptionBox extends StatelessWidget {
  const MyDescriptionBox({super.key});

  @override
  Widget build(BuildContext context) {
    var myPrimaryTextStyle =
        TextStyle(color: Theme.of(context).colorScheme.inversePrimary);
    var mySecondaryTextStyle =
        TextStyle(color: Theme.of(context).colorScheme.primary);
    return Padding(
      padding: const EdgeInsets.only(bottom: 50),
      child: Container(
        padding: const EdgeInsets.all(20),
        margin: const EdgeInsets.only(left: 25, right: 25, bottom: 25),
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.onPrimary,
            borderRadius: BorderRadius.circular(8),
            border: Border.all(color: Theme.of(context).colorScheme.secondary)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                Text(
                  "Delivery Fee",
                  style: myPrimaryTextStyle,
                ),
                const SizedBox(height: 10),
                Text(
                  "₹${54}",
                  style: mySecondaryTextStyle,
                )
              ],
            ),
            Column(
              children: [
                Text(
                  "Delivered Within",
                  style: myPrimaryTextStyle,
                ),
                const SizedBox(height: 10),
                Text(
                  "20-30 min",
                  style: mySecondaryTextStyle,
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
