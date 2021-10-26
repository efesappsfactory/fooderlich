import 'dart:convert';
import 'package:flutter/services.dart';
import '../models/models.dart';

class MokcFooderlichService {
  Future<ExploreData> getExploreData() async {
    final todayRecipes = await _getTodayRecipes();
    final friendPosts = await _getFriendFeed();

    return ExploreData(todayRecipes, friendPosts);
  }

  Future<List<ExploreRecipe>> _getTodayRecipes() async {
    await Future.delayed(const Duration(milliseconds: 1000));
    final dataString =
        await _loadAsset('assets/sample_data/sample_explore_recipes.json');
    final Map<String, dynamic> json = jsonDecode(dataString);
    if (json['recipes'] != null) {
      final recipes = <ExploreRecipe>[];
      json['recipes'].forEach((r) => recipes.add(ExploreRecipe.fromJson(r)));
      return recipes;
    } else {
      return [];
    }
  }

  Future<List<Post>> _getFriendFeed() async {
    await Future.delayed(const Duration(milliseconds: 1000));
    final dataString =
        await _loadAsset('assets/sample_data/sample_friends_feed.json');
    final Map<String, dynamic> json = jsonDecode(dataString);
    if (json['feed'] != null) {
      final posts = <Post>[];
      json['feed'].forEach((f) => posts.add(Post.fromJson(f)));
      return posts;
    } else {
      return [];
    }
  }

  Future<List<SimpleRecipe>> getRecipes() async {
    await Future.delayed(const Duration(milliseconds: 1000));
    final dataString =
        await _loadAsset('assets/sample_data/sample_recipes.json');
    final Map<String, dynamic> json = jsonDecode(dataString);
    if (json['recipes'] != null) {
      final recipes = <SimpleRecipe>[];
      json['recipes'].forEach((r) => recipes.add(SimpleRecipe.fromJson(r)));
      return recipes;
    } else {
      return [];
    }
  }

  Future<String> _loadAsset(String path) async {
    return rootBundle.loadString(path);
  }
}
