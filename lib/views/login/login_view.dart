import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get_it/get_it.dart';
import 'package:resource_manager/views/home/navigator.dart';
import 'package:resource_manager/views/login/store/login_store.dart';
import 'package:resource_manager/views/widgets/messenger.dart';

import '../../core/library/strings.dart' as strings;
import '../../core/utils/media_query.dart' as ui;
import '../../core/library/assets.dart' as assets;
import '../../core/theme/theme.dart' as theme;
import '../../core/utils/ui_padding.dart';

class LoginView extends StatelessWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: theme.lightMainColor,
      body: _body(context),
    );
  }

  Widget _body(BuildContext context) {
    LoginStore _loginStore = GetIt.I<LoginStore>();
    return SingleChildScrollView(
      child: SizedBox(
        height: ui.getHeigth(context, height: 100),
        width: ui.getWidth(context, width: 100),
        child: Stack(
          children: [
            Container(
              height: ui.getHeigth(context, height: 50),
              decoration: const BoxDecoration(
                color: theme.mainColor,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(25),
                  bottomRight: Radius.circular(25),
                ),
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: Container(
                height: ui.getHeigth(context, height: 60),
                width: ui.getWidth(context, width: 80),
                decoration: BoxDecoration(
                  color: theme.whiteColor,
                  borderRadius: BorderRadius.circular(25),
                ),
                child: Form(
                  autovalidateMode: AutovalidateMode.always,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: ui.getHeigth(context, height: 30),
                        width: ui.getWidth(context, width: 40),
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            fit: BoxFit.contain,
                            image: AssetImage(assets.logoIcon),
                          ),
                        ),
                      ),
                      TextFormField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          filled: true,
                          label: const Text(
                            strings.loginViewUsername,
                            style: TextStyle(
                              color: theme.mainColor,
                            ),
                          ),
                          icon: const Icon(
                            FontAwesomeIcons.userLarge,
                            color: theme.mainColor,
                          ),
                          enabledBorder: UnderlineInputBorder(
                            borderRadius: BorderRadius.circular(25),
                            borderSide: BorderSide(
                              color: Colors.black,
                              width: ui.getWidth(context, width: 0.3),
                            ),
                          ),
                        ),
                        onChanged: (value) => _loginStore.setEmailAddress(value),
                      ).horizontalPadding(3, context),
                      TextFormField(
                        obscureText: true,
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          filled: true,
                          label: const Text(
                            strings.loginViewPassword,
                            style: TextStyle(
                              color: theme.mainColor,
                            ),
                          ),
                          icon: const Icon(
                            FontAwesomeIcons.lock,
                            color: theme.mainColor,
                          ),
                          enabledBorder: UnderlineInputBorder(
                            borderRadius: BorderRadius.circular(25),
                            borderSide: BorderSide(
                              color: theme.blackColor,
                              width: ui.getWidth(context, width: 0.3),
                            ),
                          ),
                        ),
                        onChanged: (value) => _loginStore.setPassword(value),
                      ).symetricPadding(2, 3, context),
                      Container(
                        height: ui.getHeigth(context, height: 5),
                        width: ui.getWidth(context, width: 60),
                        decoration: BoxDecoration(
                          color: theme.mainColor,
                          borderRadius: BorderRadius.circular(25),
                        ),
                        child: TextButton(
                          onPressed: () => _loginStore.login().whenComplete(() {
                            if (_loginStore.loginStatus == "sucess") {
                              Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const NavigatorView()));
                            } else {
                              Messenger().errorMessenger(context, text: _loginStore.loginStatus);
                            }
                          }),
                          child: Text(
                            strings.enterButton,
                            style: TextStyle(fontSize: ui.getHeigth(context, height: 2), color: theme.whiteColor),
                          ),
                        ),
                      ).verticalPadding(3, context)
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
