import 'package:flutter/material.dart';

void main() {
  runApp(const SafetyApp());
}

class SafetyApp extends StatelessWidget {
  const SafetyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Safety App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // High visibility colors are standard in safety.
        // We use orange to grab attention.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.orange),
        useMaterial3: true,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const SafetyHomePage(),
      },
    );
  }
}

class SafetyHomePage extends StatefulWidget {
  const SafetyHomePage({super.key});

  @override
  State<SafetyHomePage> createState() => _SafetyHomePageState();
}

class _SafetyHomePageState extends State<SafetyHomePage> {
  // We will track hazards here later.
  int _hazardCount = 0;

  void _reportHazard() {
    setState(() {
      _hazardCount++;
    });
    // In a real app, this would open a form.
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(content: Text('Hazard reported. Good catch.')),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('Daily Safety Check'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Icon(
              Icons.health_and_safety,
              size: 64,
              color: Colors.orange,
            ),
            const SizedBox(height: 20),
            const Text(
              'Stay alert. Stay safe.',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            const Text(
              'Hazards reported today:',
            ),
            Text(
              '$_hazardCount',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            const SizedBox(height: 40),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 32.0),
              child: Text(
                'If you see a risk, report it immediately. Do not walk past an unsafe condition.',
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.grey),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: _reportHazard,
        tooltip: 'Report Hazard',
        icon: const Icon(Icons.warning_amber_rounded),
        label: const Text('Report Hazard'),
      ),
    );
  }
}
