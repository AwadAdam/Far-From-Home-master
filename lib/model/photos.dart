class PhotoResponse {
  String id;
  String createdAt;
  String updatedAt;
  int width;
  int height;
  String color;
  String description;
  PhotoUrls urls;
  User user;

  PhotoResponse({
    required this.id,
    required this.createdAt,
    required this.updatedAt,
    required this.width,
    required this.height,
    required this.color,
    required this.description,
    required this.urls,
    required this.user,
  });

  static PhotoResponse fromJson(Map<String, dynamic> json) {
    return PhotoResponse(
      id: json['id'],
      createdAt: json['created_at'],
      updatedAt: json['updated_at'],
      width: json['width'],
      height: json['height'],
      color: json['color'],
      description: json['description'],
      user: User.fromJson(json['user']),
      urls: PhotoUrls.fromJson(json['urls']),
    );
  }
}


class User {
  String username;
  String name;
  String bio;
  String portfolioUrl;

  User({required this.username, required this.name, required this.bio, required this.portfolioUrl});

  static User fromJson(Map<String, dynamic> json) {
    return User(
      username: json['username'],
      name: json['name'],
      bio: json['bio'],
      portfolioUrl: json['portfolio_url'],
    );
  }
}


class PhotoUrls {
  String raw;
  String full;
  String regular;
  String small;
  String thumb;

  PhotoUrls({required this.raw, required this.full, required this.regular, required this.small, required this.thumb});

  static PhotoUrls fromJson(Map<String, dynamic> json) {
    return PhotoUrls(
      raw: json['raw'],
      full: json['full'],
      regular: json['regular'],
      small: json['small'],
      thumb: json['thumb'],
    );
  }
}