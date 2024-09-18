import 'package:flutter/material.dart';
import 'package:school_system/utils/app_color.dart';
import 'package:school_system/utils/app_custom_text_style.dart';
import 'package:school_system/widgets/App_custom_text.dart';

class DesignedCard extends StatefulWidget {
  final String title;
  final String subtitle;
  final String image;
  final Color color;
  final Color borderColor;
  final VoidCallback voidCallbackAction;

  const DesignedCard({
    super.key,
    required this.image,
    required this.title,
    required this.subtitle,
    required this.color,
    required this.borderColor,
    required this.voidCallbackAction,
  });

  @override
  _DesignedCardState createState() => _DesignedCardState();
}

class _DesignedCardState extends State<DesignedCard> {
  bool isSelected = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          isSelected = !isSelected;
        });
        widget.voidCallbackAction();
      },
      child: Card(
        child: Container(
          height: 130,
          width: MediaQuery.of(context).size.width,
          margin: const EdgeInsets.only(bottom: 0),
          decoration: BoxDecoration(
            color: widget.color,
            borderRadius: BorderRadius.circular(5),
            border: isSelected
                ? Border.all(
                    color: widget.borderColor,
                    width: 2.0,
                  )
                : null,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 23),
                        child: Align(
                          alignment: Alignment.bottomCenter,
                          child: Container(
                            height: 80,
                            width: 80,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage(
                                  widget.image,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CustomText(
                        text: widget.title,
                        textStyle: AppTextStyles().heading(
                            fontWeight: FontWeight.w700,
                            fontSize: 20,
                            textColor: widget.color.withOpacity(1)),
                      ),
                      CustomText(
                        text: widget.subtitle,
                        textStyle: AppTextStyles().heading(
                            fontWeight: FontWeight.w700,
                            fontSize: 15,
                            textColor: widget.color.withOpacity(1)),
                      ),
                      // IconButton(
                      //   onPressed: widget.voidCallbackAction,
                      //   icon: Icon(
                      //     Icons.arrow_forward_ios_outlined,
                      //     color: widget.color,
                      //     size: 10,
                      //   ),
                      // ),
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
