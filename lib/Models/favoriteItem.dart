// Define a model class to represent your favorite item data
class FavoriteItem {
  final String name;
  final String logo;
  final String? image;
  final String? video; // nullable for optional video field
  final String? sub_sector;
  final String sector;
  final String profile;
  final String tel;
  final String email;
  final String? website; // nullable for optional website field
  final String? category;
  final String? storage;
  FavoriteItem({
    required this.name,
    required this.logo,
    this.image,
    this.video,
    this.sub_sector,
    this.storage,
    required this.sector,
    required this.profile,
    required this.tel,
    required this.email,
    this.category,
    this.website,});}