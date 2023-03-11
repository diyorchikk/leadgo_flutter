import 'package:flutter/material.dart';
import 'package:toolpor_leads/presentation/ui/widgets/w_text_field.dart';

import '../resources/box_decoration.dart';
import '../resources/styles.dart';

class CardInfo extends StatelessWidget {
  final int numberSections;

  const CardInfo({
    Key? key,
    this.numberSections = 9,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double width = numberSections as double;
    List<String> items = ["  5", " 10", " 15", " 20", " 25"];
    String? dropDownValue = "  5";
    return Container(
      margin: const EdgeInsets.all(10),
      padding: const EdgeInsets.all(20),
      decoration: BDecoration.getCardDecoration(),
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Text(
                    "Show",
                    style: Styles.getTitleStyle().copyWith(color: Colors.black),
                  ),
                  const SizedBox(width: 10),
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: const BorderRadius.all(
                          Radius.circular(8),
                        ),
                        border: Border.all(
                          width: 1,
                          color: Colors.black38,
                        )),
                    child: SizedBox(
                      height: 30,
                      width: 50,
                      child: DropdownButton<String>(
                        iconDisabledColor: Colors.white,
                        iconEnabledColor: Colors.white,
                        underline: const SizedBox(),
                        value: dropDownValue,
                        onChanged: (String? newValue) {
                          // setState(() {
                          //   dropDownValue = newValue!;
                          // });
                        },
                        items:
                            items.map<DropdownMenuItem<String>>((String value) {
                          return DropdownMenuItem<String>(
                            value: value,
                            child: Text(value),
                          );
                        }).toList(),
                      ),
                    ),
                  ),
                  const SizedBox(width: 10),
                  Text(
                    "entries",
                    style: Styles.getTitleStyle().copyWith(color: Colors.black),
                  ),
                ],
              ),
              Row(
                children: [
                  Text(
                    "Search:",
                    style: Styles.getTitleStyle().copyWith(color: Colors.black),
                  ),
                  const SizedBox(width: 10),
                  SizedBox(
                    width: 300,
                    height: 50,
                    child: WTextField(
                      controller: TextEditingController(),
                      name: "",
                    ),
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(height: 10),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  decoration: BoxDecoration(
                      border: Border.all(
                    width: 1,
                    color: Colors.black26,
                  )),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          ...List.generate(
                            numberSections,
                            (index) => Padding(
                              padding: const EdgeInsets.all(10),
                              child: Row(
                                children: [
                                  Text(
                                    "Company\nname",
                                    style: Styles.getTitleStyle().copyWith(
                                      color: Colors.black,
                                      fontSize: 18,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  IconButton(
                                    onPressed: () {},
                                    icon: const Icon(Icons.sync_outlined),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      Container(
                        height: 1,
                        width: width * 16 * width,
                        color: Colors.black38,
                      ),
                      ...List.generate(
                        6,
                        (index) => Column(
                          children: [
                            _info(),
                            Container(
                              height: 1,
                              width: width * 16 * width,
                              color: Colors.black38,
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 20),
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                Text(
                  "Showing 1 to 8 of 8 entries",
                  style: Styles.getTitleStyle().copyWith(
                    color: Colors.black,
                    fontSize: 16,
                  ),
                ),
                const SizedBox(height: 10),
              ],
            ),
          ),
        ],
      ),
    );
  }

  _info() => Padding(
        padding: const EdgeInsets.only(
          bottom: 10,
          top: 20,
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Zorita Serrano",
              style: Styles.getTitleStyle().copyWith(
                color: Colors.black,
                fontSize: 16,
              ),
            ),
            const SizedBox(width: 45),
            Text(
              "Software Eng",
              style: Styles.getTitleStyle().copyWith(
                color: Colors.black,
                fontSize: 16,
              ),
            ),
            const SizedBox(width: 45),
            Text(
              "Google Co.",
              style: Styles.getTitleStyle().copyWith(
                color: Colors.black,
                fontSize: 16,
              ),
            ),
            const SizedBox(width: 45),
            Text(
              "#ER56",
              style: Styles.getTitleStyle().copyWith(
                color: Colors.black,
                fontSize: 16,
              ),
            ),
            const SizedBox(width: 45),
            Text(
              "1.4%",
              style: Styles.getTitleStyle().copyWith(
                color: Colors.black,
                fontSize: 16,
              ),
            ),
            const SizedBox(width: 45),
            Text(
              "2012/06/01",
              style: Styles.getTitleStyle().copyWith(
                color: Colors.black,
                fontSize: 16,
              ),
            ),
            const SizedBox(width: 45),
            Text(
              "Accountant",
              style: Styles.getTitleStyle().copyWith(
                color: Colors.black,
                fontSize: 16,
              ),
            ),
            const SizedBox(width: 45),
            Container(
              padding: const EdgeInsets.all(8),
              decoration: const BoxDecoration(
                color: Colors.orangeAccent,
                borderRadius: BorderRadius.all(
                  Radius.circular(8),
                ),
              ),
              child: Center(
                child: Text(
                  "Medium",
                  style: Styles.getTitleStyle(),
                ),
              ),
            ),
            const SizedBox(width: 45),
            Text(
              "\$115.000,00",
              style: Styles.getTitleStyle().copyWith(
                color: Colors.black,
                fontSize: 16,
              ),
            ),
            const SizedBox(width: 45),
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.delete_outline,
                color: Colors.orangeAccent,
              ),
            ),
            const SizedBox(width: 10),
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.open_in_new_sharp,
                color: Colors.orangeAccent,
              ),
            ),
          ],
        ),
      );
}
