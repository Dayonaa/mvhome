class DeviceQuery {
  final String name;
  final double width;
  final double height;

  const DeviceQuery({
    required this.name,
    required this.width,
    required this.height,
  });

  static const hd = DeviceQuery(name: "HD", width: 1280.0, height: 720.0);
  static const fullHD =
      DeviceQuery(name: "Full HD", width: 1920.0, height: 1080.0);
  static const wxga = DeviceQuery(name: "WXGA", width: 1366.0, height: 768.0);
  static const qhd = DeviceQuery(name: "QHD", width: 2560.0, height: 1440.0);
  static const uhd4k =
      DeviceQuery(name: "4K UHD", width: 3840.0, height: 2160.0);
  static const uhd8k =
      DeviceQuery(name: "8K UHD", width: 7680.0, height: 4320.0);
  static const iphoneSE =
      DeviceQuery(name: "iPhone SE", width: 750.0, height: 1334.0);
  static const iphone12 =
      DeviceQuery(name: "iPhone 12/13/14", width: 1170.0, height: 2532.0);
  static const galaxyS21 =
      DeviceQuery(name: "Galaxy S21", width: 2400.0, height: 1080.0);
  static const surfacePro7 =
      DeviceQuery(name: "Surface Pro 7", width: 2736.0, height: 1824.0);
  static const pixel4XL =
      DeviceQuery(name: "Pixel 4 XL", width: 3040.0, height: 1440.0);
  static const ipadAir =
      DeviceQuery(name: "iPad Air", width: 2360.0, height: 1640.0);

  static const List<DeviceQuery> values = [
    hd,
    fullHD,
    wxga,
    qhd,
    uhd4k,
    uhd8k,
    iphoneSE,
    iphone12,
    galaxyS21,
    surfacePro7,
    pixel4XL,
    ipadAir,
  ];
}
