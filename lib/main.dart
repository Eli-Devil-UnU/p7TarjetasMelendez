import 'package:flutter/material.dart';

void main() => runApp(const TarjetaApp());

class TarjetaApp extends StatelessWidget {
  const TarjetaApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Application name
      title: 'Melendez Tarjeta',
      // Application theme data, you can set the colors for the application as
      // you want
      theme: ThemeData(
        // useMaterial3: false,
        primarySwatch: Colors.blue,
      ),
      // A widget which will be started on application startup
      home: const PaginaInicio(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class PaginaInicio extends StatefulWidget {
  const PaginaInicio({Key? key}) : super(key: key);

  @override
  State<PaginaInicio> createState() => _PaginaInicioState();
}

class _PaginaInicioState extends State<PaginaInicio> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Ejemplo de tarjeta"),
          actions: const [Icon(Icons.search), Icon(Icons.more_vert)],
          shape: const StadiumBorder(),
          backgroundColor: const Color(0xff53dbfd),
        ),
        body: Center(
          child: Container(
            height: 300,
            width: 300,
            child: Card(
              shape: RoundedRectangleBorder(
                side: BorderSide.merge(
                    const BorderSide(
                        width: 1.5,
                        color: Color(0xff000000),
                        style: BorderStyle.solid),
                    const BorderSide(
                        width: 1.5,
                        color: Color(0xff000000),
                        style: BorderStyle.solid)),
                borderRadius: BorderRadius.circular(20),
              ),
              color: const Color(0xffbe84ff),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 250,
                    width: 250,
                    child: Card(
                      shape: RoundedRectangleBorder(
                        side: BorderSide.merge(
                            const BorderSide(
                                width: 1.5,
                                color: Color(0xff000000),
                                style: BorderStyle.solid),
                            const BorderSide(
                                width: 1.5,
                                color: Color(0xff000000),
                                style: BorderStyle.solid)),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      color: const Color(0xffff73dd),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text(
                            'Melendez is Cool',
                            style: TextStyle(color: Colors.white, fontSize: 30),
                          ),
                          const SizedBox(height: 20),
                          Container(
                              height: 100,
                              width: 100,
                              child: const FlutterLogo()),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}

/* class MyHomePage extends StatelessWidget {
  final String title;
  const MyHomePage({super.key, required this.title});  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // The title text which will be shown on the action bar
        title: Text(title),
      ),
      body: Center(
        child: Text(
          'Hello, World!',
        ),
      ),
    );
  }
}*/
