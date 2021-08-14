import 'package:flutter/material.dart';

class HeaderCuadrado extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      color: Color(0xff615AAB),
    );
  }
}

class HeaderBordeRedondeado extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      decoration: BoxDecoration(
        color: Color(0xff615AAB),
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(70),
          bottomRight: Radius.circular(70),
        ),
      ),
    );
  }
}

class HeaderDiagonal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      // color: Color(0xff615AAB),
      child: CustomPaint(
        // painter: _HeaderDiagonalPainter(),
        // painter: _HeaderTrianguloPainter(),
        // painter: _HeaderPicoPainter(),
        // painter: _HeaderCurvoPainter(),
        painter: _HeaderWavePainter(),
        // painter: _HeaderWaveDownPainter(),
        // painter: _HeaderWaveGradientPainter(),
      ),
    );
  }
}

class _HeaderDiagonalPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final pencil = new Paint();

    /* Properties */
    pencil.color = Color(0xff615AAB);
    pencil.style = PaintingStyle.fill; // .stroke
    pencil.strokeWidth = 2;

    final path = new Path();

    /* Movimientos Y Trazos Con El lapiz En El Canvas */
    path.moveTo(0, size.height * 0.35);

    path.lineTo(size.width, size.height * 0.30);
    path.lineTo(size.width, 0);
    path.lineTo(0, 0);
    // path.lineTo(0, size.height * 0.5);

    /* Decirle Al Canvas Que Dibje */
    canvas.drawPath(path, pencil);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}

class _HeaderTrianguloPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final pencil = new Paint();

    /* Properties */
    pencil.color = Color(0xff615AAB);
    pencil.style = PaintingStyle.fill; // .stroke
    pencil.strokeWidth = 20;

    final path = new Path();

    /* Triangulo Superior */
    path.lineTo(0, 0);
    path.lineTo(size.width, size.height);
    path.lineTo(size.width, 0);
    path.lineTo(0, 0);

    /* Triangulo Inferior */
    // path.lineTo(0, 0);
    // path.lineTo(size.width, size.height);
    // path.lineTo(0, size.height);
    // path.lineTo(0, 0);

    /* Decirle Al Canvas Que Dibje */
    canvas.drawPath(path, pencil);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}

class _HeaderPicoPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final pencil = new Paint();

    /* Properties */
    pencil.color = Color(0xff615AAB);
    pencil.style = PaintingStyle.fill; // .stroke
    pencil.strokeWidth = 5;

    final path = new Path();

    path.lineTo(0, size.height * 0.30);
    path.lineTo(size.width * 0.50, size.height * 0.40);
    path.lineTo(size.width, size.height * 0.30);
    path.lineTo(size.width, 0);

    /* Decirle Al Canvas Que Dibje */
    canvas.drawPath(path, pencil);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}

class _HeaderCurvoPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final pencil = new Paint();

    /* Properties */
    pencil.color = Color(0xff615AAB);
    pencil.style = PaintingStyle.fill; // .stroke
    pencil.strokeWidth = 5;

    final path = new Path();

    path.lineTo(0, size.height * 0.30);

    /* Los Dos Primeros Valores => Por Donde Va A Pasar La Circunferencia */
    /* Los Dos Ultimos Valores => Donde Termina La El Punto Final De la Linea */
    path.quadraticBezierTo(
        size.width * 0.50, size.height * 0.45, size.width, size.height * 0.30);
    // path.quadraticBezierTo(x1, y1, x2, y2)

    path.lineTo(size.width, 0);

    /* Decirle Al Canvas Que Dibje */
    canvas.drawPath(path, pencil);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}

class _HeaderWavePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final pencil = new Paint();

    /* Properties */
    pencil.color = Color(0xff615AAB);
    pencil.style = PaintingStyle.fill; // .stroke
    pencil.strokeWidth = 5;

    final path = new Path();

    path.lineTo(0, size.height * 0.30);

    /* Los Dos Primeros Valores => Por Donde Va A Pasar La Circunferencia */
    /* Los Dos Ultimos Valores => Donde Termina La El Punto Final De la Linea */
    path.quadraticBezierTo(size.width * 0.20, size.height * 0.40,
        size.width * 0.50, size.height * 0.30);
    path.quadraticBezierTo(
        size.width * 0.75, size.height * 0.20, size.width, size.height * 0.30);
    // path.quadraticBezierTo(x1, y1, x2, y2)

    path.lineTo(size.width, 0);

    /* Decirle Al Canvas Que Dibje */
    canvas.drawPath(path, pencil);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}

class _HeaderWaveDownPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    final pencil = new Paint();

    /* Properties */
    pencil.color = Color(0xff615AAB);
    pencil.style = PaintingStyle.fill; // .stroke
    pencil.strokeWidth = 25;

    final path = new Path();

    /* Movimientos Y Trazos Con El lapiz En El Canvas */
    path.moveTo(0, size.height);
    path.lineTo(0, size.height * 0.70);

    /* Los Dos Primeros Valores => Por Donde Va A Pasar La Circunferencia */
    /* Los Dos Ultimos Valores => Donde Termina La El Punto Final De la Linea */
    path.quadraticBezierTo(size.width * 0.20, size.height * 0.60,
        size.width * 0.50, size.height * 0.70);
    path.quadraticBezierTo(
        size.width * 0.75, size.height * 0.80, size.width, size.height * 0.70);
    // path.quadraticBezierTo(x1, y1, x2, y2)

    path.lineTo(size.width, size.height);

    /* Decirle Al Canvas Que Dibje */
    canvas.drawPath(path, pencil);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}

class _HeaderWaveGradientPainter extends CustomPainter {
  /* TRABAJAR CON GRADIENTES */
  @override
  void paint(Canvas canvas, Size size) {
    final Rect rect = new Rect.fromCircle(
      center: Offset(0, 55),
      radius: 180,
    );

    final Gradient gradient = new LinearGradient(
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
      colors: [
        Color(0xff6D05E8),
        Color(0xffC012FF),
        Color(0xff6D05FA),
      ],
      stops: [0.2, 0.5, 1],
    );

    final pencil = new Paint()..shader = gradient.createShader(rect);

    /* Properties */
    pencil.color = Color(0xff615AAB);
    pencil.style = PaintingStyle.fill; // .stroke
    pencil.strokeWidth = 5;

    final path = new Path();

    path.lineTo(0, size.height * 0.30);

    /* Los Dos Primeros Valores => Por Donde Va A Pasar La Circunferencia */
    /* Los Dos Ultimos Valores => Donde Termina La El Punto Final De la Linea */
    path.quadraticBezierTo(size.width * 0.20, size.height * 0.40,
        size.width * 0.50, size.height * 0.30);
    path.quadraticBezierTo(
        size.width * 0.75, size.height * 0.20, size.width, size.height * 0.30);
    // path.quadraticBezierTo(x1, y1, x2, y2)

    path.lineTo(size.width, 0);

    /* Decirle Al Canvas Que Dibje */
    canvas.drawPath(path, pencil);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
