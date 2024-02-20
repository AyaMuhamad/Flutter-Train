import 'package:flutter/material.dart';
import 'package:flutter_application_1/auth/signup.dart';
import 'package:flutter_application_1/one.dart';
import 'package:flutter_application_1/auth/login.dart';
import 'package:dropdown_search/dropdown_search.dart';
import 'dart:convert' as convert;

import 'package:http/http.dart' as http;

// ctrl shift p

void main() {
  runApp(MyApp());
}

//alt shift f --> format
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false, home: pointsCounter());
  }
}

class pointsCounter extends StatefulWidget {
  const pointsCounter({super.key});

  @override
  State<pointsCounter> createState() => _pointsCounterState();
}

class _pointsCounterState extends State<pointsCounter> {
    int v = 0, h = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        title: Text("pointsCounter"),
      ),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                margin: EdgeInsets.all(20),
                child: Column(
                  children: [
                    Text(
                      "Team A",
                      style: TextStyle(fontSize: 35),
                    ),
                    Text(
                      "$v",
                      style: TextStyle(fontSize: 200),
                    ),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Colors.teal,
                          minimumSize: Size(140, 40),
                        ),
                        //  fixedSize: Size(140, 40)),
                        onPressed: () {
                          setState(() {});
                          v++;
                        },
                        child: Text(
                          "Add 1 point",
                          style: TextStyle(
                              fontSize: 20,
                              color: Colors.black,
                              fontWeight: FontWeight.bold),
                        )),
                    SizedBox(
                      height: 10,
                    ),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Colors.teal,
                          minimumSize: Size(140, 40),
                          // fixedSize: Size(140, 40)
                        ),
                        onPressed: () {
                          setState(() {
                            
                          });
                          v += 2;
                        },
                        child: Text(
                          "Add 2 point",
                          style: TextStyle(
                              fontSize: 20,
                              color: Colors.black,
                              fontWeight: FontWeight.bold),
                        )),
                    SizedBox(
                      height: 10,
                    ),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Colors.teal,
                          //  fixedSize: Size(140, 40)
                          minimumSize: Size(140, 40),
                        ),
                        onPressed: () {
                          setState(() {
                            
                          });
                          v += 3;
                        },
                        child: Text(
                          "Add 3 point",
                          style: TextStyle(
                              fontSize: 20, 
                              color: Colors.black,
                              fontWeight: FontWeight.bold),
                        )),
                  ],
                ),
              ),
              SizedBox(
                  height: 400,
                  child: VerticalDivider(
                    color: Colors.grey,
                    thickness: 2,
                  )),
              Container(
                margin: EdgeInsets.all(20),
                child: Column(
                  children: [
                    Text(
                      "Team B",
                      style: TextStyle(
                        fontSize: 35,
                      ),
                    ),
                    Text(
                      "$h",
                      style: TextStyle(fontSize: 200),
                    ),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Colors.teal,
                          minimumSize: Size(140, 40),
                        ),
                        //  fixedSize: Size(140, 40)),
                        onPressed: () {
                          setState(() {});
                          h++;
                          print (h);
                        },
                        child: Text(
                          "Add 1 point",
                          style: TextStyle(
                              fontSize: 20,
                              color: Colors.black,
                              fontWeight: FontWeight.bold),
                        )),
                    SizedBox(
                      height: 10,
                    ),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Colors.teal,
                          minimumSize: Size(140, 40),
                          // fixedSize: Size(140, 40)
                        ),
                        onPressed: () {
                          setState(() {});
                          h += 2;
                        },
                        child: Text(
                          "Add 2 point",
                          style: TextStyle(
                              fontSize: 20,
                              color: Colors.black,
                              fontWeight: FontWeight.bold),
                        )),
                    SizedBox(
                      height: 10,
                    ),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Colors.teal,
                          //  fixedSize: Size(140, 40)
                          minimumSize: Size(140, 40),
                        ),
                        onPressed: () {
                          setState(() {});
                          h += 3;
                        },
                        child: Text(
                          "Add 3 point",
                          style: TextStyle(
                              fontSize: 20,
                              color: Colors.black,
                              fontWeight: FontWeight.bold),
                        )),
                  ],
                ),
              ),
            ],
          ),
          Container(
            padding: EdgeInsets.only(top: 20),
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.blueGrey,
                  minimumSize: Size(150, 50),
                ),
                //  fixedSize: Size(140, 40)),
                onPressed: () {
                  setState(() {
                  v = h = 0;
                  });
                },
                child: Text(
                  "Reset",
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                )),
          ),
        ],
      ),
    );
  }
}

class BusniessCardApp extends StatelessWidget {
  const BusniessCardApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF2B475E),
      body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        const CircleAvatar(
          radius: 102,
          backgroundColor: Colors.white,
          child: CircleAvatar(
            radius: 100,
            backgroundImage: AssetImage('images/1.png'),
          ),
        ),
        const Text(
          "Aya Mohamed",
          style: TextStyle(
            fontSize: 30,
            color: Colors.white,
            fontFamily: 'Pacifico',
          ),
        ),
        const Text(
          "Flutter Developar",
          style: TextStyle(
              fontSize: 20,
              color: Color(0xFF6C8090),
              fontWeight: FontWeight.bold),
        ),
        const Divider(
          color: Color(0xFF6C8090),
          height: 13,
          thickness: 1,
          indent: 60,
          endIndent: 60,
        ),
        const Card(
          margin: EdgeInsets.symmetric(horizontal: 20),
          child: ListTile(
            leading: Icon(
              Icons.phone,
              size: 32,
              color: Color(0xFF2B475E),
            ),
            title: Text(
              "(+20) 123456789",
              style: TextStyle(fontSize: 18, color: Color(0xFF6C8090)),
            ),
          ),
        ),
        Container(
          height: 20,
        ),
        const Card(
          margin: EdgeInsets.symmetric(horizontal: 20),
          child: ListTile(
            leading: Icon(
              Icons.mail,
              size: 32,
              color: Color(0xFF2B475E),
            ),
            title: Text(
              "ayaMuhamed@gmail.com",
              style: TextStyle(fontSize: 18, color: Color(0xFF6C8090)),
            ),
          ),
        ),

        // Padding(
        //   padding: EdgeInsets.all(20),
        //   child: Container(
        //     decoration: BoxDecoration(
        //       borderRadius: BorderRadius.circular(10),
        //       color: Colors.white,
        //     ),
        //     padding: EdgeInsets.all(16),
        //     height: 65,
        //     child: Row(children: [
        //       Icon(
        //         Icons.phone,
        //         size: 32,
        //         color: Color(0xFF2B475E),
        //       ),
        //       Spacer(
        //         flex: 1,
        //       ),
        //       Text(
        //         "(+20) 1016062970",
        //         style: TextStyle(fontSize: 18, color: Color(0xFF6C8090)),
        //       ),
        //       Spacer(flex: 5),
        //     ]),
        //   ),
        // ),
        // Padding(
        //   padding: EdgeInsets.symmetric(horizontal: 20),
        //   child: Container(
        //     decoration: BoxDecoration(
        //       borderRadius: BorderRadius.circular(10),
        //       color: Colors.white,
        //     ),
        //     padding: EdgeInsets.all(16),
        //     height: 65,
        //     child: Row(children: [
        //       Icon(
        //         Icons.mail,
        //         size: 32,
        //         color: Color(0xFF2B475E),
        //       ),
        //       Spacer(
        //         flex: 1,
        //       ),
        //       Text(
        //         "AyaMuhaned@gmail.com",
        //         style: TextStyle(fontSize: 18, color: Color(0xFF6C8090)),
        //       ),
        //       Spacer(
        //         flex: 2,
        //       )
        //     ]),
        //   ),
        // )
      ]),
    );
  }
}

class cardApp extends StatelessWidget {
  const cardApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFFD2BCD5),
        appBar: AppBar(
          title: Text("Card birthday"),
        ),
        body: Center(
            child: Image(
          image: AssetImage(
            'images/1.png',
          ),
        )));
  }
}

class TESTAPI extends StatefulWidget {
  const TESTAPI({super.key});

  @override
  State<TESTAPI> createState() => _TESTAPIState();
}

class _TESTAPIState extends State<TESTAPI> {
  List posts = [];

  Future getpost() async {
    String url = "jsonplaceholder.typicode.com/posts";
    var response = await http.get(url as Uri);
    var resbody = convert.jsonDecode(response.body);
    posts.addAll(resbody);
    setState(() {
      print(posts);
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    getpost();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("API")),
      body: posts == null || posts.isEmpty
          ? Center(child: CircularProgressIndicator())
          : ListView.builder(
              itemCount: posts.length,
              itemBuilder: (context, i) {
                return Text("${posts[i]['title']}");
              }),
    );
  }
}

class Demo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      drawer: Drawer(),
      body: Text(""),
    );
  }
}

class Tryingpac extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      drawer: Drawer(),
      body: Column(children: [
        Row(
          children: [
            Expanded(
              child: DropdownSearch<int>(
                items: [1, 2, 3, 4, 5, 6, 7],
              ),
            ),
            Padding(padding: EdgeInsets.all(4)),
            Expanded(
              child: DropdownSearch<int>.multiSelection(
                clearButtonProps: ClearButtonProps(isVisible: true),
                items: [1, 2, 3, 4, 5, 6, 7],
              ),
            )
          ],
        ),
      ]),
    );
  }
}

class testLoginandsignup extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: loginpage(),
      theme: ThemeData(
          primaryColor: Colors.deepPurpleAccent,
          textTheme: TextTheme(
              headlineLarge: TextStyle(
            fontSize: 20,
            color: Colors.tealAccent,
          ))),
      routes: {
        "login": (context) => loginpage(),
        "signup": (context) => signuppage(),
      },
    );
  }
}

class srch extends StatefulWidget {
  const srch({super.key});

  @override
  State<srch> createState() => _srchState();
}

class _srchState extends State<srch> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: () {
                showSearch(context: context, delegate: DataSearch());
              },
              icon: Icon(Icons.search))
        ],
        title: Text("Page one"),
      ),
      body: Text(""),
    );
    ;
  }
}

class DataSearch extends SearchDelegate {
  @override
  List<Widget>? buildActions(BuildContext context) {
    return [IconButton(onPressed: () {}, icon: Icon(Icons.close))];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(onPressed: () {}, icon: Icon(Icons.arrow_back));
  }

  @override
  Widget buildResults(BuildContext context) {
    return null!;
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    return Center(child: Text("Content Search"));
  }
}

class ll extends StatefulWidget {
  const ll({super.key});

  @override
  State<ll> createState() => _llState();
}

class _llState extends State<ll> {
  ScrollController sc = new ScrollController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Hello"),
        ),
        body: ListView(
          controller: sc,
          children: [
            ...List.generate(
                20,
                (index) => Container(
                      margin: EdgeInsets.all(10),
                      height: 100,
                      width: double.infinity,
                      color: index.isEven ? Colors.purpleAccent : Colors.lime,
                      child: Text("# $index"),
                    )),
            TextButton(
                onPressed: () {
                  // sc.jumpTo(0.0);
                  sc.animateTo(0.0,
                      duration: Duration(seconds: 1), curve: Curves.easeIn);
                },
                child: Text("jumb"))
          ],
        ));
  }
}

class a extends StatefulWidget {
  const a({super.key});

  @override
  State<a> createState() => _aState();
}

class _aState extends State<a> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      drawer: Drawer(),
      body: Center(
          child: Column(
        children: [
          Container(
            color: Colors.amber,
            child: TextButton(
                onPressed: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (context) {
                    return n();
                  }));
                },
                child: Text("click")),
          )
        ],
      )),
    );
  }
}

class Testformtwo extends StatefulWidget {
  const Testformtwo({super.key});
  @override
  State<Testformtwo> createState() => _TestformtwoState();
}

class _TestformtwoState extends State<Testformtwo> {
  late String name;
  TextEditingController username = TextEditingController();
  GlobalKey<FormState> formState = new GlobalKey<FormState>();
  send() {
    var formdata = formState.currentState;
    if (formdata!.validate()) {
      formdata.save();
      print("valid");
    } else {
      print("Not Valid");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        drawer: Drawer(),
        body: Form(
          autovalidateMode: AutovalidateMode.always,
          key: formState,
          child: Column(children: [
            Container(
              padding: EdgeInsets.all(10),
              child: TextFormField(
                onSaved: (text) {
                  name = text!;
                },
                validator: (txt) {
                  if (txt!.length < 4) {
                    return "must be greater than 4 ";
                  } else {
                    return "ok , Good !";
                  }
                },
                decoration:
                    InputDecoration(icon: Icon(Icons.animation_outlined)),

                cursorHeight: 25,
                //keyboardType: TextInputType.number,
                maxLength: 20,
                //  obscureText: true, // when i write password
                // textInputAction: TextInputAction.search,
                controller: username,
              ),
            ),
            TextButton(
                onPressed: send,
                //
                //() {
                //   print(username);
                // },
                child: Text("Click")),
          ]),
        ));
  }
}

class TastForm extends StatefulWidget {
  const TastForm({super.key});

  @override
  State<TastForm> createState() => _TastFormState();
}

class _TastFormState extends State<TastForm> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        drawer: Drawer(),
        body: Column(
          children: [
            TextFormField(
              decoration: InputDecoration(
                  // hintText: "Enter your name",
                  prefixIcon: Icon(
                    Icons.face,
                    color: Colors.black,
                  ),
                  labelText: "your name :",
                  labelStyle: TextStyle(fontSize: 20, color: Colors.orange),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.orange, width: 2),
                  )),
            )
          ],
        ));
  }
}

class ayoya extends StatefulWidget {
  const ayoya({super.key});

  @override
  State<ayoya> createState() => _ayoyaState();
}

class _ayoyaState extends State<ayoya> {
  int indx = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Text(""),
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: indx,
          backgroundColor: Colors.brown,
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.black,
          selectedLabelStyle:
              TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          iconSize: 25,
          onTap: (index) {
            setState(() {
              indx = index;
            });
          },
          items: [
            BottomNavigationBarItem(
                label: "One", icon: Icon(Icons.ac_unit_sharp)),
            BottomNavigationBarItem(
                label: "Two", icon: Icon(Icons.account_balance_wallet_rounded)),
          ]),
    );
  }
}

class ee extends StatefulWidget {
  const ee({super.key});

  @override
  State<ee> createState() => _eeState();
}

class _eeState extends State<ee> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            bottom: TabBar(isScrollable: true, tabs: [
              Tab(
                child: Text("One"),
              ),
              Tab(
                child: Text("Two"),
              ),
              Tab(
                child: Text("Tree"),
              )
            ]),
          ),
          body: TabBarView(
            children: [
              Container(
                child: Text("Aya"),
                color: Colors.orange,
              ),
              Text("mohamed"),
              Text("Salah"),
            ],
          ),
        ));
  }
}

class AppBarr extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {},
        ),
        title: Text("Home Page"),
        actions: [
          IconButton(
            icon: Icon(Icons.alarm),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.exit_to_app),
            onPressed: () {},
          ),
        ],
        elevation: 10,
        backgroundColor: Colors.deepPurple,
        centerTitle: true,
      ),
      drawer: Drawer(
          child: Column(
        children: [
          UserAccountsDrawerHeader(
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.green,
                child: Text("Aya"),
              ),
              accountName: Text("Aya"),
              accountEmail: Text("aya@gmail.com")),
          ListTile(
            title: Text("Home"),
            leading: Icon(Icons.home),
            onTap: () {},
          ),
          ListTile(
            title: Text("Home"),
            leading: Icon(Icons.home),
            onTap: () {},
          ),
          ListTile(
            title: Text("Home"),
            leading: Icon(Icons.home),
            onTap: () {},
          ),
          ListTile(
            title: Text("Home"),
            leading: Icon(Icons.home),
            onTap: () {},
          )
        ],
      )),
      body: Text(""),
    );
  }
}

class ListtView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      drawer: Drawer(),
      body: Container(
          child: ListView.builder(
              itemCount: 8,
              itemBuilder: (context, i) {
                return Container(
                  child: Text("Container , $i"),
                  color: Colors.amber,
                  height: 200,
                  margin: EdgeInsets.only(top: 10),
                );
              })),
    );
  }
}

class Allertt extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      drawer: Drawer(),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            showDialog(
                context: context,
                builder: (context) {
                  return AlertDialog(
                    actions: [
                      FloatingActionButton(
                        onPressed: () {
                          print("OK");
                        },
                        child: Text("OK"),
                      ),
                      FloatingActionButton(
                        onPressed: () {
                          print("Cancle");
                          Navigator.of(context).pop();
                        },
                        child: Text("Cancle"),
                      ),
                    ],
                    titlePadding: EdgeInsets.all(10),
                    title: Text("Text"),
                    content: Text("this is a content"),
                  );
                });
          },
          child: Text("Show alert"),
        ),
      ),
    );
  }
}

class LISTTiTlle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      drawer: Drawer(),
      body: Container(
        child: ListTile(
          contentPadding: EdgeInsets.all(10),
          title: Text("welcoe to Flutter"),
          subtitle: Text("Aya"),
          leading: Icon(Icons.mobile_friendly),
          trailing: Text("Price 20\$"),
          onTap: () {
            print("done");
          },
          onLongPress: () {
            print("Long press");
          },
          tileColor: Colors.green,
        ),
      ),
    );
  }
}

class Test extends StatefulWidget {
  const Test({super.key});

  @override
  State<Test> createState() => _TestState();
}

class _TestState extends State<Test> {
  var test = "How are you";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        drawer: Drawer(),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("$test"),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    test = "welcome";
                  });
                  print("hi");
                },
                child: Text("change text"),
              )
            ],
          ),
        ));
  }
}

class RADIO extends StatefulWidget {
  const RADIO({super.key});

  @override
  State<RADIO> createState() => _RADIOState();
}

class _RADIOState extends State<RADIO> {
  String country = " ", su = " ", eg = " ";
  bool not = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        drawer: Drawer(),
        body: Container(
          padding: EdgeInsets.all(20),
          child: Column(children: [
            Text(
              ("choose a country"),
              style: TextStyle(fontSize: 20),
            ),
            Row(
              children: [
                Text("USA"),
                Radio(
                    value: "usa",
                    groupValue: country,
                    onChanged: (val) {
                      setState(() {
                        country = val!;
                      });
                    }),
              ],
            ),
            Row(
              children: [
                Text("su"),
                Radio(
                    value: "su",
                    groupValue: su,
                    onChanged: (val) {
                      setState(() {
                        su = val!;
                      });
                    }),
              ],
            ),
            Row(
              children: [
                Text("eg"),
                Radio(
                    value: "eg",
                    groupValue: eg,
                    onChanged: (val) {
                      setState(() {
                        eg = val!;
                      });
                    }),
              ],
            ),
            Switch(
                value: not,
                onChanged: (val) {
                  setState(() {
                    not = val!;
                  });
                })
          ]),
        ));
  }
}

class Checkboxx extends StatefulWidget {
  const Checkboxx({super.key});

  @override
  State<Checkboxx> createState() => _CheckboxxState();
}

class _CheckboxxState extends State<Checkboxx> {
  bool usa = false, Egypt = false, su = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      drawer: Drawer(),
      body: Container(
        padding: EdgeInsets.all(20),
        child: Column(children: [
          Center(
              child: Text(
            ("Choose country"),
            style: TextStyle(fontSize: 30),
          )),

          CheckboxListTile(
              value: su,
              title: Text("OK"),
              contentPadding: EdgeInsets.all(10),
              secondary: Icon(Icons.flag),
              isThreeLine: true,
              selected: su,
              subtitle: Text(
                ("done"),
                style: TextStyle(color: Colors.red),
              ),
              onChanged: ((value) {
                setState(() {
                  su = value!;
                });
              })),
          CheckboxListTile(
              value: usa,
              title: Text("OK"),
              contentPadding: EdgeInsets.all(10),
              secondary: Icon(Icons.flag),
              isThreeLine: true,
              selected: usa,
              subtitle: Text(
                ("done"),
                style: TextStyle(color: Colors.red),
              ),
              onChanged: ((value) {
                setState(() {
                  usa = value!;
                });
              })),
          CheckboxListTile(
              value: Egypt,
              title: Text("OK"),
              contentPadding: EdgeInsets.all(10),
              secondary: Icon(Icons.flag),
              isThreeLine: true,
              selected: Egypt,
              subtitle: Text(
                ("done"),
                style: TextStyle(color: Colors.red),
              ),
              onChanged: ((value) {
                setState(() {
                  Egypt = value!;
                });
              })),

          // Row(
          //   children: [
          //     Text("USA"),
          //     Checkbox(
          //         value: usa,
          //         onChanged: (v) {
          //           setState(() {
          //             usa = v!;
          //           });
          //         }),
          //   ],
          // ),
          // Row(
          //   children: [
          //     Text("Sadui"),
          //     Checkbox(
          //       checkColor: Colors.black,
          //       activeColor: Colors.cyanAccent,
          //         value: usa,
          //         onChanged: (v1) {
          //           setState(() {
          //             su = v1!;
          //           });
          //         }),
          //   ],
          // ),
          // Row(
          //   children: [
          //     Text("Egypt"),
          //     Checkbox(
          //         value: usa,
          //         onChanged: (v2) {
          //           setState(() {
          //             Egypt = v2!;
          //           });
          //         }),
          //   ],
          // ),
        ]),
      ),
    );
    ;
  }
}

class ICONN extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      drawer: Drawer(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.red,
        child: Icon(Icons.add),
      ),
      body: Text(""),
    );
  }
}

class FB extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      drawer: Drawer(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.red,
        child: Icon(Icons.add),
      ),
      body: ListView(
        children: [
          Container(
            child: Text(
              ("container"),
            ),
            color: Colors.cyan,
            height: 150,
            margin: EdgeInsets.only(top: 20, bottom: 20),
          ),
          Container(
            child: Text("container"),
            color: Colors.cyan,
            height: 150,
            margin: EdgeInsets.only(top: 20, bottom: 20),
          ),
          Container(
            child: Text("container"),
            color: Colors.cyan,
            height: 150,
            margin: EdgeInsets.only(top: 20, bottom: 20),
          ),
          Container(
            child: Text("container"),
            color: Colors.cyan,
            height: 150,
            margin: EdgeInsets.only(top: 20, bottom: 20),
          ),
          Container(
            child: Text("container"),
            color: Colors.cyan,
            height: 150,
            margin: EdgeInsets.only(top: 20, bottom: 20),
          ),
          Container(
            child: Text("container"),
            color: Colors.cyan,
            height: 150,
            margin: EdgeInsets.only(top: 20, bottom: 20),
          ),
          Container(
            child: Text("container"),
            color: Colors.cyan,
            height: 150,
            margin: EdgeInsets.only(top: 20, bottom: 20),
          ),
        ],
      ),
    );
  }
}

class ICONBUTTON extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      drawer: Drawer(),
      body: Center(
        child: IconButton(
          color: Colors.cyan,
          onPressed: () {
            print("Person");
          },
          icon: Icon(Icons.person),
        ),
      ),
    );
  }
}

class BottoninflutterMatrial extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      drawer: Drawer(),
      body: Center(
        child: MaterialButton(
          shape: Border.all(color: Colors.black, width: 3),
          onPressed: () {},
          child: Text("Aya"),
          color: Colors.amber,
          elevation: 10,
          splashColor: Colors.blueGrey,
          height: 50,
          minWidth: 90,
          textColor: Colors.white,
        ),
      ),
    );
  }
}

class BottoninflutterEVicon extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      drawer: Drawer(),
      body: Center(
        child: ElevatedButton.icon(
          icon: Icon(Icons.ac_unit_rounded),
          style: ElevatedButton.styleFrom(
            padding: EdgeInsets.all(20),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            primary: Colors.green,
            textStyle: const TextStyle(
                color: Colors.white, fontSize: 20, fontStyle: FontStyle.normal),
          ),
          onPressed: () {},
          label: Text("Aya"),
        ),
      ),
    );
  }
}

class Bottoninflutter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      drawer: Drawer(),
      body: Center(
        child: ElevatedButton(
          child: Text('Elevated Button'),
          style: ElevatedButton.styleFrom(
            padding: EdgeInsets.all(20),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            primary: Colors.green,
            textStyle: const TextStyle(
                color: Colors.white, fontSize: 20, fontStyle: FontStyle.normal),
          ),
          onPressed: () {},
        ),
      ),
    );
  }
}

class SIZEDBOX extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      drawer: Drawer(),
      body: SizedBox(
        child: Container(color: Colors.black12, child: Text("Aya")),
      ),
    );
  }
}

class CENTER extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        drawer: Drawer(),
        body: Container(
          child: Center(
            child: Text(('Aya'), style: TextStyle(fontSize: 40)),
          ),
          width: 100,
          height: 100,
          color: Colors.amberAccent,
        )
        //Center(child: Text(('Aya'), style: TextStyle(fontSize: 40)),) it will take  the width and hight of the screen
        );
  }
}

class SCROLLHORIZONTAL extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        drawer: Drawer(),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.all(10),
                color: Colors.teal,
                width: double.infinity,
                height: 100,
              ),
              Container(
                margin: EdgeInsets.all(10),
                color: Colors.teal,
                width: double.infinity,
                height: 100,
              ),
              Container(
                margin: EdgeInsets.all(10),
                color: Colors.teal,
                width: double.infinity,
                height: 100,
              ),
              Container(
                margin: EdgeInsets.all(10),
                color: Colors.teal,
                width: double.infinity, // or 90
                height: 100,
              ),
              Container(
                margin: EdgeInsets.all(10),
                color: Colors.teal,
                width: double.infinity,
                height: 100,
              ),
              Container(
                margin: EdgeInsets.all(10),
                color: Colors.teal,
                width: double.infinity,
                height: 100,
              ),
              Container(
                margin: EdgeInsets.all(10),
                color: Colors.teal,
                width: double.infinity,
                height: 100,
              ),
            ],
          ),

          /*
          
          Row(
            children: [
              Container(
                margin: EdgeInsets.all(10),
                color: Colors.teal,
                width: 90,
                height: 100,
              ),
              Container(
                margin: EdgeInsets.all(10),
                color: Colors.teal,
                width: 90,
                height: 100,
              ),
              Container(
                margin: EdgeInsets.all(10),
                color: Colors.teal,
                width: 90,
                height: 100,
              ),
              Container(
                margin: EdgeInsets.all(10),
                color: Colors.teal,
                width: 90,
                height: 100,
              ),
              Container(
                margin: EdgeInsets.all(10),
                color: Colors.teal,
                width: 90,
                height: 100,
              ),
               Container(
                margin: EdgeInsets.all(10),
                color: Colors.teal,
                width: 90,
                height: 100,
              ),
              Container(
                margin: EdgeInsets.all(10),
                color: Colors.teal,
                width: 90,
                height: 100,
              ),
            ],
          ),
          
           */
        ));
  }
}

class WRAPP extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        drawer: Drawer(),
        body: Wrap(
          children: [
            Container(
              margin: EdgeInsets.all(10),
              color: Colors.teal,
              width: 90,
              height: 100,
            ),
            Container(
              margin: EdgeInsets.all(10),
              color: Colors.teal,
              width: 90,
              height: 100,
            ),
            Container(
              margin: EdgeInsets.all(10),
              color: Colors.teal,
              width: 90,
              height: 100,
            ),
            Container(
              margin: EdgeInsets.all(10),
              color: Colors.teal,
              width: 90,
              height: 100,
            ),
          ],
        ));
  }
}

class INDEXEDSTACKK extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        drawer: Drawer(),
        body: Container(
          padding: EdgeInsets.symmetric(horizontal: 20),
          width: 400,
          height: 400,
          child: IndexedStack(
            index: 0,
            children: [
              Container(
                color: Colors.red,
                width: 500,
                height: 500,
              ),
              Container(
                color: Colors.blue,
                width: 300,
                height: 300,
                child: Text("widget 2"),
              ),
              Container(
                margin: EdgeInsets.only(top: 50),
                color: Colors.green,
                width: 200,
                height: 200,
                child: Text("widget 3"),
              )
            ],
          ),
        ));
  }
}

class Ex1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      drawer: Drawer(),
      body: Container(
        padding: EdgeInsets.only(left: 20, right: 20),
        child: Container(
          child: Column(children: [
            Container(
              padding: EdgeInsets.symmetric(vertical: 10),
              margin: EdgeInsets.only(top: 100),
              decoration: BoxDecoration(
                  color: Colors.blue, border: Border.all(width: 2)),
              alignment: Alignment.center,
              child: Text(("First Flutter Example"),
                  style: TextStyle(
                      fontSize: 25,
                      color: Colors.white,
                      fontWeight: FontWeight.bold)),
            ),
            Container(
              margin: EdgeInsets.only(top: 30),
              child: Text(
                ("Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type"),
                style: TextStyle(fontSize: 18, height: 1.5),
                textAlign: TextAlign.center,
              ),
            ),
            Container(
              padding: EdgeInsets.all(30),
              margin: EdgeInsets.only(top: 20),
              decoration: BoxDecoration(
                  border: Border.all(width: 2),
                  borderRadius: BorderRadius.all(Radius.circular(5))),
              child: Column(
                children: [
                  Row(
                    children: [
                      Icon(
                        Icons.star,
                        color: Colors.yellowAccent[700],
                      ),
                      Icon(
                        Icons.star,
                        color: Colors.yellowAccent[700],
                      ),
                      Icon(
                        Icons.star,
                        color: Colors.yellowAccent[700],
                      ),
                      Icon(Icons.star),
                      Icon(Icons.star),
                      Container(
                        padding: EdgeInsets.only(left: 100),
                        child: Row(
                          children: [
                            Text(
                              "17 review",
                              style: TextStyle(fontSize: 18),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            Icon(
                              Icons.restaurant,
                              color: Colors.green,
                              size: 40,
                            ),
                            Container(
                                padding: EdgeInsets.all(10),
                                child: Text("feed")),
                            Text("2 - 4")
                          ],
                        ),
                        Column(
                          children: [
                            Icon(
                              Icons.category,
                              color: Colors.green,
                              size: 40,
                            ),
                            Container(
                                padding: EdgeInsets.all(10),
                                child: Text("feed")),
                            Text("2 - 4")
                          ],
                        ),
                        Column(
                          children: [
                            Icon(
                              Icons.emoji_food_beverage_sharp,
                              color: Colors.green,
                              size: 40,
                            ),
                            Container(
                                padding: EdgeInsets.all(10),
                                child: Text("feed")),
                            Text("2 - 4")
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
            )
          ]),
        ),
      ),
    );
  }
}

class elROWdivider extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        drawer: Drawer(),
        body: Container(
          height: 100,
          child: Row(
            children: [
              Text(
                "aya mohamed",
                style: TextStyle(fontSize: 30),
              ),
              VerticalDivider(color: Colors.black, thickness: 4),
              Text(
                "aya mohamed",
                style: TextStyle(fontSize: 30),
              )
            ],
          ),
        ));
  }
}

class elCOldivider extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        drawer: Drawer(),
        body: Column(
          children: [
            Text(
              "aya mohamed salah",
              style: TextStyle(fontSize: 30),
            ),
            Divider(color: Colors.black, height: 30, thickness: 4),
            Text(
              "aya mohamed salah",
              style: TextStyle(fontSize: 30),
            )
          ],
        ));
  }
}

class ICONS extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      drawer: Drawer(),
      body: Icon(
        Icons.adb_rounded,
        size: 50,
        color: Colors.brown[600],
      ),
    );
  }
}

class eXpanDedcol extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      drawer: Drawer(),
      body: Column(children: [
        Expanded(
            flex: 1,
            child: Container(
              child: Text(
                "container one",
                style: TextStyle(fontSize: 40),
              ),
              color: Colors.red,
              width: double.infinity,
            )),
        Expanded(
            flex: 1,
            child: Container(
              child: Text(
                "container Two",
                style: TextStyle(fontSize: 40),
              ),
              color: Colors.blue,
              width: double.infinity,
            )),
        Expanded(
            flex: 1,
            child: Container(
              child: Text(
                "container Three",
                style: TextStyle(fontSize: 40),
              ),
              color: Colors.green,
              width: double.infinity,
            )),
      ]),
    );
  }
}

class eXpanDed extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      drawer: Drawer(),
      body: Row(children: [
        Expanded(
            flex: 2,
            child: Container(
              child: Text("container one"),
              color: Colors.red,
            )),
        Expanded(
            flex: 1,
            child: Container(
              child: Text("container Two"),
              color: Colors.blue,
            )),
        Expanded(
            flex: 1,
            child: Container(
              child: Text("container Three"),
              color: Colors.green,
            )),
      ]),
    );
  }
}

class Aya extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        drawer: Drawer(),
        body: Container(
            width: 400,
            height: 400,
            color: Colors.brown,
            child: Stack(
              children: [
                Positioned(
                    child: Container(
                  color: Colors.red,
                  child: Text("Position1"),
                ))
              ],
            )));
  }
}

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        drawer: Drawer(),
        body: Container(
          width: 400,
          height: 400,
          color: Colors.brown,
          child: Stack(
            alignment: Alignment.center,
            children: [
              Container(
                color: Colors.red,
                width: 200,
                height: 200,
              ),
              Container(
                color: Colors.blue,
                width: 100,
                height: 100,
                child: Text("widget 2"),
              ),
              Container(
                margin: EdgeInsets.only(top: 50),
                color: Colors.green,
                width: 50,
                height: 50,
                child: Text("widget 3"),
              )
            ],
          ),
        ));
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: 400,
        height: 400,
        color: Colors.brown[400],
        child: Row(children: [
          Text(
            'Aya  ',
            style: TextStyle(
              fontSize: 40,
              fontStyle: FontStyle.italic,
            ),
          ),
          Container(
            color: Colors.cyanAccent,
            child: Text('Alaa ', style: TextStyle(fontSize: 80)),
          )
        ]),
      ),
    );
  }
}

class hh extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Container(
          width: 800,
          height: 800,
          color: Colors.red,
          child: Column(
            //  mainAxisSize: MainAxisSize.min,
            //mainAxisAlignment: MainAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'Aya ',
                style: TextStyle(fontSize: 40),
              ),
              Text("alaa", style: TextStyle(fontSize: 40))
            ],
          ),
        ));
  }
}

class h extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Card(
            child: Text(
          'How Are you',
          style: TextStyle(fontSize: 40),
        )));
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      drawer: Drawer(),
      body: Container(
        width: 200,
        height: 100,
        //color: Colors.green,
        margin: EdgeInsets.only(left: 100, top: 100),
        // padding: EdgeInsets.only(top : 20),
        padding: EdgeInsets.symmetric(vertical: 20, horizontal: 40),
        alignment: Alignment.center,
        // width: double.infinity,
        decoration: BoxDecoration(
            color: Colors.red,

            //  border: Border.all(width: 20 ,color:Colors.purple),
            //borderRadius: BorderRadius.circular(10),
            //border: Border.all(width: 2 , color: Colors.cyanAccent)
            boxShadow: [
              BoxShadow(
                color: Colors.black,
                spreadRadius: 1,
                blurRadius: 10,
              )
            ]),
        child: Text("Aya",
            style: TextStyle(
                fontSize: 30.0,
                color: Colors.blue,
                fontWeight: FontWeight.bold,
                shadows: [
                  Shadow(
                      color: Colors.black,
                      blurRadius: 10.0,
                      offset: Offset(2.0, 3.0))
                ])),
      ),
    );
  }
}
