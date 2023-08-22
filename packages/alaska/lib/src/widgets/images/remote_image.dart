import 'package:alaska/src/widgets/images/config/remote_image_config.dart';
import 'package:flutter/material.dart';

class RemoteImage extends StatelessWidget with RemoteImageConfigMixin {
  final String path;
  final RemoteImageSize size;

  const RemoteImage({
    super.key,
    required this.path,
    this.size = RemoteImageSize.small,
  });

  @override
  Widget build(BuildContext context) {
    final url = '${getBaseUrlForSize(size: size)}/$path';
    return Image.network(url, fit: BoxFit.cover);
  }
}
