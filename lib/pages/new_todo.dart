import 'package:flutter/material.dart';
import 'package:todolist_w_provider/ui/color_consts.dart';

class NewTodoBottomForm extends StatelessWidget {
  const NewTodoBottomForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return FractionallySizedBox(
      heightFactor: 0.9,
      widthFactor: 1,
      child: SafeArea(
        bottom: true,
        child: Container(
          decoration: BoxDecoration(
            border: Border.all(
              color: const Color.fromARGB(255, 158, 158, 158),
              width: 2.0,
            ),
            borderRadius: const BorderRadius.all(Radius.circular(20.0)),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(top: 20.0, bottom: 20.0),
                child: IconButton(
                  onPressed: () => {},
                  icon: Icon(
                    Icons.arrow_back,
                    size: 35,
                    color: primaryColor,
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(left: 14.0, right: 14.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        child: Text(
                          "Todo app design",
                          style: TextStyle(
                            color: primaryColor,
                            fontSize: 23.0,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                      SizedBox(
                        child: Padding(
                          // List horizontale avec l'icone calendrier et la date
                          padding:
                              const EdgeInsets.only(top: 8.0, bottom: 16.0),
                          child: Row(
                            children: [
                              Icon(Icons.calendar_month_outlined,
                                  size: 20.0, color: primaryColor),
                              const SizedBox(
                                width: 8.0,
                              ),
                              Text(
                                "20 Juillet 2024",
                                style: TextStyle(
                                  color: subtitleTextColor,
                                  fontSize: 11.0,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          decoration: const BoxDecoration(
                            color: Color.fromARGB(255, 37, 37, 37),
                            borderRadius: BorderRadius.all(
                              Radius.circular(20.0),
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: TextField(
                              cursorColor: Colors.white,
                              keyboardType: TextInputType.multiline,
                              decoration: const InputDecoration(
                                enabledBorder: UnderlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Colors.transparent),
                                ),
                                focusedBorder: UnderlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Colors.transparent),
                                ),
                              ),
                              minLines:
                                  1, //Normal textInputField will be displayed
                              maxLines:
                                  null, // when user presses enter it will adapt to it
                              style: TextStyle(
                                color: primaryColor,
                                fontSize: 14.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10.0, bottom: 10.0),
                        child: SizedBox(
                          // List horizontale des 2 boutons supprimer et éditer
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              SizedBox( // LEs 2 bouton de suppression et modification d'un todo
                                width: 100.0,
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Icon(
                                      Icons.delete,
                                      size: 25,
                                      color: primaryColor,
                                    ),
                                    Icon(
                                      Icons.edit,
                                      size: 25,
                                      color: primaryColor,
                                    ),
                                  ],
                                ),
                              ),
                              ElevatedButton(
                                // Bouton valider
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: primaryColor,
                                  textStyle: const TextStyle(
                                    fontSize: 12.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                child: const Row(
                                  children: [
                                    Icon(
                                      Icons.check,
                                      color: Colors.black,
                                      size: 15.0,
                                    ),
                                    SizedBox(
                                      width: 4.0,
                                    ),
                                    Text(
                                      'Valider',
                                      style: TextStyle(
                                        color: Colors.black,
                                      ),
                                    ),
                                  ],
                                ),
                                onPressed: () => Navigator.pop(context),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
