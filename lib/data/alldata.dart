class Model {
  final int id;
  final String image;
  final String captions;
  final bool bestseller;
  final bool toprated;
  final bool recenrlyviewerl;
  final List<String> detial;
  final List<String> descraptions;
  const Model(this.image, this.id, this.bestseller, this.captions,
      this.recenrlyviewerl, this.toprated, this.detial, this.descraptions);
}

const List data = <Model>[
  Model(
    "assets/images/ph5.jpg",
    1,
    false,
    "ProArt Studiobook pro 16",
    true,
    true,
    [
      "World-leading 16” 3.2K 120 Hz OLED touchscreen",
      "13th Gen​ Intel® Core™ ​ i9-13980HX",
      "NVIDIA RTX™ 3000 Ada Laptop GPU",
      "180° lay-flat hinge",
      "8 TB SSD",
      "64 GB RAM",
      "ASUS IceCool Pro thermal technology",
    ],
    [
      "The new ProArt Studiobook Pro 16 OLED is a powerful mobile workstation that exceeds all expectations and goes far beyond the extraordinary. Its unstoppable 13th Gen Intel® Core™ i9-13980HX processor, pro-grade NVIDIA RTX™ 3000 Ada Generation Laptop GPU, vast amounts of memory and ultrafast storage will supercharge your content creation workflow and let your imagination do what it does best. The certified color-accurate 16-inch 3.2K 120 Hz OLED touchscreen will do full justice to your creative vision, and you'll enjoy unrivaled precision control of your apps with the large, stylus-compatible haptic touchpad and intuitive ASUS Dial rotary control. Take your creativity to the next level with ProArt Studiobook Pro 16 OLED"
    ],
  ),
  Model(
    "assets/images/ph4.jpg",
    2,
    true,
    "Asus Zenbook Pro 16X Oled",
    false,
    true,
    ["", ""],
    ["", ""],
  ),
  Model(
    "assets/images/ph2.jpg",
    3,
    false,
    "Zenbook Pro 14 Duo Oled",
    true,
    true,
    ["", ""],
    ["", ""],
  ),
  Model(
    "assets/images/ph3.jpg",
    4,
    true,
    "MacBook Pro 13",
    false,
    true,
    ["", ""],
    ["", ""],
  ),
];
