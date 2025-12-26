// dart format width=80

/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: deprecated_member_use,directives_ordering,implicit_dynamic_list_literal,unnecessary_import

import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart' as _svg;
import 'package:vector_graphics/vector_graphics.dart' as _vg;

class $AssetsImagesGen {
  const $AssetsImagesGen();

  /// Directory path: assets/images/png
  $AssetsImagesPngGen get png => const $AssetsImagesPngGen();

  /// Directory path: assets/images/svg
  $AssetsImagesSvgGen get svg => const $AssetsImagesSvgGen();
}

class $AssetsImagesPngGen {
  const $AssetsImagesPngGen();

  /// File path: assets/images/png/ar_icon.png
  AssetGenImage get arIcon =>
      const AssetGenImage('assets/images/png/ar_icon.png');

  /// File path: assets/images/png/birthday.png
  AssetGenImage get birthday =>
      const AssetGenImage('assets/images/png/birthday.png');

  /// File path: assets/images/png/eating.png
  AssetGenImage get eating =>
      const AssetGenImage('assets/images/png/eating.png');

  /// File path: assets/images/png/en_icon.png
  AssetGenImage get enIcon =>
      const AssetGenImage('assets/images/png/en_icon.png');

  /// File path: assets/images/png/im_evently.png
  AssetGenImage get imEvently =>
      const AssetGenImage('assets/images/png/im_evently.png');

  /// File path: assets/images/png/meeting.png
  AssetGenImage get meeting =>
      const AssetGenImage('assets/images/png/meeting.png');

  /// File path: assets/images/png/route_logo.png
  AssetGenImage get routeLogo =>
      const AssetGenImage('assets/images/png/route_logo.png');

  /// File path: assets/images/png/sport.png
  AssetGenImage get sport => const AssetGenImage('assets/images/png/sport.png');

  /// File path: assets/images/png/work_shop.png
  AssetGenImage get workShop =>
      const AssetGenImage('assets/images/png/work_shop.png');

  /// List of all assets
  List<AssetGenImage> get values => [
    arIcon,
    birthday,
    eating,
    enIcon,
    imEvently,
    meeting,
    routeLogo,
    sport,
    workShop,
  ];
}

class $AssetsImagesSvgGen {
  const $AssetsImagesSvgGen();

  /// File path: assets/images/svg/google_icon.svg
  SvgGenImage get googleIcon =>
      const SvgGenImage('assets/images/svg/google_icon.svg');

  /// File path: assets/images/svg/ic_email.svg
  SvgGenImage get icEmail =>
      const SvgGenImage('assets/images/svg/ic_email.svg');

  /// File path: assets/images/svg/ic_password.svg
  SvgGenImage get icPassword =>
      const SvgGenImage('assets/images/svg/ic_password.svg');

  /// File path: assets/images/svg/person_icon.svg
  SvgGenImage get personIcon =>
      const SvgGenImage('assets/images/svg/person_icon.svg');

  /// File path: assets/images/svg/sel_fav_ic.svg
  SvgGenImage get selFavIc =>
      const SvgGenImage('assets/images/svg/sel_fav_ic.svg');

  /// File path: assets/images/svg/sel_home_ic.svg
  SvgGenImage get selHomeIc =>
      const SvgGenImage('assets/images/svg/sel_home_ic.svg');

  /// File path: assets/images/svg/sel_map_ic.svg
  SvgGenImage get selMapIc =>
      const SvgGenImage('assets/images/svg/sel_map_ic.svg');

  /// File path: assets/images/svg/sel_per_ic.svg
  SvgGenImage get selPerIc =>
      const SvgGenImage('assets/images/svg/sel_per_ic.svg');

  /// File path: assets/images/svg/sun.svg
  SvgGenImage get sun => const SvgGenImage('assets/images/svg/sun.svg');

  /// File path: assets/images/svg/un_sel_fav_ic.svg
  SvgGenImage get unSelFavIc =>
      const SvgGenImage('assets/images/svg/un_sel_fav_ic.svg');

  /// File path: assets/images/svg/un_sel_home_ic.svg
  SvgGenImage get unSelHomeIc =>
      const SvgGenImage('assets/images/svg/un_sel_home_ic.svg');

  /// File path: assets/images/svg/un_sel_map_ic.svg
  SvgGenImage get unSelMapIc =>
      const SvgGenImage('assets/images/svg/un_sel_map_ic.svg');

  /// File path: assets/images/svg/un_sel_per_ic.svg
  SvgGenImage get unSelPerIc =>
      const SvgGenImage('assets/images/svg/un_sel_per_ic.svg');

  /// List of all assets
  List<SvgGenImage> get values => [
    googleIcon,
    icEmail,
    icPassword,
    personIcon,
    selFavIc,
    selHomeIc,
    selMapIc,
    selPerIc,
    sun,
    unSelFavIc,
    unSelHomeIc,
    unSelMapIc,
    unSelPerIc,
  ];
}

class Assets {
  const Assets._();

  static const $AssetsImagesGen images = $AssetsImagesGen();
}

class AssetGenImage {
  const AssetGenImage(
    this._assetName, {
    this.size,
    this.flavors = const {},
    this.animation,
  });

  final String _assetName;

  final Size? size;
  final Set<String> flavors;
  final AssetGenImageAnimation? animation;

  Image image({
    Key? key,
    AssetBundle? bundle,
    ImageFrameBuilder? frameBuilder,
    ImageErrorWidgetBuilder? errorBuilder,
    String? semanticLabel,
    bool excludeFromSemantics = false,
    double? scale,
    double? width,
    double? height,
    Color? color,
    Animation<double>? opacity,
    BlendMode? colorBlendMode,
    BoxFit? fit,
    AlignmentGeometry alignment = Alignment.center,
    ImageRepeat repeat = ImageRepeat.noRepeat,
    Rect? centerSlice,
    bool matchTextDirection = false,
    bool gaplessPlayback = true,
    bool isAntiAlias = false,
    String? package,
    FilterQuality filterQuality = FilterQuality.medium,
    int? cacheWidth,
    int? cacheHeight,
  }) {
    return Image.asset(
      _assetName,
      key: key,
      bundle: bundle,
      frameBuilder: frameBuilder,
      errorBuilder: errorBuilder,
      semanticLabel: semanticLabel,
      excludeFromSemantics: excludeFromSemantics,
      scale: scale,
      width: width,
      height: height,
      color: color,
      opacity: opacity,
      colorBlendMode: colorBlendMode,
      fit: fit,
      alignment: alignment,
      repeat: repeat,
      centerSlice: centerSlice,
      matchTextDirection: matchTextDirection,
      gaplessPlayback: gaplessPlayback,
      isAntiAlias: isAntiAlias,
      package: package,
      filterQuality: filterQuality,
      cacheWidth: cacheWidth,
      cacheHeight: cacheHeight,
    );
  }

  ImageProvider provider({AssetBundle? bundle, String? package}) {
    return AssetImage(_assetName, bundle: bundle, package: package);
  }

  String get path => _assetName;

  String get keyName => _assetName;
}

class AssetGenImageAnimation {
  const AssetGenImageAnimation({
    required this.isAnimation,
    required this.duration,
    required this.frames,
  });

  final bool isAnimation;
  final Duration duration;
  final int frames;
}

class SvgGenImage {
  const SvgGenImage(this._assetName, {this.size, this.flavors = const {}})
    : _isVecFormat = false;

  const SvgGenImage.vec(this._assetName, {this.size, this.flavors = const {}})
    : _isVecFormat = true;

  final String _assetName;
  final Size? size;
  final Set<String> flavors;
  final bool _isVecFormat;

  _svg.SvgPicture svg({
    Key? key,
    bool matchTextDirection = false,
    AssetBundle? bundle,
    String? package,
    double? width,
    double? height,
    BoxFit fit = BoxFit.contain,
    AlignmentGeometry alignment = Alignment.center,
    bool allowDrawingOutsideViewBox = false,
    WidgetBuilder? placeholderBuilder,
    String? semanticsLabel,
    bool excludeFromSemantics = false,
    _svg.SvgTheme? theme,
    _svg.ColorMapper? colorMapper,
    ColorFilter? colorFilter,
    Clip clipBehavior = Clip.hardEdge,
    @deprecated Color? color,
    @deprecated BlendMode colorBlendMode = BlendMode.srcIn,
    @deprecated bool cacheColorFilter = false,
  }) {
    final _svg.BytesLoader loader;
    if (_isVecFormat) {
      loader = _vg.AssetBytesLoader(
        _assetName,
        assetBundle: bundle,
        packageName: package,
      );
    } else {
      loader = _svg.SvgAssetLoader(
        _assetName,
        assetBundle: bundle,
        packageName: package,
        theme: theme,
        colorMapper: colorMapper,
      );
    }
    return _svg.SvgPicture(
      loader,
      key: key,
      matchTextDirection: matchTextDirection,
      width: width,
      height: height,
      fit: fit,
      alignment: alignment,
      allowDrawingOutsideViewBox: allowDrawingOutsideViewBox,
      placeholderBuilder: placeholderBuilder,
      semanticsLabel: semanticsLabel,
      excludeFromSemantics: excludeFromSemantics,
      colorFilter:
          colorFilter ??
          (color == null ? null : ColorFilter.mode(color, colorBlendMode)),
      clipBehavior: clipBehavior,
      cacheColorFilter: cacheColorFilter,
    );
  }

  String get path => _assetName;

  String get keyName => _assetName;
}
