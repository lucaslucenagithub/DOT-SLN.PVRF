import 'package:codebase/widgets/cards/card_mobile.dart';
import 'package:codebase/widgets/cards/card_tablet_desktop.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class Services extends StatelessWidget {
  const Services({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Axis orientation = MediaQuery.of(context).size.width <= 1048
        ? Axis.vertical
        : Axis.horizontal;

    return Flex(direction: Axis.horizontal, children: [
      Expanded(
        child: Container(
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
                              fontSize: 48, color: Colors.lightBlue.shade900),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 5, bottom: 40),
                        height: 5,
                        width: 100,
                        color: Colors.amber[800],
                      )
                    ])),
                ResponsiveBuilder(
                  builder: (context, sizingInformation) {
                    if (sizingInformation.deviceScreenType ==
                        DeviceScreenType.mobile) {
                      return Flex(
                          direction: orientation,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [CardMobile(), CardMobile(), CardMobile()]);
                    }

                    return Flex(
                        direction: orientation,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          CardTabletDesktop(
                            titleText: 'Projetos, construções e reformas',
                            subTitleText:
                                'Lorem Ipsum is simply dummy text of the printing and typesetting industry. dummy text of the printing and typesetting industry. Lore. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s.',
                            backgroundImage: AssetImage(
                                '../../assets/services/yellow-hat/construction-plan-calculator-hard-hat-project-isto.jpg'),
                          ),
                          CardTabletDesktop(
                            titleText: 'Reforços estruturais',
                            subTitleText:
                                'Lorem Ipsum is simply dummy text of the printing and typesetting industry. dummy text of the printing and typesetting industry. Lore. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s.',
                            backgroundImage: AssetImage(
                                '../../assets/services/structural/Steel_construction.jpg'),
                          ),
                          CardTabletDesktop(
                            titleText: 'Laudos e perícias',
                            subTitleText:
                                'Lorem Ipsum is simply dummy text of the printing and typesetting industry. dummy text of the printing and typesetting industry. Lore. Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s.',
                            backgroundImage: AssetImage(
                                '../../assets/services/writting-papper/laudos-pericias.jpg'),
                          )
                        ]);
                  },
                )
              ],
            )),
      )
    ]);
  }
}
