import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:
          Colors.grey[100], // Set the background color to a light shade of grey
      body: Center(
        child: Stack(
          children: [
            Positioned(
              top: 0,
              child: Image.asset(
                "assets/images/Vector.png",
                width: 333,
              ),
            ),
            Positioned(
              left: 0,
              child: Image.asset(
                "assets/images/Vector (3).png",
                height: MediaQuery.of(context).size.height,
                width: 44,
              ),
            ),
            Positioned(
              bottom: 0,
              child: Image.asset(
                "assets/images/Vector (1).png",
                width: MediaQuery.of(context).size.width,
              ),
            ),
            Center(
              child: Container(
                width: MediaQuery.of(context).size.width * 0.6,
                height: MediaQuery.of(context).size.height * 0.4,
                decoration: BoxDecoration(
                  color: Color.fromRGBO(22, 93, 49, 1),

                  borderRadius: BorderRadius.circular(20), // تعيين حواف مستديرة
                ),
                padding:
                    EdgeInsets.all(20), // إضافة هامش داخلي للكونتينر الخارجي
                child: Center(
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.6,
                    height: MediaQuery.of(context).size.height * 0.4,
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(139, 174, 152, 1),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Row(
                            children: [
                              Expanded(
                                child: Container(
                                  color: Color.fromARGB(255, 255, 252, 252),
                                  child: TextField(
                                    decoration: InputDecoration(
                                      hintText: "البريد الإلكتروني",
                                      hintStyle: TextStyle(color: Colors.green),
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(10),
                                        borderSide: BorderSide.none,
                                      ),
                                      contentPadding: EdgeInsets.zero,
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(width: 10),
                              Material(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(20),
                                    bottomRight: Radius.circular(20),
                                  ),
                                ),
                                child: Container(
                                  width: 50,
                                  height: 60,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    border: Border.all(
                                        color: Colors.green.shade900,
                                        width: 1.5),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Center(
                                    child: Text(
                                      "الحساب",
                                      style: TextStyle(
                                          color: Colors.green.shade900),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 10),
                          Row(
                            children: [
                              Expanded(
                                child: Container(
                                  color: Color.fromARGB(255, 255, 255, 255),
                                  child: TextField(
                                    obscureText: true,
                                    decoration: InputDecoration(
                                      hintText: "كلمة المرور",
                                      hintStyle: TextStyle(color: Colors.green),
                                      border: OutlineInputBorder(
                                        borderRadius: BorderRadius.circular(10),
                                        borderSide: BorderSide.none,
                                      ),
                                      contentPadding: EdgeInsets.zero,
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(width: 10),
                              Material(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(20),
                                    bottomRight: Radius.circular(20),
                                  ),
                                ),
                                child: Container(
                                  width: 50,
                                  height: 60,
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    border: Border.all(
                                        color: Colors.green.shade900,
                                        width: 1.5),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  child: Center(
                                    child: Text(
                                      "كلمة المرور",
                                      style: TextStyle(
                                          color: Colors.green.shade900),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 20),
                          ElevatedButton(
                            onPressed: () {},
                            child: Text("تسجيل الدخول"),
                            style: ElevatedButton.styleFrom(
                              foregroundColor:
                                  const Color.fromARGB(255, 246, 248, 246),
                              backgroundColor:
                                  const Color.fromARGB(255, 12, 158, 31),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(20),
                                  bottomRight: Radius.circular(20),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
