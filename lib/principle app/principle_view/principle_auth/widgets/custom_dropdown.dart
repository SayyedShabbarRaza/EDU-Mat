import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomDropDown extends StatelessWidget {
  final String label;
  final RxString selectedItem;
  final List<String> options;
  final Function(String?) onChanged;

  const CustomDropDown({
    Key? key,
    required this.label,
    required this.selectedItem,
    required this.options,
    required this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: const TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w400,
            color: Colors.grey,
          ),
        ),
        const SizedBox(height: 8),
        Container(
          height: Get.height * .06,
          padding: const EdgeInsets.symmetric(horizontal: 12),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: Colors.grey.shade400),
            color: Colors.white,
          ),
          child: Obx(
            () => DropdownButton<String>(
              value: selectedItem.value.isEmpty ? null : selectedItem.value,
              hint: Text(
                "Select $label",
                style: const TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                  color: Colors.grey,
                ),
              ),
              isExpanded: true,
              icon: const Icon(
                Icons.arrow_forward_ios_sharp,
                size: 20,
              ),
              onChanged: onChanged,
              items: options.map((String option) {
                return DropdownMenuItem<String>(
                  value: option,
                  child: Text(option,
                      style: const TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: Colors.grey,
                      )),
                );
              }).toList(),
              underline: const SizedBox(), // Remove underline
              dropdownColor: Colors.white, // Dropdown background color
            ),
          ),
        ),
      ],
    );
  }
}
