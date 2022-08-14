import 'package:elancer_ui_app/models/faq.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';


class FaqsScreen extends StatefulWidget {
  const FaqsScreen({Key? key}) : super(key: key);

  @override
  State<FaqsScreen> createState() => _FaqsScreenState();
}

class _FaqsScreenState extends State<FaqsScreen> {

  List<Faq> _faqs = <Faq> [
    Faq(question: 'Question#1', answer: 'Answer#1'),
    Faq(question: 'Question#1', answer: 'Answer#1'),
    Faq(question: 'Question#1', answer: 'Answer#1'),
    Faq(question: 'Question#1', answer: 'Answer#1'),
    Faq(question: 'Question#1', answer: 'Answer#1'),
    Faq(question: 'Question#1', answer: 'Answer#1'),
    Faq(question: 'Question#1', answer: 'Answer#1'),
    Faq(question: 'Question#1', answer: 'Answer#1'),
    Faq(question: 'Question#1', answer: 'Answer#1'),
    Faq(question: 'Question#1', answer: 'Answer#1'),
    Faq(question: 'Question#1', answer: 'Answer#1'),
    Faq(question: 'Question#1', answer: 'Answer#1'),
    Faq(question: 'Question#1', answer: 'Answer#1'),
    Faq(question: 'Question#1', answer: 'Answer#1'),
    Faq(question: 'Question#1', answer: 'Answer#1'),
    Faq(question: 'Question#1', answer: 'Answer#1'),
    Faq(question: 'Question#1', answer: 'Answer#1'),
    Faq(question: 'Question#1', answer: 'Answer#1'),
    Faq(question: 'Question#1', answer: 'Answer#1'),
    Faq(question: 'Question#1', answer: 'Answer#1'),
    Faq(question: 'Question#1', answer: 'Answer#1'),
    Faq(question: 'Question#1', answer: 'Answer#1'),
    Faq(question: 'Question#1', answer: 'Answer#1'),
    Faq(question: 'Question#1', answer: 'Answer#1'),
    Faq(question: 'Question#1', answer: 'Answer#1'),
    Faq(question: 'Question#1', answer: 'Answer#1'),
    Faq(question: 'Question#1', answer: 'Answer#1'),
    Faq(question: 'Question#1', answer: 'Answer#1'),
    Faq(question: 'Question#1', answer: 'Answer#1'),
    Faq(question: 'Question#1', answer: 'Answer#1'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Faqs Screen'),
      ),
      body: ListView(
        children: [
          ExpansionPanelList(
            elevation: 4,
            animationDuration: Duration(seconds: 1),
            expandedHeaderPadding: EdgeInsets.zero,
            expansionCallback: (panelIndex, isExpanded) {
              setState(()=> _faqs[panelIndex].isExpanded = !isExpanded);
            },
            children: _faqs.map((e){
              return ExpansionPanel(
                canTapOnHeader: true,
                isExpanded: e.isExpanded,
                backgroundColor: Color(0xFFF5E8E4),
                headerBuilder: (context, isExpanded) {
                return Padding(
                  padding: EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Icon(Icons.question_answer,size: 18,),
                        Text(e.question),
                        SizedBox(width: 5,),
                      ],
                    ));
              }, body: Container(
                color: Color(0xFFEAE3D2),
                  height: 50,
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  alignment: AlignmentDirectional.centerStart,
                  child: Text(e.answer,style: GoogleFonts.montserrat(),)),

              );
            }).toList()
          ),
        ],
      ),
    );
  }
}
