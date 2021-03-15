import 'package:codebase/widgets/cards/card_desktop.dart';
import 'package:codebase/widgets/cards/card_mobile.dart';
import 'package:codebase/widgets/cards/card_tablet.dart';
import 'package:flutter/material.dart';

class Services extends StatelessWidget {
  const Services({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Axis orientation = MediaQuery.of(context).size.width <= 852
        ? Axis.vertical
        : Axis.horizontal;

    double paddingLeftRight = MediaQuery.of(context).size.width <= 682 ? 50 : 0;

    double titleSize = MediaQuery.of(context).size.width <= 600
        ? 32
        : MediaQuery.of(context).size.width >= 601 &&
                MediaQuery.of(context).size.width <= 1048
            ? 42
            : 48;

    Widget responsivinessCards() {
      if (MediaQuery.of(context).size.width >= 853 &&
          MediaQuery.of(context).size.width <= 1048) {
        return Flex(
            direction: orientation,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CardTablet(
                titleText: 'Projetos, construções e reformas',
                subTitleText:
                    'Lorem Ipsum is simply dummy text of the printing and typesetting industry. dummy text of the printing and typesetting industry. Lore. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s.',
                backgroundImage: AssetImage(
                    '../../assets/services/yellow-hat/construction-plan-calculator-hard-hat-project-isto.jpg'),
              ),
              CardTablet(
                titleText: 'Reforços estruturais',
                subTitleText:
                    'Lorem Ipsum is simply dummy text of the printing and typesetting industry. dummy text of the printing and typesetting industry. Lore. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s.',
                backgroundImage: AssetImage(
                    '../../assets/services/structural/Steel_construction.jpg'),
              ),
              CardTablet(
                titleText: 'Laudos e perícias',
                subTitleText:
                    'Lorem Ipsum is simply dummy text of the printing and typesetting industry. dummy text of the printing and typesetting industry. Lore. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s.',
                backgroundImage: AssetImage(
                    '../../assets/services/writting-papper/laudos-pericias.jpg'),
              )
            ]);
      }

      if (MediaQuery.of(context).size.width <= 852) {
        return Flex(
            direction: orientation,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CardMobile(
                titleText: 'Projetos, construções e reformas',
                subTitleText:
                    'Lorem Ipsum is simply dummy text of the printing and typesetting industry. dummy text of the printing and typesetting industry. Lore. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s.',
                backgroundImage: AssetImage(
                    '../../assets/services/yellow-hat/construction-plan-calculator-hard-hat-project-isto.jpg'),
              ),
              CardMobile(
                titleText: 'Reforços estruturais',
                subTitleText:
                    'Lorem Ipsum is simply dummy text of the printing and typesetting industry. dummy text of the printing and typesetting industry. Lore. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s.',
                backgroundImage: AssetImage(
                    '../../assets/services/structural/Steel_construction.jpg'),
              ),
              CardMobile(
                titleText: 'Laudos e perícias',
                subTitleText:
                    'Lorem Ipsum is simply dummy text of the printing and typesetting industry. dummy text of the printing and typesetting industry. Lore. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s.',
                backgroundImage: AssetImage(
                    '../../assets/services/writting-papper/laudos-pericias.jpg'),
              )
            ]);
      }

      return Flex(
          direction: orientation,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            CardDesktop(
              titleText: 'Projetos, construções e reformas',
              subTitleText:
                  'Lorem Ipsum is simply dummy text of the printing and typesetting industry. dummy text of the printing and typesetting industry. Lore. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s.',
              backgroundImage: AssetImage(
                  '../../assets/services/yellow-hat/construction-plan-calculator-hard-hat-project-isto.jpg'),
            ),
            CardDesktop(
              titleText: 'Reforços estruturais',
              subTitleText:
                  'Lorem Ipsum is simply dummy text of the printing and typesetting industry. dummy text of the printing and typesetting industry. Lore. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s.',
              backgroundImage: AssetImage(
                  '../../assets/services/structural/Steel_construction.jpg'),
            ),
            CardDesktop(
              titleText: 'Laudos e perícias',
              subTitleText:
                  'Lorem Ipsum is simply dummy text of the printing and typesetting industry. dummy text of the printing and typesetting industry. Lore. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s.',
              backgroundImage: AssetImage(
                  '../../assets/services/writting-papper/laudos-pericias.jpg'),
            )
          ]);
    }

    return Flex(direction: Axis.horizontal, children: [
      Expanded(
        child: Container(
            padding: EdgeInsets.only(
                left: paddingLeftRight, right: paddingLeftRight),
            alignment: Alignment.center,
            color: Colors.white,
            child: Column(
              children: [
                Container(
                    margin: EdgeInsets.only(top: 5, bottom: 40),
                    child: Column(children: [
                      Container(
                        margin: EdgeInsets.only(top: 40),
                        child: Text(
                          'Serviços',
                          style: TextStyle(
                              fontSize: titleSize,
                              color: Colors.lightBlue.shade900),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 5, bottom: 40),
                        height: 5,
                        width: 100,
                        color: Colors.amber[800],
                      )
                    ])),
                responsivinessCards()
              ],
            )),
      )
    ]);
  }
}
