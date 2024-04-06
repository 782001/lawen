import 'package:flutter/material.dart';
import 'package:lawen/app/presentation/screens/levels.dart';

class PaintingScreen extends StatefulWidget {
  const PaintingScreen(
      {Key? key, required this.levelsModel, required this.isFruit})
      : super(key: key);
  final LevelsModel levelsModel;
  final bool isFruit;

  @override
  State<PaintingScreen> createState() => _PaintingScreenState();
}

class _PaintingScreenState extends State<PaintingScreen> {
  List<List<Offset>> _paths = [];
  bool _isDrawingComplete = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          title: Text('Draw within the Apple Shape'),
        ),
        body: Center(
          child: Container(
            width: 300,
            height: 300,
            color: Colors.transparent,
            child: ClipPath(
              clipper: AppleClipper(),
              child: CustomPaint(
                size: const Size(200, 250),
                painter: DrawingPainter(paths: _paths),
                child: Container(
                  color: Colors.grey.withOpacity(0.3),
                ),
              ),
            ),
          ),
        ));
  }

  bool _isPointInsideShape(Offset point) {
    // Logic to check if point is inside the apple shape
    // Adjust this according to your custom shape
    return true; // Assuming all points are within the apple shape
  }
}

class AppleClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.moveTo(size.width / 2, size.height / 4);
    path.quadraticBezierTo(size.width * 0.1, size.height * 0.1,
        size.width * 0.05, size.height / 2);
    path.arcToPoint(Offset(size.width * 0.95, size.height / 2),
        radius: Radius.circular(100), clockwise: false);
    path.quadraticBezierTo(
        size.width * 0.9, size.height * 0.1, size.width / 2, size.height / 4);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}

class BananaClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();

    path.moveTo(size.width * 0.1365944, size.height * 0.0728571);
    path.quadraticBezierTo(size.width * 0.0787750, size.height * 0.0135714,
        size.width * 0.0461697, size.height * 0.0757143);
    path.quadraticBezierTo(size.width * 0.0833605, size.height * 0.1260714,
        size.width * 0.0607543, size.height * 0.1428571);
    path.cubicTo(
        size.width * 0.0826313,
        size.height * 0.1632143,
        size.width * 0.0388774,
        size.height * 0.1782143,
        size.width * 0.0315850,
        size.height * 0.1900000);
    path.cubicTo(
        size.width * 0.0140835,
        size.height * 0.2078571,
        size.width * 0.0228343,
        size.height * 0.2292857,
        size.width * 0.0111666,
        size.height * 0.2400000);
    path.cubicTo(
        size.width * 0.3137977,
        size.height * 0.7667857,
        size.width * 0.7294597,
        size.height * 0.6089286,
        size.width * 0.7783183,
        size.height * 0.5914286);
    path.cubicTo(
        size.width * 0.8716599,
        size.height * 0.5778571,
        size.width * 0.9066630,
        size.height * 0.5578571,
        size.width * 0.9241646,
        size.height * 0.5600000);
    path.cubicTo(
        size.width * 0.9351031,
        size.height * 0.5507143,
        size.width * 0.9416661,
        size.height * 0.5321429,
        size.width * 0.9475000,
        size.height * 0.5228571);
    path.cubicTo(
        size.width * 0.9219769,
        size.height * 0.5150000,
        size.width * 0.9788570,
        size.height * 0.5064286,
        size.width * 0.8454076,
        size.height * 0.4914286);
    path.cubicTo(
        size.width * 0.5296503,
        size.height * 0.5125000,
        size.width * 0.2759750,
        size.height * 0.3739286,
        size.width * 0.2299361,
        size.height * 0.1942857);
    path.cubicTo(
        size.width * 0.1798250,
        size.height * 0.1296429,
        size.width * 0.1587750,
        size.height * 0.2185714,
        size.width * 0.1365944,
        size.height * 0.0728571);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}

class GuavaClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.moveTo(size.width * 0.4285714, size.height * 0.178);
    path.cubicTo(
        size.width * 0.4142857,
        size.height * 0.066,
        size.width * 0.3714286,
        size.height * 0.002,
        size.width * 0.3142857,
        size.height * 0.002);
    path.cubicTo(
        size.width * 0.2714286,
        size.height * 0.002,
        size.width * 0.2571429,
        size.height * 0.048,
        size.width * 0.2571429,
        size.height * 0.066);
    path.cubicTo(
        size.width * 0.2571429,
        size.height * 0.084,
        size.width * 0.2714286,
        size.height * 0.12,
        size.width * 0.3142857,
        size.height * 0.12);
    path.cubicTo(size.width * 0.3571429, size.height * 0.12, size.width * 0.4,
        size.height * 0.084, size.width * 0.4285714, size.height * 0.178);
    path.cubicTo(
        size.width * 0.4142857,
        size.height * 0.066,
        size.width * 0.3714286,
        size.height * 0.002,
        size.width * 0.3142857,
        size.height * 0.002);
    path.cubicTo(
        size.width * 0.2714286,
        size.height * 0.002,
        size.width * 0.2571429,
        size.height * 0.048,
        size.width * 0.2571429,
        size.height * 0.066);
    path.cubicTo(
        size.width * 0.2571429,
        size.height * 0.084,
        size.width * 0.2714286,
        size.height * 0.12,
        size.width * 0.3142857,
        size.height * 0.12);
    path.cubicTo(size.width * 0.3571429, size.height * 0.12, size.width * 0.4,
        size.height * 0.084, size.width * 0.4285714, size.height * 0.178);
    path.cubicTo(
        size.width * 0.4142857,
        size.height * 0.066,
        size.width * 0.3714286,
        size.height * 0.002,
        size.width * 0.3142857,
        size.height * 0.002);
    path.cubicTo(
        size.width * 0.2714286,
        size.height * 0.002,
        size.width * 0.2571429,
        size.height * 0.048,
        size.width * 0.2571429,
        size.height * 0.066);
    path.cubicTo(
        size.width * 0.2571429,
        size.height * 0.084,
        size.width * 0.2714286,
        size.height * 0.12,
        size.width * 0.3142857,
        size.height * 0.12);
    path.cubicTo(size.width * 0.3571429, size.height * 0.12, size.width * 0.4,
        size.height * 0.084, size.width * 0.4285714, size.height * 0.178);
    path.cubicTo(
        size.width * 0.4142857,
        size.height * 0.066,
        size.width * 0.3714286,
        size.height * 0.002,
        size.width * 0.3142857,
        size.height * 0.002);
    path.cubicTo(
        size.width * 0.2714286,
        size.height * 0.002,
        size.width * 0.2571429,
        size.height * 0.048,
        size.width * 0.2571429,
        size.height * 0.066);
    path.cubicTo(
        size.width * 0.2571429,
        size.height * 0.084,
        size.width * 0.2714286,
        size.height * 0.12,
        size.width * 0.3142857,
        size.height * 0.12);
    path.cubicTo(size.width * 0.3571429, size.height * 0.12, size.width * 0.4,
        size.height * 0.084, size.width * 0.4285714, size.height * 0.178);
    path.cubicTo(
        size.width * 0.4142857,
        size.height * 0.066,
        size.width * 0.3714286,
        size.height * 0.002,
        size.width * 0.3142857,
        size.height * 0.002);
    path.cubicTo(
        size.width * 0.2714286,
        size.height * 0.002,
        size.width * 0.2571429,
        size.height * 0.048,
        size.width * 0.2571429,
        size.height * 0.066);
    path.cubicTo(
        size.width * 0.2571429,
        size.height * 0.084,
        size.width * 0.2714286,
        size.height * 0.12,
        size.width * 0.3142857,
        size.height * 0.12);
    path.cubicTo(size.width * 0.3571429, size.height * 0.12, size.width * 0.4,
        size.height * 0.084, size.width * 0.4285714, size.height * 0.178);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}

class DateClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();

    // Define the shape of the date fruit (بلح) using path operations
    path.moveTo(size.width * 0.5, size.height * 0.05); // Move to top center
    path.lineTo(size.width * 0.8, size.height * 0.2); // Line to top right
    path.arcToPoint(Offset(size.width * 0.7, size.height * 0.3),
        radius: Radius.circular(size.width * 0.15),
        clockwise: false); // Top right arc
    path.arcToPoint(Offset(size.width * 0.5, size.height * 0.35),
        radius: Radius.circular(size.width * 0.15),
        clockwise: false); // Bottom right arc
    path.arcToPoint(Offset(size.width * 0.3, size.height * 0.3),
        radius: Radius.circular(size.width * 0.15),
        clockwise: false); // Bottom left arc
    path.arcToPoint(Offset(size.width * 0.2, size.height * 0.2),
        radius: Radius.circular(size.width * 0.15),
        clockwise: false); // Top left arc
    path.close(); // Close the path

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}

class DrawingPainter2 extends CustomPainter {
  final List<List<Offset?>> paths;

  DrawingPainter2({required this.paths});

  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()
      ..color = Colors.green.withOpacity(.03)
      ..strokeCap = StrokeCap.round
      ..strokeWidth = 90.0;

    for (final path in paths) {
      for (int i = 0; i < path.length - 1; i++) {
        if (path[i] != null && path[i + 1] != null) {
          canvas.drawLine(path[i]!, path[i + 1]!, paint);
        }
      }
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}

class MyPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    // Set up paint
    Paint paint = Paint()
      ..color = Colors.red
      ..strokeWidth = 5
      ..style = PaintingStyle.stroke
      ..strokeCap = StrokeCap.round;

    // Draw a circle at the center of the image
    Offset center = Offset(size.width / 2, size.height / 2);
    double radius = 50;
    canvas.drawCircle(center, radius, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}

class DrawingPainter extends CustomPainter {
  final List<List<Offset>> paths;

  DrawingPainter({required this.paths});

  @override
  void paint(Canvas canvas, Size size) {
    Paint paint = Paint()
      ..color = Colors.red
      ..strokeCap = StrokeCap.round
      ..strokeWidth = 5.0;

    for (final path in paths) {
      for (int i = 0; i < path.length - 1; i++) {
        if (path[i] != null && path[i + 1] != null) {
          canvas.drawLine(path[i]!, path[i + 1]!, paint);
        }
      }
    }
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
