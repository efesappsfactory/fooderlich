class AppLink {
  static const String kHomePath = "/home";
  static const String kOnboardingPath = "/onbarding";
  static const String kLoginPath = "/login";
  static const String kProfilePath = "/profile";
  static const String kItemPath = "/item";
  static const String kTabParam = "tab";
  static const String kIdParam = "id";

  String? location;
  int? currentTab;
  String? itemId;

  AppLink({
    this.location,
    this.currentTab,
    this.itemId,
  });

  static AppLink fromLocation(String? location) {
    location = Uri.decodeFull(location ?? "");

    final uri = Uri.parse(location);
    final params = uri.queryParameters;

    final currentTab = int.tryParse(params[AppLink.kTabParam] ?? "");
    final itemId = params[AppLink.kIdParam];

    final link = AppLink(
      location: uri.path,
      currentTab: currentTab,
      itemId: itemId,
    );

    return link;
  }
}
