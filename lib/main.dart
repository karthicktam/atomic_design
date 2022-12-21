import 'package:atomic_design/atoms/Layouts.dart';
import 'package:atomic_design/atoms/alert_atom.dart';
import 'package:atomic_design/atoms/avatar_atom.dart';
import 'package:atomic_design/atoms/button_atom.dart';
import 'package:atomic_design/atoms/checkbox_atom.dart';
import 'package:atomic_design/atoms/datepicker_atom.dart';
import 'package:atomic_design/atoms/link_atom.dart';
import 'package:atomic_design/atoms/radiobutton_atom.dart';
import 'package:atomic_design/atoms/range_slider_atom.dart';
import 'package:atomic_design/atoms/rich_text_atom.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: const DefaultTabController(
        length: 3,
        child: MyHomePage(title: 'Atomic Design'),
      ),
      routes: {
        WelcomePage.routeName: (context) => const WelcomePage(),
        Layouts.routeName: (context) => const Layouts(),
        RichTextAtom.routeName: (context) => const RichTextAtom(),
        AvatarAtom.routeName: (context) => const AvatarAtom(),
        DatePickerAtom.routeName: (context) => const DatePickerAtom(),
        Alert.routeName: (context) => const Alert(),
        ButtonAtom.routeName: (context) => const ButtonAtom(),
        CheckboxAtom.routeName: (context) => const CheckboxAtom(),
        RadioButtonAtom.routeName: (context) => const RadioButtonAtom(),
        LinkAtom.routeName: (context) => const LinkAtom(
              title: 'Hello',
            ),
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Widget _currentWidget = const WelcomePage(
    key: ValueKey('welcome'),
  );

  var route;

  @override
  Widget build(BuildContext context) {
    void _contentHandler(String route) {
      var selectedWidget;
      switch (route) {
        case WelcomePage.routeName:
          selectedWidget = const WelcomePage(
            key: ValueKey('welcome'),
          );
          break;
        case Layouts.routeName:
          selectedWidget = const Layouts();
          break;
        case RichTextAtom.routeName:
          selectedWidget = const RichTextAtom();
          break;
        case RangeSliderAtom.routeName:
          selectedWidget = const RangeSliderAtom();
          break;
        case AvatarAtom.routeName:
          selectedWidget = const AvatarAtom();
          break;
        case DatePickerAtom.routeName:
          selectedWidget = const DatePickerAtom();
          break;
        case Alert.routeName:
          selectedWidget = const Alert();
          break;
        case ButtonAtom.routeName:
          selectedWidget = const ButtonAtom();
          break;
        case CheckboxAtom.routeName:
          selectedWidget = const CheckboxAtom();
          break;
        case RadioButtonAtom.routeName:
          selectedWidget = const RadioButtonAtom();
          break;
        case LinkAtom.routeName:
          selectedWidget = LinkAtom(
            title: 'Hello',
          );
          break;
        default:
          selectedWidget = const WelcomePage(
            key: ValueKey('welcome'),
          );
      }
      setState(() {
        _currentWidget = selectedWidget;
      });
    }

    print(route);

    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
        bottom: const TabBar(tabs: [
          Tab(icon: Icon(Icons.home)),
          Tab(icon: Icon(Icons.directions_transit)),
          Tab(icon: Icon(Icons.directions_bike)),
        ]),
      ),
      drawer: Drawer(
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: [
            const SizedBox(
              height: 140,
              child: DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.blue,
                ),
                child: Text(
                  'Atoms',
                  style: TextStyle(color: Colors.white, fontSize: 28),
                ),
              ),
            ),
            ListTile(
              title: const Text('Welcome'),
              leading: const Icon(Icons.campaign),
              onTap: () {
                _contentHandler(WelcomePage.routeName);
                setState(() {
                  route = WelcomePage.routeName;
                });
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('Layouts'),
              leading: const Icon(Icons.layers),
              onTap: () {
                _contentHandler(Layouts.routeName);
                setState(() {
                  route = Layouts.routeName;
                });
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('Rich Text'),
              leading: const Icon(Icons.text_fields),
              onTap: () {
                _contentHandler(RichTextAtom.routeName);
                setState(() {
                  route = RichTextAtom.routeName;
                });
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('Range Slider'),
              leading: const CircularProgressIndicator(),
              onTap: () {
                _contentHandler(RangeSliderAtom.routeName);
                setState(() {
                  route = RangeSliderAtom.routeName;
                });
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('Avatars'),
              leading: const Icon(Icons.supervised_user_circle_sharp),
              onTap: () {
                _contentHandler(AvatarAtom.routeName);
                setState(() {
                  route = AvatarAtom.routeName;
                });
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('DatePicker'),
              leading: const Icon(Icons.date_range),
              onTap: () {
                _contentHandler(DatePickerAtom.routeName);
                setState(() {
                  route = DatePickerAtom.routeName;
                });
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('Alert'),
              leading: const Icon(Icons.alarm),
              onTap: () {
                _contentHandler(Alert.routeName);
                setState(() {
                  route = Alert.routeName;
                });
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('Button'),
              leading: const Icon(Icons.ads_click),
              onTap: () {
                _contentHandler(ButtonAtom.routeName);
                setState(() {
                  route = ButtonAtom.routeName;
                });
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('Checkbox'),
              leading: const Icon(Icons.check_box),
              onTap: () {
                _contentHandler(CheckboxAtom.routeName);
                setState(() {
                  route = CheckboxAtom.routeName;
                });
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('RadioButton'),
              leading: const Icon(Icons.radio_button_checked),
              onTap: () {
                _contentHandler(RadioButtonAtom.routeName);
                setState(() {
                  route = RadioButtonAtom.routeName;
                });
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: const Text('Link'),
              leading: const Icon(Icons.link),
              onTap: () {
                _contentHandler(LinkAtom.routeName);
                setState(() {
                  route = LinkAtom.routeName;
                });
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
      body: TabBarView(children: [
        _currentWidget,
        const Center(
          child: Text(
            'Just a Tab',
            style: TextStyle(fontSize: 30),
          ),
        ),
        const Center(
          child: Text(
            'Just another Tab',
            style: TextStyle(fontSize: 30),
          ),
        ),
      ]),
      floatingActionButton: route == ButtonAtom.routeName
          ? FloatingActionButton(
              onPressed: (() {}),
              child: const Icon(Icons.add),
            )
          : null,
    );
  }
}

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  static const routeName = '/welcome';

  @override
  Widget build(BuildContext context) {
    return const Center(
        child: Text(
      'Welcome to Atomic Design',
      style: TextStyle(fontSize: 30),
    ));
  }
}
