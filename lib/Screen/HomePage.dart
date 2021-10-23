import 'package:flutter/material.dart';
import 'package:routing/Component/RowMail.dart';
import 'package:routing/Model/Mail.dart';


final mails = [
  ModelMail(
    title: "American Express",
    content:
    "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec molestie tortor augue, viverra scelerisque elit porttitor in. Suspendisse aliquet ante quis quam dictum suscipit. Pellentesque mauris urna, tempor sit amet finibus vitae, rutrum scelerisque erat. Etiam leo turpis, malesuada eget nisi nec, tempus auctor lectus. Nullam eleifend nibh vitae ante malesuada, eget aliquam nulla luctus. Nunc non pretium mi. Cras sagittis maximus dictum. Nullam ornare aliquam eros. Curabitur augue mauris, pulvinar in porttitor eu, hendrerit non dui. Nulla ac interdum ante.",
    date: "23 May",
    color: Colors.teal,
  ),
  ModelMail(
    title: "Google",
    content:
    "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec molestie tortor augue, viverra scelerisque elit porttitor in. Suspendisse aliquet ante quis quam dictum suscipit. Pellentesque mauris urna, tempor sit amet finibus vitae, rutrum scelerisque erat. Etiam leo turpis, malesuada eget nisi nec, tempus auctor lectus. Nullam eleifend nibh vitae ante malesuada, eget aliquam nulla luctus. Nunc non pretium mi. Cras sagittis maximus dictum. Nullam ornare aliquam eros. Curabitur augue mauris, pulvinar in porttitor eu, hendrerit non dui. Nulla ac interdum ante.",
    date: "21 May",
    color: Colors.red,
  ),
  ModelMail(
    title: "Facebook",
    content:
    "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec molestie tortor augue, viverra scelerisque elit porttitor in. Suspendisse aliquet ante quis quam dictum suscipit. Pellentesque mauris urna, tempor sit amet finibus vitae, rutrum scelerisque erat. Etiam leo turpis, malesuada eget nisi nec, tempus auctor lectus. Nullam eleifend nibh vitae ante malesuada, eget aliquam nulla luctus. Nunc non pretium mi. Cras sagittis maximus dictum. Nullam ornare aliquam eros. Curabitur augue mauris, pulvinar in porttitor eu, hendrerit non dui. Nulla ac interdum ante.",
    date: "20 May",
    color: Colors.indigo,
  ),
];



class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: AppBar(
          centerTitle: true,
          leading: new Icon(Icons.dehaze),
          title: Text(
            'In Box',
          ),
          actions: [new Icon(Icons.search)],
        ),
        body: new Padding(
          padding: EdgeInsets.all(16),
          child: new ListView.builder(
            itemBuilder: (context, index) => new RowMail(mails[index]),
            itemCount: mails.length,
          ),
        ));
  }
}
