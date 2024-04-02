class AppLinksApi {
  static const String server = "http://10.0.2.2/ecommerce_flutter";
// auth
  static const String signup = "$server/auth/signup.php";
  static const String login = "$server/auth/login.php";

//home _categoreis
  static const String home = "$server/home.php";
  static const String allCategories = "$server/categoris/view.php";
  static const String itemspage = "$server/items/items.php";
//favorite
  static const String favAdd = "$server/favorite/add_fav.php";

  static const String favRemove = "$server/favorite/remove_fav.php";
}
