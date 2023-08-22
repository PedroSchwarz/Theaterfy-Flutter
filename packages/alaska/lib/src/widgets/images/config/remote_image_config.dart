mixin RemoteImageConfigMixin {
  String getBaseUrlForSize({required RemoteImageSize size}) {
    switch (size) {
      case RemoteImageSize.small:
        return 'https://image.tmdb.org/t/p/w154/';
      case RemoteImageSize.medium:
        return 'https://image.tmdb.org/t/p/w300/';
      case RemoteImageSize.large:
        return 'https://image.tmdb.org/t/p/w780/';
    }
  }
}

enum RemoteImageSize { small, medium, large }
