import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:routing/Screen/DetailMail.dart';
import 'package:routing/Model/Mail.dart';

class RowMail extends StatelessWidget {
  RowMail(@required this.email);
  ModelMail email;

  @override
  Widget build(BuildContext context) {
    return new ListTile(
      contentPadding: EdgeInsets.all(0),
      onTap: () => Navigator.push(
        context,
        new PageTransition(
          type: PageTransitionType.bottomToTop,
          child: new DetailMail(email),
          settings: new RouteSettings(
            arguments: new DetailMailArgs(mail: email),
          ),
        ),

        /* il codice qui sotto è senza TRANSIZIONE */
        /* new MaterialPageRoute(
            builder: (context) => new DetailMail(index),
            settings: new RouteSettings(
              arguments: new DetailMailArgs(mail: mails[index]),
            )),*/
      ),
      leading: new CircleAvatar(
          radius: 25,
          backgroundColor: email.color,
          child: new Text(
            email.title.substring(0, 2).toUpperCase(),
            style: new TextStyle(color: Colors.white),
          )),
      title: new Text(email.title),
      subtitle: new Text(
        email.content,
        overflow: TextOverflow.ellipsis,
      ),
      trailing: new Text(email.date),
    );
  }
}
