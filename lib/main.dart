import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => const FirstScreen(),
        '/second': (context) => const SecondScreen(),
        '/add_addiction': (context) => const AddAddictionForm(),
      },
    );
  }
}
class FirstScreen extends StatefulWidget {
  const FirstScreen({Key? key}) : super(key: key);

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cigarettes'),
        backgroundColor: const Color(0xFF575A89),
        iconTheme: const IconThemeData(color: Color(0xFF75E6FF)),
      ),
      body: Column(
        children: [
          Container(
            color: const Color(0xFF575A89),
            child: const ButtonBar(
              alignment: MainAxisAlignment.start,
              children: [
                ElevatedButton(
                    onPressed: null,
                    child: Text(
                        'Summary',
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey
                      ),
                    ),
                ),
                ElevatedButton(
                  onPressed: null,
                  child: Text(
                    'Savings',
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey
                    ),
                  ),
                ),
                ElevatedButton(
                  onPressed: null,
                  child: Text(
                    'Calendar',
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: Colors.white
                    ),
                  ),
                ),
                ElevatedButton(
                  onPressed: null,
                  child: Text(
                    'Settings',
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: 350,
            color: Colors.white,
            child: TableCalendar(
                firstDay: DateTime.utc(2010, 10, 16),
                lastDay: DateTime.utc(2030, 3, 14),
                focusedDay: DateTime.now(),
            ),
          ),
          Container(
            height: 30,
            color: const Color(0xFF575A89),
          ),
          Container(
            height: 140,
            color: const Color(0xFFF2F4FF),
            child: Column(
              children: [
                const Padding(
                    padding: EdgeInsets.only(right: 290, top: 16, bottom: 14),
                    child: Text(
                      'Milestone',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16
                      ),
                    )
                ),
                Padding(
                    padding: const EdgeInsets.only(left: 0),
                    child: Container(
                      height: 90,
                      width: 370,
                      color: Colors.white,
                      child: Column(
                        children: [
                          const Text(
                              'Save 3000 this month',
                              style: TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w400,
                              ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Container(
                            height: 10,
                            width: 300,
                            color: Colors.grey,
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          const Text('You need 2000 more to complete this milestone.')
                        ],
                      ),
                    ),
                ),
              ],
            ),
          ),
          Container(
            height: 78,
            color: Colors.white,
            child: const ButtonBar(
              alignment: MainAxisAlignment.start,
              children: [
                TextButton(
                    onPressed: null,
                    child: Text('B1'),
                ),
                TextButton(
                  onPressed: null,
                  child: Text('B2'),
                ),
                TextButton(
                  onPressed: null,
                  child: Text('B3'),
                ),
                TextButton(
                  onPressed: null,
                  child: Text('B4'),
                ),
                TextButton(
                  onPressed: null,
                  child: Text('B5'),
                )
              ],
            ),
          )
        ],
      ),
      drawer: Drawer(
        backgroundColor: const Color(0xFF575A89),
        child: ListView(
          children: <Widget>[
            Container(
            height: 100,
            margin: const EdgeInsets.only(left: 20, right: 20, top: 20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              color: Colors.white,
            ),
            alignment: Alignment.bottomCenter,
            child: Column(
              children: [
                const Padding(
                  padding: EdgeInsets.only(right: 150, top: 16, bottom: 14),
                  child: Text(
                      'Cigarettes',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16
                    ),
                  )
                ),
                Container(
                  height: 50,
                  width: MediaQuery.of(context).size.width,
                  decoration: const BoxDecoration(
                    color: Color(0xFFF4DBDB),
                    borderRadius: BorderRadius.only(bottomLeft: Radius.circular(10), bottomRight: Radius.circular(10)),
                  ),
                  child: Padding(
                      padding: const EdgeInsets.only(left: 20, top: 16),
                      child: Text(
                        'Sober for                                    3 days',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.grey.shade600,
                        ),
                      )
                  ),
                ),
              ],
            ),
          ),
            Container(
              height: 100,
              margin: const EdgeInsets.only(left: 20, right: 20, top: 20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
              ),
                child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 50,top: 5),
                        child: Column(
                          children: [
                            IconButton(
                                onPressed: () {
                                  Navigator.pushNamed(context, '/add_addiction');
                                },
                                icon: const Icon(
                                  Icons.add,
                                  size: 36,
                                  color: Colors.white,
                                )
                            ),
                            const Text(
                              'Add new',
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            )
                          ],
                        )
                      ),
                      Padding(
                      padding: const EdgeInsets.only(left: 40,top: 6),
                      child: Column(
                              children: const [
                                IconButton(
                                    onPressed: null,
                                    icon: Icon(
                                      Icons.settings,
                                      size: 36,
                                      color: Colors.white,
                                    )
                                ),
                                Text(
                                    'Edit List',
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),
                                )
                              ],
                            ),
                      )
                    ],
                )
            ),
          ],
        ),
      ),
    );
  }
}

class AddAddictionForm extends StatefulWidget {
  const AddAddictionForm({Key? key}) : super(key: key);

  @override
  State<AddAddictionForm> createState() => _AddAddictionFormState();
}

class _AddAddictionFormState extends State<AddAddictionForm> {

  String _selectedValue = 'Cigarettes';
  List<String> listOfValue = ['Cigarettes', 'Weed', 'Marjuana', 'Alcohol', 'Heroin'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(
            height: 100,
          ),
          const Text('Select on of the following addictions'),
          const SizedBox(
            height: 50,
          ),
          Padding(
              padding: const EdgeInsets.only(left: 60, right: 60),
              child: DropdownButtonFormField(
                value: _selectedValue,
                hint: const Text(
                  'choose one',
                ),
                isExpanded: true,
                onChanged: (value) {
                  setState(() {
                    _selectedValue = value as String;
                  });
                },
                onSaved: (value) {
                  setState(() {
                    _selectedValue = value as String;
                  });
                },
                items: listOfValue
                    .map((String val) {
                  return DropdownMenuItem(
                    value: val,
                    child: Text(
                      val,
                    ),
                  );
                }).toList(),
              ),
          )
        ],
      ),
    );
  }
}



class SecondScreen extends StatelessWidget {
  const SecondScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Second Screen'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: (){
            Navigator.pop(context);
          },
          child: const Text('Go back'),
        ),
      ),
    );
  }
}

