// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility that Flutter provides. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';

import 'package:telling/models/post_model.dart';
import 'package:telling/models/profile_model.dart';

void main() {
  test("Probando parsear post", () async {
    PostModel.fromMap(jsonDecode('''
    {
        "id": 1,
        "user_id": 11,
        "title": "Primer post",
        "cover_url": "&cGcq5iclZ3bj9SMvQ3cvB3L",
        "body": "vacío",
        "visibility": 1,
        "plan": null,
        "type": null,
        "created_at": "2021-12-27T19:49:58.000000Z",
        "updated_at": "2021-12-27T19:49:58.000000Z",
        "likesCount": 0,
        "favsCount": 0,
        "user": {
            "id": 11,
            "name": "Marcos Javier",
            "username": "marcosjavier1",
            "email": "mjv87ster@gmail.com",
            "email_verified_at": "2021-12-27T20:23:40.000000Z",
            "email_notification": 1,
            "pic_url": null,
            "cover_url": null,
            "bio": null,
            "web": null,
            "location": null,
            "birth": null,
            "phone": null,
            "email_mp": null,
            "facebook_id": null,
            "facebook_token": null,
            "facebook_refresh_token": null,
            "google_id": null,
            "google_token": null,
            "google_refresh_token": null,
            "created_at": "2021-12-27T19:49:31.000000Z",
            "updated_at": "2021-12-27T20:23:40.000000Z",
            "topics": []
        },
        "likes": [],
        "favs": [],
        "comments": [
            {
                "id": 1,
                "user_id": 11,
                "post_id": 1,
                "comment": "nuevo comentario",
                "created_at": "2021-12-27T20:05:07.000000Z",
                "updated_at": "2021-12-27T20:05:07.000000Z",
                "user": {
                    "id": 11,
                    "name": "Marcos Javier",
                    "username": "marcosjavier1",
                    "email": "mjv87ster@gmail.com",
                    "email_verified_at": "2021-12-27T20:23:40.000000Z",
                    "email_notification": 1,
                    "pic_url": null,
                    "cover_url": null,
                    "bio": null,
                    "web": null,
                    "location": null,
                    "birth": null,
                    "phone": null,
                    "email_mp": null,
                    "facebook_id": null,
                    "facebook_token": null,
                    "facebook_refresh_token": null,
                    "google_id": null,
                    "google_token": null,
                    "google_refresh_token": null,
                    "created_at": "2021-12-27T19:49:31.000000Z",
                    "updated_at": "2021-12-27T20:23:40.000000Z",
                    "topics": []
                }
            },
            {
                "id": 2,
                "user_id": 11,
                "post_id": 1,
                "comment": "nuevo comentario",
                "created_at": "2021-12-27T20:06:33.000000Z",
                "updated_at": "2021-12-27T20:06:33.000000Z",
                "user": {
                    "id": 11,
                    "name": "Marcos Javier",
                    "username": "marcosjavier1",
                    "email": "mjv87ster@gmail.com",
                    "email_verified_at": "2021-12-27T20:23:40.000000Z",
                    "email_notification": 1,
                    "pic_url": null,
                    "cover_url": null,
                    "bio": null,
                    "web": null,
                    "location": null,
                    "birth": null,
                    "phone": null,
                    "email_mp": null,
                    "facebook_id": null,
                    "facebook_token": null,
                    "facebook_refresh_token": null,
                    "google_id": null,
                    "google_token": null,
                    "google_refresh_token": null,
                    "created_at": "2021-12-27T19:49:31.000000Z",
                    "updated_at": "2021-12-27T20:23:40.000000Z",
                    "topics": []
                }
            },
            {
                "id": 3,
                "user_id": 11,
                "post_id": 1,
                "comment": "nuevo comentario",
                "created_at": "2021-12-27T20:06:38.000000Z",
                "updated_at": "2021-12-27T20:06:38.000000Z",
                "user": {
                    "id": 11,
                    "name": "Marcos Javier",
                    "username": "marcosjavier1",
                    "email": "mjv87ster@gmail.com",
                    "email_verified_at": "2021-12-27T20:23:40.000000Z",
                    "email_notification": 1,
                    "pic_url": null,
                    "cover_url": null,
                    "bio": null,
                    "web": null,
                    "location": null,
                    "birth": null,
                    "phone": null,
                    "email_mp": null,
                    "facebook_id": null,
                    "facebook_token": null,
                    "facebook_refresh_token": null,
                    "google_id": null,
                    "google_token": null,
                    "google_refresh_token": null,
                    "created_at": "2021-12-27T19:49:31.000000Z",
                    "updated_at": "2021-12-27T20:23:40.000000Z",
                    "topics": []
                }
            },
            {
                "id": 4,
                "user_id": 11,
                "post_id": 1,
                "comment": "nuevo comentario",
                "created_at": "2021-12-27T20:10:16.000000Z",
                "updated_at": "2021-12-27T20:10:16.000000Z",
                "user": {
                    "id": 11,
                    "name": "Marcos Javier",
                    "username": "marcosjavier1",
                    "email": "mjv87ster@gmail.com",
                    "email_verified_at": "2021-12-27T20:23:40.000000Z",
                    "email_notification": 1,
                    "pic_url": null,
                    "cover_url": null,
                    "bio": null,
                    "web": null,
                    "location": null,
                    "birth": null,
                    "phone": null,
                    "email_mp": null,
                    "facebook_id": null,
                    "facebook_token": null,
                    "facebook_refresh_token": null,
                    "google_id": null,
                    "google_token": null,
                    "google_refresh_token": null,
                    "created_at": "2021-12-27T19:49:31.000000Z",
                    "updated_at": "2021-12-27T20:23:40.000000Z",
                    "topics": []
                }
            },
            {
                "id": 5,
                "user_id": 11,
                "post_id": 1,
                "comment": "nuevo comentario",
                "created_at": "2021-12-27T20:17:36.000000Z",
                "updated_at": "2021-12-27T20:17:36.000000Z",
                "user": {
                    "id": 11,
                    "name": "Marcos Javier",
                    "username": "marcosjavier1",
                    "email": "mjv87ster@gmail.com",
                    "email_verified_at": "2021-12-27T20:23:40.000000Z",
                    "email_notification": 1,
                    "pic_url": null,
                    "cover_url": null,
                    "bio": null,
                    "web": null,
                    "location": null,
                    "birth": null,
                    "phone": null,
                    "email_mp": null,
                    "facebook_id": null,
                    "facebook_token": null,
                    "facebook_refresh_token": null,
                    "google_id": null,
                    "google_token": null,
                    "google_refresh_token": null,
                    "created_at": "2021-12-27T19:49:31.000000Z",
                    "updated_at": "2021-12-27T20:23:40.000000Z",
                    "topics": []
                }
            }
        ]
    }'''));
  });

  test("Probando parsear profile", () async {
    ProfileModel.fromMap(jsonDecode('''
    {"id":1,"name":"Homero","username":"Simpson","email":"1@prueba.com","email_verified_at":"2021-12-29T18:04:13.000000Z","email_notification":1,"pic_url":null,"cover_url":null,"bio":null,"web":null,"location":null,"birth":null,"phone":null,"email_mp":null,"created_at":"2021-12-29T18:04:13.000000Z","updated_at":"2021-12-29T18:04:13.000000Z","followersCount":0,"followingCount":1,"postsCount":1,"topics":[],"following":[{"id":3,"name":"Trevor Eichmann","username":"edwina37","email":"larry20@example.com","email_verified_at":"2021-12-29T18:04:14.000000Z","email_notification":1,"pic_url":null,"cover_url":null,"bio":null,"web":null,"location":null,"birth":null,"phone":null,"email_mp":null,"created_at":"2021-12-29T18:04:14.000000Z","updated_at":"2021-12-29T18:04:14.000000Z","followersCount":1,"followingCount":0,"postsCount":0,"pivot":{"follower_id":1,"following_id":3},"topics":[]}],"followers":[],"subscribed_to":[{"id":3,"name":"Trevor Eichmann","username":"edwina37","email":"larry20@example.com","email_verified_at":"2021-12-29T18:04:14.000000Z","email_notification":1,"pic_url":null,"cover_url":null,"bio":null,"web":null,"location":null,"birth":null,"phone":null,"email_mp":null,"created_at":"2021-12-29T18:04:14.000000Z","updated_at":"2021-12-29T18:04:14.000000Z","followersCount":1,"followingCount":0,"postsCount":0,"pivot":{"subscribed_id":1,"autor_id":3},"topics":[]}],"subscriptors":[],"posts":[{"id":1,"user_id":1,"title":"Primer post","cover_url":"&cGcq5iclZ3bj9SMvQ3cvB3L","body":"vac\u00edo","visibility":1,"plan":null,"type":null,"created_at":"2021-12-29T18:23:57.000000Z","updated_at":"2021-12-29T18:23:57.000000Z","likesCount":0,"favsCount":0,"user":{"id":1,"name":"Homero","username":"Simpson","email":"1@prueba.com","email_verified_at":"2021-12-29T18:04:13.000000Z","email_notification":1,"pic_url":null,"cover_url":null,"bio":null,"web":null,"location":null,"birth":null,"phone":null,"email_mp":null,"created_at":"2021-12-29T18:04:13.000000Z","updated_at":"2021-12-29T18:04:13.000000Z","followersCount":0,"followingCount":1,"postsCount":1,"topics":[]},"likes":[],"favs":[],"comments":[],"topics":[]}]}'''));
  });
}
