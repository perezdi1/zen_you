import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:twilio_flutter/twilio_flutter.dart';
import 'package:zen_you/questionnaire.dart';
class SmsScreen extends StatefulWidget {
  const SmsScreen({Key? key, required this.title}) : super(key: key);
  static const String_title = 'SMS';
  final String title;
  @override
  State<SmsScreen> createState() => _SmsScreenState();
}
class _SmsScreenState extends State<SmsScreen> {
  late TwilioFlutter twilioFlutter;
  @override
  void initState() {
    twilioFlutter = TwilioFlutter(
        accountSid: 'AC3729694c4e7a86129b2d435fafed4003',
        authToken: '37277066f98a47267ba02739a84df765',
        twilioNumber: '+1(888) 365-2924');
    super.initState();
  }
  void sendSms() async {
    twilioFlutter.sendSMS(
        toNumber: ' 2486327132', messageBody: 'Love you sunshine!\n');
  }
  void getSms() async {
    var data = await twilioFlutter.getSmsList();
    if (kDebugMode) {
      print(data);
    }
    await twilioFlutter.getSMS('***************************');
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text(widget.title),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'Press the button to send SMS.',
          style: TextStyle(
              color: Colors.black,
              fontSize: 16
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: sendSms,
        tooltip: 'Send Sms',
        child: const Icon(Icons.send),
      ),
    );
  }
}