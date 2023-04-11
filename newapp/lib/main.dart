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
      title: 'Finacial App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.brown,
      ),
      home: const MyHomePage(title: 'Financial App'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 100;

  void _decrementCounter() {
    setState(() {
      _counter--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Drag down to market place!',
            ),
            const Text(
              'Check Us on our Email..',
            ),
            SizedBox(width: 200.0,
            child: Image(image: NetworkImage("https://ssl.gstatic.com/ui/v1/icons/mail/rfr/logo_gmail_lockup_default_1x_r5.png")),
            ),
            Text("How much do you want to Deposit:"),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _decrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.minimize_outlined),
      ), 
      drawer: Drawer(
        elevation: 40.0,
        child: Column(children: <Widget>[
          UserAccountsDrawerHeader(
            accountName: Text("Financial App"), 
            accountEmail: Text("praise@gmail.com"),
            currentAccountPicture: 
            CircleAvatar(backgroundColor: Colors.amber, child: Icon(Icons.monetization_on_outlined),),
          ),
          ListTile(
            title: new Text("Inbox"),
            leading: new Icon(Icons.mail_rounded),
          ),
          ListTile(
            title: new Text("Transaction"),
            leading: new Icon(Icons.monetization_on_rounded),
          ),
          ListTile(
            title: new Text("Deposit"),
            leading: new Icon(Icons.currency_bitcoin_rounded),
          ),
        ]),
      ),
    );
  }
}
