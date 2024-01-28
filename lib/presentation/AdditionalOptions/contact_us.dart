import 'package:doctorapp/config/app_config.dart';
import 'package:flutter/material.dart';
import '../../config/const_file.dart';
import 'addtional_option_list_screen.dart';
import 'common_textfiled.dart';
import 'contact_container.dart';

class ContactUs extends StatelessWidget {
  const ContactUs({super.key});

  static const rootName = "contact_us";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppConfig.commonAppBar(context, "Kontaktiere uns",false),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              Image.asset(
                'asset/images/young.png',
              ),
              const SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                      onTap: () async{
                        await openLinkHelper(urlName: urlNameAddressMap['contactAndSupport']);
                      },
                      child: ContactContainer('asset/svg/phone.svg', 'Anruf')),
                  const SizedBox(
                    width: 20,
                  ),
                  ContactContainer('asset/svg/mail.svg', 'Post'),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              const Row(
                children: [
                  Text(
                    "Data",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w600,
                        fontSize: 16),
                  ),
                  Text(
                    "*",
                    style: TextStyle(
                        color: Colors.red,
                        fontWeight: FontWeight.w600,
                        fontSize: 16),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 5,
                        blurStyle: BlurStyle.normal,
                        color: const Color(0xff000000).withOpacity(0.25),
                        offset: const Offset(-2, -1),
                      ),
                    ],
                  ),
                  child: const RoundedInputField(
                      hintText:
                          "Geben Sie hier Ihren vollständigen Namen ein")),
              const SizedBox(
                height: 10,
              ),
              const Row(
                children: [
                  Text(
                    "Email",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w600,
                        fontSize: 16),
                  ),
                  Text(
                    "*",
                    style: TextStyle(
                        color: Colors.red,
                        fontWeight: FontWeight.w600,
                        fontSize: 16),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 5,
                        blurStyle: BlurStyle.normal,
                        color: const Color(0xff000000).withOpacity(0.25),
                        offset: const Offset(-2, -1),
                      ),
                    ],
                  ),
                  child: const RoundedInputField(
                      hintText: "E-Mail Adresse eingeben")),
              const SizedBox(
                height: 10,
              ),
              const Row(
                children: [
                  Text(
                    "Nachricht",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w600,
                        fontSize: 16),
                  ),
                  Text(
                    "*",
                    style: TextStyle(
                        color: Colors.red,
                        fontWeight: FontWeight.w600,
                        fontSize: 16),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),

                    boxShadow: [
                      BoxShadow(
                        blurRadius: 5,
                        blurStyle: BlurStyle.normal,
                        color: const Color(0xff000000).withOpacity(0.25),
                        offset: const Offset(2, 2),
                      ),
                    ],
                  ),
                  child: const RoundedInputField(
                      hintText: "Geben Sie hier eine Nachricht ein...",minLines: 3,)),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(14.0),
                    ),
                    backgroundColor: const Color(0xff101453),
                    padding: const EdgeInsets.symmetric(
                        horizontal: 40, vertical: 15),
                    textStyle: const TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        color: Colors.white)),
                child: const Text(
                  "Nachricht senden",
                  style: TextStyle(color: Colors.white),
                ),
              ),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
