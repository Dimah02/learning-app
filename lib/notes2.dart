import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';
 
class IconModel extends ChangeNotifier {
  List<IconData>? _list = [Icons.star, Icons.air,Icons.search,Icons.car_crash,Icons.zoom_out,Icons.fire_truck,Icons.person];
  int? _index = 0;
  double? _size = 50;
 
  IconData get icon => _list![_index!];
  int get index => _index!;
  double get size => _size!;
 
  void goRight() {
    _index = (index + 1) % _list!.length;
    notifyListeners();
  }
 
  void goLeft() {
    _index = _index! - 1;
    if (index < 0) _index = _list!.length - 1;
    notifyListeners();
  }
 
  void increaseSize() {
    _size = _size! + 10;
    if(_size!>300)
      _size = 300;
    notifyListeners();
  }
 
  void decrementSize() {
    _size = _size! - 10;
    if (_size! < 30) _size = 30;
    notifyListeners();
  }
}
 
void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => IconModel(),
      child: MyApp(),
    ),
  );
}
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: PageOne(),
    );
  }
}
 
class PageOne extends StatelessWidget {
  const PageOne({super.key});
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Working"),
      ),
      body: Center(
        child: Column(
mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Provider.of<IconModel>(context).icon,
              size: Provider.of<IconModel>(context).size,
            ),
            SizedBox(
              height: 16,
            ),
            Text("Icons Number: ${Provider.of<IconModel>(context).index + 1}"),
            SizedBox(
              height: 16,
            ),
            Text("Icons Size: ${Provider.of<IconModel>(context).size}"),
            SizedBox(
              height: 16,
            ),
            Row(
mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                    onPressed: () {
                      Provider.of<IconModel>(context, listen: false).goLeft();
                    },
                    child: Text("prev")),
                SizedBox(
                  width: 16,
                ),
                ElevatedButton(
                    onPressed: () {
                      Provider.of<IconModel>(context, listen: false).goRight();
                    },
                    child: Text("next")),
                SizedBox(
                  width: 16,
                ),
                ElevatedButton(
                    onPressed: () {
                      Provider.of<IconModel>(context, listen: false)
                          .increaseSize();
                    },
                    child: Text("Maximize")),
                SizedBox(
                  width: 16,
                ),
                ElevatedButton(
                    onPressed: () {
                      Provider.of<IconModel>(context, listen: false)
                          .decrementSize();
                    },
                    child: Text("Minimize")),
              ],
            )
          ],
        ),
      ),
    );
  }
}
