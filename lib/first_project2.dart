import 'package:flutter/material.dart';

class FirstProject2 extends StatefulWidget {
  const FirstProject2({super.key});

  @override
  State<FirstProject2> createState() => _FirstProject2State();
}

class _FirstProject2State extends State<FirstProject2> {
  final list = ["jan", "feb", "mars", "april", "may"];
  String? selectedMonth;
  final monthNumberController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        body: SafeArea(
          child: Center(
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(25),
                    child: Image.network(
                      "https://media.wired.com/photos/653bddf62692abf70732f95b/1:1/w_1589,h_1589,c_limit/Google-Calendar-Appointments-Gear-GettyImages-1385868923.jpg",
                      height: 304,
                      width: 285,
                      fit: BoxFit.cover,
                    ),
                  ),
                  SizedBox(
                    height: 50,
                  ),
                  TextFormField(
                    controller: monthNumberController,
                    decoration: InputDecoration(
                      labelStyle: TextStyle(
                          color: Colors.deepPurpleAccent, fontSize: 18),
                      floatingLabelStyle: TextStyle(
                        color: Colors.deepPurpleAccent,
                        fontSize: 18,
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                        borderSide: BorderSide(
                            color: Colors.deepPurpleAccent, width: 3),
                      ),
                      labelText: "رقم الشهر",
                    ),
                    onTapOutside: (event) {
                      FocusManager.instance.primaryFocus!.unfocus();
                    },
                  ),
                  SizedBox(
                    height: 39,
                  ),
                  FilledButton(
                    onPressed: () {
                      int number =
                          int.tryParse(monthNumberController.text) ?? 0;
                      if(number>=1&&number<=12){
                        selectedMonth = list[number-1];
                      }else{
                        selectedMonth = "invalid";
                      }
                      setState(() {

                      });
                    },
                    child: Text("أحصل علي النتيجة"),
                    style: FilledButton.styleFrom(
                      fixedSize: Size(398, 60),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 39,
                  ),
                  if (selectedMonth != null) Text("اسم الشهر : $selectedMonth")
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
