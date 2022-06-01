import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ArticulosWidget extends StatefulWidget {
  const ArticulosWidget({Key key}) : super(key: key);

  @override
  _ArticulosWidgetState createState() => _ArticulosWidgetState();
}

class _ArticulosWidgetState extends State<ArticulosWidget> {
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
          'Articulos',
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
              Expanded(
                child: GridView(
                  padding: EdgeInsets.zero,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                    childAspectRatio: 1,
                  ),
                  scrollDirection: Axis.vertical,
                  children: [
                    Image.network(
                      'https://raw.githubusercontent.com/luis-castaneda-h/Imagenes_Empresa/main/correa_con_pechera_econ_mica_talla_s_amarillo_by_nutypet.jpg',
                      width: 1000,
                      height: 100,
                      fit: BoxFit.contain,
                    ),
                    Text(
                      '\nCorreas\n\$25',
                      textAlign: TextAlign.center,
                      style: FlutterFlowTheme.of(context).title3,
                    ),
                    Image.network(
                      'https://raw.githubusercontent.com/luis-castaneda-h/Imagenes_Empresa/main/5B1B3DEC6D93D9C9C2714E8E5D355ABF.jpg',
                      width: 100,
                      height: 100,
                      fit: BoxFit.cover,
                    ),
                    Image.network(
                      'https://raw.githubusercontent.com/luis-castaneda-h/Imagenes_Empresa/main/91-4h14tpOL._AC_SX466_.jpg',
                      width: 100,
                      height: 100,
                      fit: BoxFit.cover,
                    ),
                    Text(
                      'Jugetes para tu mascota\n\$50',
                      textAlign: TextAlign.center,
                      style: FlutterFlowTheme.of(context).bodyText1.override(
                            fontFamily: 'Poppins',
                            fontSize: 20,
                          ),
                    ),
                    Image.network(
                      'https://raw.githubusercontent.com/luis-castaneda-h/Imagenes_Empresa/main/5B1B3DEC6D93D9C9C2714E8E5D355ABF.jpg',
                      width: 100,
                      height: 100,
                      fit: BoxFit.cover,
                    ),
                    Image.network(
                      'https://raw.githubusercontent.com/luis-castaneda-h/Imagenes_Empresa/main/clinica-veterinaria-estravis-alimentos.jpg',
                      width: 100,
                      height: 100,
                      fit: BoxFit.cover,
                    ),
                    Text(
                      'Alimento para tu mascota\n\$ 110/kg',
                      textAlign: TextAlign.center,
                      style: FlutterFlowTheme.of(context).bodyText1.override(
                            fontFamily: 'Poppins',
                            fontSize: 20,
                          ),
                    ),
                    Image.network(
                      'https://raw.githubusercontent.com/luis-castaneda-h/Imagenes_Empresa/main/5B1B3DEC6D93D9C9C2714E8E5D355ABF.jpg',
                      width: 100,
                      height: 100,
                      fit: BoxFit.cover,
                    ),
                    Image.network(
                      'https://raw.githubusercontent.com/luis-castaneda-h/Imagenes_Empresa/main/41BWZ-iytaL._AC_.jpg',
                      width: 100,
                      height: 100,
                      fit: BoxFit.cover,
                    ),
                    Text(
                      'Casita para tu mascota\n\$300',
                      textAlign: TextAlign.center,
                      style: FlutterFlowTheme.of(context).bodyText1.override(
                            fontFamily: 'Poppins',
                            fontSize: 20,
                          ),
                    ),
                    Image.network(
                      'https://raw.githubusercontent.com/luis-castaneda-h/Imagenes_Empresa/main/5B1B3DEC6D93D9C9C2714E8E5D355ABF.jpg',
                      width: 100,
                      height: 100,
                      fit: BoxFit.cover,
                    ),
                    Image.network(
                      'https://raw.githubusercontent.com/luis-castaneda-h/Imagenes_Empresa/main/camisas-de-polo-para-perros-primavera-verano.jpg',
                      width: 100,
                      height: 100,
                      fit: BoxFit.cover,
                    ),
                    Text(
                      'Ropita para mascota\n\$50',
                      textAlign: TextAlign.center,
                      style: FlutterFlowTheme.of(context).bodyText1.override(
                            fontFamily: 'Poppins',
                            fontSize: 20,
                          ),
                    ),
                    Image.network(
                      'https://raw.githubusercontent.com/luis-castaneda-h/Imagenes_Empresa/main/5B1B3DEC6D93D9C9C2714E8E5D355ABF.jpg',
                      width: 100,
                      height: 100,
                      fit: BoxFit.cover,
                    ),
                    Image.network(
                      'https://raw.githubusercontent.com/luis-castaneda-h/Imagenes_Empresa/main/maxresdefault.jpg',
                      width: 100,
                      height: 100,
                      fit: BoxFit.cover,
                    ),
                    Text(
                      'Medicame-nto',
                      textAlign: TextAlign.center,
                      style: FlutterFlowTheme.of(context).bodyText1.override(
                            fontFamily: 'Poppins',
                            fontSize: 20,
                          ),
                    ),
                    Image.network(
                      'https://raw.githubusercontent.com/luis-castaneda-h/Imagenes_Empresa/main/5B1B3DEC6D93D9C9C2714E8E5D355ABF.jpg',
                      width: 100,
                      height: 100,
                      fit: BoxFit.cover,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
