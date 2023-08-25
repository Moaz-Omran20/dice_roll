import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:roll_dice/dice_provider.dart';

class DiceRoll extends StatelessWidget {
  const DiceRoll({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: const [
          Padding(
            padding: EdgeInsets.only(top: 20, right: 20),
            child: Text("ROLL One Dice"),
          )
        ],
        backgroundColor: const Color(0xFF018577),
        title: const Text("The Dice App"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(18),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text("Shake to throw"),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Consumer<DiceProvider>(
                    builder: (context, provider, child) =>
                        Image.asset(
                            "assets/images/dice_${provider.firstDiceValue}.png")),
                const SizedBox(
                  width: 50,
                ),
                Consumer<DiceProvider>(
                    builder: (context, provider, child) =>
                        Image.asset(
                            "assets/images/dice_${provider.secondDiceValue}.png")),
              ],
            ),
            ElevatedButton(
              onPressed: () {
                var diceValueProvider = Provider.of<DiceProvider>(
                    context, listen: false);
                diceValueProvider.rollFirstDice();
                diceValueProvider.rollSecondtDice();
              },
              style: ElevatedButton.styleFrom(primary: const Color(0xFFd6d8d7)),
              child: const Text(
                "ROLL Dice",
                style: TextStyle(color: Colors.black),
              ),
            )
          ],
        ),
      ),
    );
  }
}
