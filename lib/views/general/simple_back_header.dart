import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SimpleBackHeader extends StatelessWidget {
  final String title;
  final String? iconSvgName;
  final GestureTapCallback? iconOnTap;

  const SimpleBackHeader(
      {this.title = "", this.iconSvgName, this.iconOnTap, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(0, 16, 0, 16),
        margin: const EdgeInsets.fromLTRB(0, 0, 0, 2),
        child: Material(
            elevation: 1,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  width: 28,
                ),
                Expanded(
                    child: Align(
                        alignment: Alignment.center,
                        child: Text(
                          title,
                          style: const TextStyle(fontWeight: FontWeight.bold),
                        ))),
                InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Container(
                      padding: const EdgeInsets.fromLTRB(8, 16, 8, 16),
                      child: RotatedBox(
                        quarterTurns: 2,
                        child: Icon(
                          Icons.arrow_back,
                          color: Colors.black,
                          size: 24.0,
                          semanticLabel: 'back',
                        ),
                      ),
                    )),
              ],
            )));
  }
}
