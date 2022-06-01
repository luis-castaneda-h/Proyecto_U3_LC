import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'flutter_flow/flutter_flow_theme.dart';
import 'flutter_flow/flutter_flow_util.dart';
import 'flutter_flow/internationalization.dart';
import 'package:google_fonts/google_fonts.dart';
import 'index.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await FlutterFlowTheme.initialize();

  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  // This widget is the root of your application.
  @override
  State<MyApp> createState() => _MyAppState();

  static _MyAppState of(BuildContext context) =>
      context.findAncestorStateOfType<_MyAppState>();
}

class _MyAppState extends State<MyApp> {
  Locale _locale;
  ThemeMode _themeMode = FlutterFlowTheme.themeMode;

  void setLocale(Locale value) => setState(() => _locale = value);
  void setThemeMode(ThemeMode mode) => setState(() {
        _themeMode = mode;
        FlutterFlowTheme.saveThemeMode(mode);
      });

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'UIII Proyecto Luis Castaneda 6to i',
      localizationsDelegates: [
        FFLocalizationsDelegate(),
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      locale: _locale,
      supportedLocales: const [Locale('en', '')],
      theme: ThemeData(brightness: Brightness.light),
      darkTheme: ThemeData(brightness: Brightness.dark),
      themeMode: _themeMode,
      home: LoginWidget(),
    );
  }
}

class NavBarPage extends StatefulWidget {
  NavBarPage({Key key, this.initialPage}) : super(key: key);

  final String initialPage;

  @override
  _NavBarPageState createState() => _NavBarPageState();
}

/// This is the private State class that goes with NavBarPage.
class _NavBarPageState extends State<NavBarPage> {
  String _currentPage = 'inicio';

  @override
  void initState() {
    super.initState();
    _currentPage = widget.initialPage ?? _currentPage;
  }

  @override
  Widget build(BuildContext context) {
    final tabs = {
      'inicio': InicioWidget(),
      'Dato_Desarrollador': DatoDesarrolladorWidget(),
      'Empleados': EmpleadosWidget(),
      'Articulos': ArticulosWidget(),
      'Clientes': ClientesWidget(),
      'ListView_Empleados': ListViewEmpleadosWidget(),
      'Conclusiones': ConclusionesWidget(),
    };
    final currentIndex = tabs.keys.toList().indexOf(_currentPage);
    return Scaffold(
      body: tabs[_currentPage],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: (i) => setState(() => _currentPage = tabs.keys.toList()[i]),
        backgroundColor: Colors.white,
        selectedItemColor: FlutterFlowTheme.of(context).primaryColor,
        unselectedItemColor: Color(0x8A000000),
        showSelectedLabels: false,
        showUnselectedLabels: false,
        type: BottomNavigationBarType.fixed,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home_filled,
              size: 24,
            ),
            label: 'Inicio',
            tooltip: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person,
              size: 24,
            ),
            label: 'Desarrollador',
            tooltip: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.group_add,
              size: 24,
            ),
            label: 'Empleados',
            tooltip: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.shopping_cart_rounded,
              size: 24,
            ),
            label: 'Articulos',
            tooltip: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.emoji_people,
              size: 24,
            ),
            label: 'Clientes',
            tooltip: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.tag_faces,
              size: 24,
            ),
            label: 'Doctores',
            tooltip: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.mark_chat_read,
              size: 24,
            ),
            label: 'Conclusiones',
            tooltip: '',
          )
        ],
      ),
    );
  }
}
