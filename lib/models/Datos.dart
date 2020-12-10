import 'package:flutter/material.dart';
import 'dart:convert';

Usuarios usuariosFromJson(String str) => Usuarios.fromJson(json.decode(str));

String usuariosToJson(Usuarios data) => json.encode(data.toJson());

class Usuarios {
    Usuarios({
        this.results,
    });

    List<Result> results;

    factory Usuarios.fromJson(Map<String, dynamic> json) => Usuarios(
        results: List<Result>.from(json["results"].map((x) => Result.fromJson(x)))
    );

    Map<String, dynamic> toJson() => {
        "results": List<dynamic>.from(results.map((x) => x.toJson())),
    };
}

class Result {
    Result({
        this.gender,
        this.name,
        this.email,
        this.phone,
        this.cell,
        this.picture,
    });

    String gender;
    Name name;
    String email;
    String phone;
    String cell;
    Picture picture;

    factory Result.fromJson(Map<String, dynamic> json) => Result(
        gender: json["gender"],
        name: Name.fromJson(json["name"]),
        email: json["email"],
        phone: json["phone"],
        cell: json["cell"],
        picture: Picture.fromJson(json["picture"]),
    );

    Map<String, dynamic> toJson() => {
        "gender": gender,
        "name": name.toJson(),
        "email": email,
        "phone": phone,
        "cell": cell,
        "picture": picture.toJson(),
    };
}

class Name {
    Name({
        this.title,
        this.first,
        this.last,
    });

    String title;
    String first;
    String last;

    factory Name.fromJson(Map<String, dynamic> json) => Name(
        title: json["title"],
        first: json["first"],
        last: json["last"],
    );

    Map<String, dynamic> toJson() => {
        "title": title,
        "first": first,
        "last": last,
    };
}

class Picture {
    Picture({
        this.large,
        this.medium,
        this.thumbnail,
    });

    String large;
    String medium;
    String thumbnail;

    factory Picture.fromJson(Map<String, dynamic> json) => Picture(
        large: json["large"],
        medium: json["medium"],
        thumbnail: json["thumbnail"],
    );

    Map<String, dynamic> toJson() => {
        "large": large,
        "medium": medium,
        "thumbnail": thumbnail,
    };
}
