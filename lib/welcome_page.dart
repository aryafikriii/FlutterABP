part of 'pages.dart';

class wellcomepage extends StatelessWidget {
  const wellcomepage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 229, 71, 60),
      body: SafeArea(
        bottom: false,
        child: ListView(
          padding: EdgeInsets.symmetric(horizontal: defaultmargin),
          children: [
            //Image.asset('assests/images/logo.png',
            // height: 333, fit: BoxFit.fill),
            const SizedBox(
              height: 15,
            ),
            const Text(
              "Welcome",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 50),
            ),

            const SizedBox(
              height: 15,
            ),

            const Text(
              "You are in MechanicMaster's Area",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 20),
            ),
            const Text(
              "Let's Fix Your vehicles Easier",
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Color.fromARGB(255, 243, 197, 194)),
            ),
            const SizedBox(
              height: 15,
            ),
            Container(
              height: 60,
              width: MediaQuery.of(context).size.width - 2 + defaultmargin,
              child: ElevatedButton(
                onPressed: () {
                  showModalBottomSheet(
                      isScrollControlled: true,
                      context: context,
                      builder: (context) {
                        return StatefulBuilder(
                          builder:
                              (BuildContext context, StateSetter setState) {
                            return Wrap(
                              children: [
                                Container(
                                  margin: EdgeInsets.symmetric(
                                      horizontal: defaultmargin),
                                  color: Colors.transparent,
                                  child: Container(
                                      decoration: BoxDecoration(
                                          color: secondaryColor,
                                          borderRadius: BorderRadius.only(
                                              topRight: Radius.circular(40),
                                              topLeft: Radius.circular(40))),
                                      child: Column(
                                        children: [
                                          SizedBox(
                                            height: 25,
                                          ),
                                          Row(
                                            children: [
                                              Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    "Hello.....",
                                                    style: TextStyle(
                                                        fontSize: 20,
                                                        color: Colors.black),
                                                  ),
                                                  Text(
                                                    "Register Your Account",
                                                    style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        fontSize: 30,
                                                        color: Colors.black),
                                                  ),
                                                  SizedBox(
                                                    height: 25,
                                                  ),
                                                  Center(
                                                    child: Column(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                      children: [
                                                        Container(
                                                          width: 300.0,
                                                          decoration:
                                                              BoxDecoration(
                                                            color:
                                                                Color.fromARGB(
                                                                    255,
                                                                    219,
                                                                    227,
                                                                    231),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        10.0),
                                                          ),
                                                          child: Padding(
                                                            padding:
                                                                EdgeInsets.all(
                                                                    4.0),
                                                            child: TextField(
                                                              keyboardType:
                                                                  TextInputType
                                                                      .emailAddress,
                                                              decoration:
                                                                  InputDecoration(
                                                                labelText:
                                                                    'Email',
                                                                hintText:
                                                                    'Enter your email',
                                                                contentPadding:
                                                                    EdgeInsets.symmetric(
                                                                        vertical:
                                                                            4.0),
                                                                border:
                                                                    InputBorder
                                                                        .none,
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                        SizedBox(height: 16.0),
                                                        Container(
                                                          width: 300.0,
                                                          decoration:
                                                              BoxDecoration(
                                                            color: const Color
                                                                    .fromARGB(
                                                                255,
                                                                219,
                                                                227,
                                                                231),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        10.0),
                                                          ),
                                                          child: const Padding(
                                                            padding:
                                                                EdgeInsets.all(
                                                                    4.0),
                                                            child: TextField(
                                                              keyboardType:
                                                                  TextInputType
                                                                      .phone,
                                                              decoration:
                                                                  InputDecoration(
                                                                labelText:
                                                                    'Phone',
                                                                hintText:
                                                                    'Enter your phone number',
                                                                contentPadding:
                                                                    EdgeInsets.symmetric(
                                                                        vertical:
                                                                            4.0),
                                                                border:
                                                                    InputBorder
                                                                        .none,
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                        const SizedBox(
                                                            height: 16.0),
                                                        Container(
                                                          width: 300.0,
                                                          decoration:
                                                              BoxDecoration(
                                                            color: const Color
                                                                    .fromARGB(
                                                                255,
                                                                219,
                                                                227,
                                                                231),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        10.0),
                                                          ),
                                                          child: const Padding(
                                                            padding:
                                                                EdgeInsets.all(
                                                                    4.0),
                                                            child: TextField(
                                                              obscureText: true,
                                                              decoration:
                                                                  InputDecoration(
                                                                labelText:
                                                                    'Password',
                                                                hintText:
                                                                    'Enter your password',
                                                                contentPadding:
                                                                    EdgeInsets.symmetric(
                                                                        vertical:
                                                                            4.0),
                                                                border:
                                                                    InputBorder
                                                                        .none,
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                        const SizedBox(
                                                            height: 16.0),
                                                        Container(
                                                          width: 300.0,
                                                          decoration:
                                                              BoxDecoration(
                                                            color: const Color
                                                                    .fromARGB(
                                                                255,
                                                                219,
                                                                227,
                                                                231),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        10.0),
                                                          ),
                                                          child: const Padding(
                                                            padding:
                                                                EdgeInsets.all(
                                                                    4.0),
                                                            child: TextField(
                                                              obscureText: true,
                                                              decoration:
                                                                  InputDecoration(
                                                                labelText:
                                                                    'Confirm Password',
                                                                hintText:
                                                                    'Re-enter your password',
                                                                contentPadding:
                                                                    EdgeInsets.symmetric(
                                                                        vertical:
                                                                            4.0),
                                                                border:
                                                                    InputBorder
                                                                        .none,
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                        const SizedBox(
                                                            height: 16.0),
                                                        ElevatedButton(
                                                          onPressed: () {
                                                            Navigator.of(
                                                                    context)
                                                                .push(
                                                              MaterialPageRoute(
                                                                builder:
                                                                    (context) {
                                                                  return const HomePage();
                                                                },
                                                              ),
                                                            );
                                                          },
                                                          child: Text(
                                                            'Register',
                                                            style: TextStyle(
                                                                color: Colors
                                                                    .white),
                                                          ),
                                                          style: ButtonStyle(
                                                              backgroundColor:
                                                                  MaterialStateProperty.all<
                                                                          Color>(
                                                                      Color.fromARGB(
                                                                          255,
                                                                          177,
                                                                          63,
                                                                          54))),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              /*Image.asset(
                                                'assets/images/logo.png',
                                                height: 300,
                                                width: 300,
                                              )*/
                                            ],
                                          )
                                        ],
                                      )),
                                )
                              ],
                            );
                          },
                        );
                      });
                },
                child: Text(
                  "Create Account",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                      color: Colors.white),
                ),
                style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromARGB(0, 230, 159, 159),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15))),
              ),
            ),

            SizedBox(
              height: 15,
            ),

            Container(
              height: 60,
              width: MediaQuery.of(context).size.width - 2 + defaultmargin,
              child: ElevatedButton(
                onPressed: () {
                  showModalBottomSheet(
                      isScrollControlled: true,
                      context: context,
                      builder: (context) {
                        return StatefulBuilder(
                          builder:
                              (BuildContext context, StateSetter setState) {
                            return Wrap(
                              children: [
                                Container(
                                  margin: EdgeInsets.symmetric(
                                      horizontal: defaultmargin),
                                  color: Colors.transparent,
                                  child: Container(
                                      decoration: BoxDecoration(
                                          color: secondaryColor,
                                          borderRadius: BorderRadius.only(
                                              topRight: Radius.circular(40),
                                              topLeft: Radius.circular(40))),
                                      child: Column(
                                        children: [
                                          SizedBox(
                                            height: 25,
                                          ),
                                          Row(
                                            children: [
                                              Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    "Hello.....",
                                                    style: TextStyle(
                                                        fontSize: 20,
                                                        color: Colors.black),
                                                  ),
                                                  Text(
                                                    "Welcome Back",
                                                    style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        fontSize: 30,
                                                        color: Colors.black),
                                                  ),
                                                  SizedBox(
                                                    height: 25,
                                                  ),
                                                  Center(
                                                    child: Column(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                      children: [
                                                        Container(
                                                          width: 300.0,
                                                          decoration:
                                                              BoxDecoration(
                                                            color:
                                                                Color.fromARGB(
                                                                    255,
                                                                    219,
                                                                    227,
                                                                    231),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        10.0),
                                                          ),
                                                          child: Padding(
                                                            padding:
                                                                EdgeInsets.all(
                                                                    4.0),
                                                            child: TextField(
                                                              keyboardType:
                                                                  TextInputType
                                                                      .emailAddress,
                                                              decoration:
                                                                  InputDecoration(
                                                                labelText:
                                                                    'Email',
                                                                hintText:
                                                                    'Enter your email',
                                                                contentPadding:
                                                                    EdgeInsets.symmetric(
                                                                        vertical:
                                                                            4.0),
                                                                border:
                                                                    InputBorder
                                                                        .none,
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                        SizedBox(height: 16.0),
                                                        Container(
                                                          width: 300.0,
                                                          decoration:
                                                              BoxDecoration(
                                                            color:
                                                                Color.fromARGB(
                                                                    255,
                                                                    219,
                                                                    227,
                                                                    231),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        10.0),
                                                          ),
                                                          child: Padding(
                                                            padding:
                                                                EdgeInsets.all(
                                                                    4.0),
                                                            child: TextField(
                                                              obscureText: true,
                                                              decoration:
                                                                  InputDecoration(
                                                                labelText:
                                                                    'Password',
                                                                hintText:
                                                                    'Enter your password',
                                                                contentPadding:
                                                                    EdgeInsets.symmetric(
                                                                        vertical:
                                                                            4.0),
                                                                border:
                                                                    InputBorder
                                                                        .none,
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                        SizedBox(height: 16.0),
                                                        ElevatedButton(
                                                          onPressed: () {
                                                            Navigator.of(
                                                                    context)
                                                                .push(
                                                              MaterialPageRoute(
                                                                builder:
                                                                    (context) {
                                                                  return const HomePage();
                                                                },
                                                              ),
                                                            );
                                                          },
                                                          child: Text(
                                                            'Login',
                                                            style: TextStyle(
                                                                color: Colors
                                                                    .white),
                                                          ),
                                                          style: ButtonStyle(
                                                              backgroundColor:
                                                                  MaterialStateProperty.all<
                                                                          Color>(
                                                                      Color.fromARGB(
                                                                          255,
                                                                          177,
                                                                          63,
                                                                          54))),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              /*Image.asset(
                                                'assets/images/logo.png',
                                                height: 300,
                                                width: 300,
                                              )*/
                                            ],
                                          )
                                        ],
                                      )),
                                )
                              ],
                            );
                          },
                        );
                      });
                },
                child: Text(
                  "Log in",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                      color: Colors.white),
                ),
                style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xD42A2A),
                    shape: RoundedRectangleBorder(
                        side: BorderSide(color: Color(0xD42A2A), width: 3),
                        borderRadius: BorderRadius.circular(15))),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
