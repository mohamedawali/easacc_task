import 'package:app_settings/app_settings.dart';
import 'package:easacc_task/core/enum/access_enum.dart';
import 'package:easacc_task/feature/setting/presentation/cubit/setting_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/widget/custom_button.dart';

class SettingBody extends StatelessWidget {
  SettingBody({super.key});
  TextEditingController urlController = TextEditingController();
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    SettingCubit settingCubit = BlocProvider.of(context);
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Form(
            key: formKey,
            child: TextFormField(
              controller: urlController,
              validator: (text) =>
                  text!.startsWith('https://') ? null : 'not correct',
              decoration: InputDecoration(
                  contentPadding: const EdgeInsets.all(10),
                  hintText: 'https://www.aaa.com',
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.r))),
            ),
          ),
          SizedBox(
            height: 30.h,
          ),
          CustomButton(
              title: 'Search',
              onPress: () {
                if (formKey.currentState!.validate()) {
                  Navigator.pushNamed(
                      context,'/webPage'
                );
                }
              }),
          SizedBox(
            height: 30.h,
          ),
          DropdownMenu(
              label: const Text('Access NetWork'),
              dropdownMenuEntries: AccessEnum.values
                  .map((item) => DropdownMenuEntry(
                        label: item.name,
                        value: item.name,
                      ))
                  .toList(),
              onSelected: (item) async {
                if (item == AccessEnum.values.first.name) {
                  AppSettings.openAppSettings(type: AppSettingsType.wifi);
                } else {
                  AppSettings.openAppSettings(type: AppSettingsType.bluetooth);
                }
              })
        ],
      ),
    );
  }
}
