import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ConclusionesWidget extends StatefulWidget {
  const ConclusionesWidget({Key key}) : super(key: key);

  @override
  _ConclusionesWidgetState createState() => _ConclusionesWidgetState();
}

class _ConclusionesWidgetState extends State<ConclusionesWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: Color(0xFF41756D),
        iconTheme: IconThemeData(color: Colors.black),
        automaticallyImplyLeading: false,
        title: Text(
          'Conclusion',
          style: FlutterFlowTheme.of(context).title1.override(
                fontFamily: 'Poppins',
                color: Colors.black,
              ),
        ),
        actions: [],
        centerTitle: true,
        elevation: 4,
      ),
      backgroundColor: Colors.white,
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: 615,
                decoration: BoxDecoration(
                  color: Colors.white,
                ),
                child: Text(
                  'En Conclusion en esta unidad estuvo algo sencilla ya que pues usamos los mismos elementos que la unidad pasada y no fue casi complicada solo por una que otra cosa pero pues nada que no se pueda arregalar y solucionar resolviendo mis dudas ya se preguntandoles a mis compañeros o al maestro y pues esta actividad me gusto la verdad me gusto el negocio que me toco ya que pues es algo facil y no es nada complicado en si la practica me gusto ya esta me imagino que sera la ultima actividad :(\nMe gusto mucho haber aprendido programacion pues es bastante interesante y cuando le entiendes no esta tan complicada.',
                  style: FlutterFlowTheme.of(context).bodyText1.override(
                        fontFamily: 'Poppins',
                        fontSize: 20,
                      ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
