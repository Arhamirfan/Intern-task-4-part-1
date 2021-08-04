import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// class containers {
//   Color colour;
//
//   containers(this.colour) {
//     colour = this.colour;
//   }
//
//   Container double_row_container(
//       BuildContext context, Color colours, String txt) {
//     return Container(
//       decoration: BoxDecoration(color: colours),
//       height: MediaQuery.of(context).size.height * .25,
//       width: MediaQuery.of(context).size.width * .5,
//       child: Expanded(
//         child: Row(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [Text('$txt')],
//         ),
//       ),
//     );
//   }
//
//   Container single_row_container(
//       BuildContext context, Color colours, String txt) {
//     return Container(
//       decoration: BoxDecoration(color: colours),
//       height: MediaQuery.of(context).size.height * .25,
//       width: MediaQuery.of(context).size.width,
//       child: Expanded(
//         child: Row(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [Text('$txt')],
//         ),
//       ),
//     );
//   }
// }

List<Color> diff_colours = [
  Colors.purple,
  Colors.green,
  Colors.orange,
  Colors.blue,
  Colors.red,
  Colors.yellow
];

class half_container extends StatelessWidget {
  half_container(this.clr, this.txxt);
  final Color clr;
  final String txxt;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: clr),
      height: MediaQuery.of(context).size.height * .15,
      width: MediaQuery.of(context).size.width * .5,
      child: Expanded(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [Text('$txxt')],
        ),
      ),
    );
  }
}

class full_container extends StatelessWidget {
  full_container(this.clr, this.txxt);
  final Color clr;
  final String txxt;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: clr),
      height: MediaQuery.of(context).size.height * .15,
      child: Expanded(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [Text('$txxt')],
        ),
      ),
    );
  }
}
