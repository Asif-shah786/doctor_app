import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class   ContactContainer extends StatefulWidget {
  String svgPath;
  String name;

  ContactContainer(this.svgPath, this.name, {super.key});

  @override
  State<ContactContainer> createState() => _ContactContainerState();
}

class _ContactContainerState extends State<ContactContainer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            blurRadius: 3,
            color: const Color(0xff000000).withOpacity(0.25),
          ),
        ],
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    blurRadius: 4,
                    color: const Color(0xff000000).withOpacity(0.25),
                    offset: const Offset(2, 2),
                  ),
                ],
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child:
                    Center(child: SvgPicture.asset(height: 25, widget.svgPath)),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              widget.name,
              style: const TextStyle(
                  color: Color(0xff101453),
                  fontWeight: FontWeight.w600,
                  fontSize: 18),
            )
          ],
        ),
      ),
    );
  }
}
