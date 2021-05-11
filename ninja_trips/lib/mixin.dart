class User {
  void postComment() {
    print('posted comment');
  }
}

class Moderator extends User {
  void deleteComment() {
    print('comment deleted');
  }
}

class Publisher extends User with CanPublishArticle {
}

class Admin extends Moderator with CanPublishArticle {
  
}

mixin CanPublishArticle {
  void publishArticle() {
    print('article published');
  }
}
