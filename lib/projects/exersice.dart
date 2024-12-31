import 'package:flutter/material.dart';

class Exersice extends StatefulWidget {
  const Exersice({super.key});

  @override
  State<Exersice> createState() => _ExersiceState();
}

class _ExersiceState extends State<Exersice> {
  String? selectedMonth;
  final list = ["jan", "feb", "mars", "april"];
  final monthNumberController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Directionality(
        textDirection: TextDirection.rtl,
        child: Scaffold(
          body: Center(
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 65),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(25),
                      child: Image.network(
                        "https://media.wired.com/photos/653bddf62692abf70732f95b/1:1/w_1589,h_1589,c_limit/Google-Calendar-Appointments-Gear-GettyImages-1385868923.jpg",
                        height: 285,
                        width: 300,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: TextFormField(
                      controller: monthNumberController,
                      onTapOutside: (event) {
                        FocusManager.instance.primaryFocus!.unfocus();
                      },
                      decoration: InputDecoration(
                        labelText: "رقم الشهر",
                        labelStyle: TextStyle(
                          color: Colors.deepPurpleAccent,
                          fontSize: 16,
                        ),
                        floatingLabelStyle: TextStyle(
                          color: Colors.deepPurpleAccent,
                          fontSize: 18,
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide: BorderSide(
                            color: Colors.deepPurpleAccent,
                          ),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide: BorderSide(
                            color: Colors.deepPurpleAccent,
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide: BorderSide(
                            color: Colors.deepPurpleAccent,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: FilledButton(
                      onPressed: () {
                        int number =
                            int.tryParse(monthNumberController.text) ?? 0;
                        if (number >= 1 && number <= 12) {
                          selectedMonth = list[number - 1];
                        } else {
                          selectedMonth = "invaled";
                        }
                        setState(() {});
                      },
                      child: Text(
                        "احصل علي النتيجة",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 39,
                  ),
                  if (selectedMonth != null)
                    Center(
                      child: Text(
                        "أسم الشهر : $selectedMonth",
                        style: TextStyle(
                            color: Colors.deepPurpleAccent,
                            fontWeight: FontWeight.bold,
                            fontSize: 18),
                      ),
                    )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
