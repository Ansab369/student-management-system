
import 'package:flutter/material.dart';

class ExpandableContainer extends StatefulWidget {
  final Widget child;
  final Widget expandedChild;
  final String imageUrl;

  const ExpandableContainer({
    Key? key,
    required this.child,
    required this.expandedChild,
    required this.imageUrl,
  }) : super(key: key);

  @override
  _ExpandableContainerState createState() => _ExpandableContainerState();
}

class _ExpandableContainerState extends State<ExpandableContainer> {
  bool _isExpanded = false;
   bool isVerified = false;

  void toggleExpansion() {
    setState(() {
      _isExpanded = !_isExpanded;
    });
  }

  @override
  Widget build(BuildContext context) {
   
    return AnimatedContainer(
      duration: const Duration(milliseconds: 0),
      height: _isExpanded ? 300 : 100,
      child: InkWell(
        onTap: toggleExpansion,
        child: Container(
          padding: const EdgeInsets.all(16.0),
          margin: const EdgeInsets.all(10.0),
          decoration: BoxDecoration(
            color: Colors.grey[200],
            borderRadius: BorderRadius.circular(16.0),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  CircleAvatar(
                    backgroundImage:
                        AssetImage('assets/userImages/${widget.imageUrl}'),
                  ),
                  SizedBox(width: 15),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [widget.child, Text("2 minutes ago")],
                  ),
                  Spacer(),
                  TextButton(
                    onPressed: () {
                      setState(() {
                        isVerified = !isVerified; // Toggle the isVerified state
                      });
                    },
                    child: Text(
                      isVerified == true
                          ? 'Verified'
                          : 'Verify', // Use ternary operator to determine the text
                    ),
                  ),
                ],
              ),
              if (_isExpanded) widget.expandedChild,
            ],
          ),
        ),
      ),
    );
  }
}
