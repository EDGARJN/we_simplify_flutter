import 'package:flutter/material.dart';
import 'package:kalokola_form/models/buttons/asetBtn.dart';
import 'package:kalokola_form/models/formfield/formsfield.dart';

class ASETform extends StatefulWidget {
  const ASETform({Key? key}) : super(key: key);

  @override
  State<ASETform> createState() => _ASETformState();
}

class _ASETformState extends State<ASETform> {
  final formKey = GlobalKey<FormState>();
  String? bankChoice;
  TextEditingController accounNo = TextEditingController();
  TextEditingController bank = TextEditingController();
  TextEditingController amount = TextEditingController();
  TextEditingController pincode = TextEditingController();

  depositActivity() {
    if (formKey.currentState!.validate()) {
      return print(
          " $bankChoice  ${accounNo.text}  ${pincode.text} ${amount.text}");
    }
  }

  @override
  Widget build(BuildContext context) {
    double heights = MediaQuery.of(context).size.height;
    double widths = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: const Text("CREATE CHEQUE"),
      ),
      body: Container(
        padding: const EdgeInsets.all(13.0),
        height: heights,
        width: widths,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Form(
                key: formKey,
                child: Column(
                  children: [
                    asetDropField((val) {
                      setState(() {
                        bankChoice = val;
                      });
                    }),
                     SizedBox(
                      height: heights * 0.02,
                    ),
                    asetFormField(
                        "Account Number", accounNo, TextInputType.name),
                    SizedBox(
                      height: heights * 0.02,
                    ),
                    Row(
                      children: [
                        Flexible(
                          child: asetFormField(
                              "Amount", amount, TextInputType.number),
                        ),
                        SizedBox(
                          width: widths * 0.01,
                        ),
                        Flexible(
                          child: asetFormField(
                              "PIN CODE", pincode, TextInputType.number),
                        )
                      ],
                    ),
                    SizedBox(
                      height: heights * 0.02,
                    ),
                    asetButton(widths * 0.8, heights * 0.08, () {
                      depositActivity();
                    }),
                  ],
                ))
          ],
        ),
      ),
    );
  }
}
