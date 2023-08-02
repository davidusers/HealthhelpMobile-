import 'package:flutter/material.dart';
import 'dart:async';

class Animations extends StatefulWidget {
  final Widget child;
  final int delay;
  const Animations({required this.delay, required this.child});

  @override
  State<Animations> createState() => _AnimationsState();
}

class _AnimationsState extends State<Animations>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<Offset> _aninOffset;
  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration:const Duration(milliseconds: 1000),
    );
    final curve = CurvedAnimation(
      parent: _controller,
      curve: Curves.decelerate,
    );
    _aninOffset = Tween<Offset>(
      begin: const Offset(0.0, 0.5),
      end: Offset.zero,
    ).animate(curve);
    Timer(Duration(milliseconds: widget.delay), () {
      _controller.forward();
    });
  }

  Widget build(BuildContext context) {
    return FadeTransition(
      opacity:_controller ,
      child: SlideTransition(
      position:_aninOffset,
      child:widget.child,
    ),
      );
  }
}
