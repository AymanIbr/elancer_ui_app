import 'package:elancer_ui_app/models/faq.dart';
import 'package:flutter/material.dart';

class FrequentQuestionScreen extends StatefulWidget {
  const FrequentQuestionScreen({Key? key}) : super(key: key);

  @override
  State<FrequentQuestionScreen> createState() => _FrequentQuestionScreenState();
}

class _FrequentQuestionScreenState extends State<FrequentQuestionScreen> {


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
      appBar: AppBar(title: Text('Frequent Screen'),),
      body: ListView.builder(
        itemCount: _faqs.length,
          itemBuilder: (context,index){
          return  ExpansionTile(
              title: Text(_faqs[index].question),
            leading: Icon(Icons.question_answer),
            onExpansionChanged: (bool value){},
            textColor: Colors.red,
            collapsedTextColor: Colors.pink,
            collapsedBackgroundColor: Colors.grey.shade300,
            backgroundColor: Colors.purple.shade300,
            iconColor: Colors.white,
            collapsedIconColor: Colors.black,
            children: [
              Text(_faqs[index].answer)
            ],
          );
          }
      ),
    );
  }
}
