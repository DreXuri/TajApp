import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:todoapp/general/utils/color_constant.dart';
import 'package:todoapp/general/widgets/button.dart';
import 'package:todoapp/general/widgets/custome_text.dart';
import 'package:todoapp/general/widgets/height_space.dart';

Future<void> showDeleteDialog(BuildContext context, String id) async {
  await showDialog(
    context: context,
    builder: (context) {
      return AlertDialog(
        content: CancelDialogWidget(
          productId: id,
          // farmHeader: {},
        ),
      );
    },
  );
}

class CancelDialogWidget extends StatefulWidget {
  final String productId;
  const CancelDialogWidget({
    Key? key,
    required this.productId,
  }) : super(key: key);

  @override
  _CancelDialogWidgetState createState() => _CancelDialogWidgetState();
}

class _CancelDialogWidgetState extends State<CancelDialogWidget> {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: AppConst.kWhite,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const HeightSpace(
            hight: 20,
          ),
          CustomText(
            data: 'Delete Advert?',
            textAlign: TextAlign.center,
            fontWeight: FontWeight.w600,
            fontSize: 16.sp,
            color: AppConst.kTextBlack,
          ),
          const HeightSpace(
            hight: 40,
          ),
          CustomText(
            data:
                'If you delete your Advert, you won\'t be unable to undo this',
            textAlign: TextAlign.center,
            fontWeight: FontWeight.w400,
            color: AppConst.kTextGray,
            fontSize: 14.sp,
          ),
          const HeightSpace(
            hight: 20,
          ),
          // Consumer(builder: (_, WidgetRef ref, __) {
          //   final state = ref.watch(addProductControllerProvider);

          //   ref.listen(addProductControllerProvider, (previous, next) {
          //     next.when(
          //       initial: () => null,
          //       loading: () => null,
          //       loaded: (advertSuccessModel) {
          //         Navigator.of(context).pop(true);
          //         showCustomSnackBarAfterFrame(
          //             context, advertSuccessModel.message);
          //       },
          //       error: (error) {
          //         Navigator.of(context).pop();
          //         showCustomSnackBarAfterFrame(context, error, isError: true);
          //       },
          //     );
          //   });

          //   return state.when(
          //     initial: () => _deleteAdvertButton(ref),
          //     loading: () => Loader(),
          //     loaded: (advertSuccessModel) => _deleteAdvertButton(ref),
          //     error: (error) {
          //       return _deleteAdvertButton(ref);
          //     },
          //   );
          // }),

          const HeightSpace(),
          Container(
            height: 48.0.h,
            child: PrimaryButton(
              hasOuterPadding: false,
              text: 'Cancel',
              backgroundColor: AppConst.kWhite,
              borderColor: AppConst.kPrimary,
              textColor: AppConst.kPrimary,
              onPressed: () {
                Navigator.of(context).pop(false);
              },
            ),
          ),
        ],
      ),
    );
  }

  // Widget _deleteAdvertButton() {
  // Widget _deleteAdvertButton(WidgetRef ref) {
  //   return Container(
  //     height: 48.0.h,
  //     child: PrimaryButton(
  //       textColor: AppConst.kWhite,
  //       text: 'Delete Advert',
  //       backgroundColor: AppConst.kPrimary,
  //       hasOuterPadding: false,
  //       onPressed: () {
  //         ref
  //             .read(addProductControllerProvider.notifier)
  //             .deleteProduct(widget.productId);

  //         ref.read(advertAllControllerProvider.notifier).getAdvertCategories(
  //               AdvertParams(category: '', query: ''),
  //             );
  //       },
  //     ),
  //   );
  // }
}
