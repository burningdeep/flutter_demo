import 'package:wechat_camera_picker/wechat_camera_picker.dart';

import 'package:camera/camera.dart' show CameraLensDirection, FlashMode;
import 'package:flutter/rendering.dart';

class KoreanCameraPickerTextDelegate extends CameraPickerTextDelegate {
  const KoreanCameraPickerTextDelegate();

  String get languageCode => 'en';

  /// Confirm string for the confirm button.
  /// 确认按钮的字段
  String get confirm => '확인';

  /// Tips above the shooting button before shooting.
  /// 拍摄前确认按钮上方的提示文字
  String get shootingTips => '';

  /// Tips with recording above the shooting button before shooting.
  /// 拍摄前确认按钮上方的提示文字（带录像）
  String get shootingWithRecordingTips => '';

  /// Tips with only recording above the shooting button before shooting.
  /// 拍摄前确认按钮上方的提示文字（仅录像）
  String get shootingOnlyRecordingTips => '';

  /// Tips with tap recording above the shooting button before shooting.
  /// 拍摄前确认按钮上方的提示文字（点击录像）
  String get shootingTapRecordingTips => '';

  /// Load failed string for item.
  /// 资源加载失败时的字段
  String get loadFailed => '';

  /// Semantics fields.
  ///
  /// Fields below are only for semantics usage. For customizable these fields,
  /// head over to [EnglishCameraPickerTextDelegate] for better understanding.
  String get sActionManuallyFocusHint => '手动聚焦';

  String get sActionPreviewHint => '预览';

  String get sActionRecordHint => '录像';

  String get sActionShootHint => '拍照';

  String get sActionShootingButtonTooltip => '拍照按钮';

  String get sActionStopRecordingHint => '停止录像';

  String sCameraLensDirectionLabel(CameraLensDirection value) {
    switch (value) {
      case CameraLensDirection.front:
        return '전면';
      case CameraLensDirection.back:
        return '후면';
      case CameraLensDirection.external:
        return '외장';
    }
  }

  String? sCameraPreviewLabel(CameraLensDirection? value) {
    if (value == null) {
      return null;
    }
    return '${sCameraLensDirectionLabel(value)}画面预览';
  }

  String sFlashModeLabel(FlashMode mode) {
    final String modeString;
    switch (mode) {
      case FlashMode.off:
        modeString = '켜짐';
        break;
      case FlashMode.auto:
        modeString = '자동';
        break;
      case FlashMode.always:
        modeString = '켜짐';
        break;
      case FlashMode.torch:
        modeString = '항상 켜짐';
        break;
    }
    return '플래시: $modeString';
  }

  String sSwitchCameraLensDirectionLabel(CameraLensDirection value) {
    return '카메라 전환';
  }
}
