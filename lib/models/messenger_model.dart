import 'package:messenger_app/models/user_model.dart';


class Message {

  final User user;
  final String time;
  final String text;
  final bool isLiked;
  final bool unread;

  Message({
    this.user,
    this.time,
    this.text,
    this.isLiked,
    this.unread
  });
}

final User currentUser = User(
  id: 0,
  name: 'German Girod',
  imageUrl: 'https://avatars1.githubusercontent.com/u/3282448?s=460&v=4'
);

User gambeta = User(
  id: 1,
  name: 'Tomas Agrimbau',
  imageUrl: 'https://cdn-images-1.medium.com/max/1200/1*jBS6U9G12aq1EPqCobZ7uA.jpeg'
);

User josi = User(
  id: 2,
  name: 'Jose Teding',
  imageUrl: 'https://pbs.twimg.com/profile_images/572513541500833792/h08Ewues_400x400.jpeg'
);

User hip = User(
  id: 3,
  name: 'Agustin Zappacosta',
  imageUrl: 'https://fmdataba.com/images/p/51640.png'
);

User erre = User(
  id: 4,
  name: 'Santiago Verdino',
  imageUrl: 'https://media-exp1.licdn.com/dms/image/C4E03AQF25xJkhB53XA/profile-displayphoto-shrink_200_200/0?e=1585785600&v=beta&t=yeVBrXBJeR7yrxJNwIsiR8RVPN_KEiEp90VzDaP4ta8'
);

User rulo = User(
  id: 5,
  name: 'Bruno Verdino',
  imageUrl: 'https://i.ytimg.com/vi/tRrASzxH4cU/hqdefault.jpg'
);

User jota = User(
  id: 6,
  name: 'Tomas Ocampo',
  imageUrl: 'https://pbs.twimg.com/profile_images/1192247875805143040/ANC9kHPN_400x400.jpg'
);

User topo = User(
  id: 7,
  name: 'Elliot Sucari',
  imageUrl: 'https://media-exp1.licdn.com/dms/image/C4E03AQFFzJF7yUBUWQ/profile-displayphoto-shrink_200_200/0?e=1585785600&v=beta&t=FvF8doGrBNF6Pjt4ZpD8jxT6oWdenf5btALpiOTwuIE'
);

User bila = User(
  id: 8,
  name: 'Pablo Renna',
  imageUrl: 'https://elmundialdelnarigon.files.wordpress.com/2010/05/pablito21.jpg'
);

List<User> favorites = [gambeta, erre, rulo, jota, josi];

List<Message> chats = [
  Message(
    user: gambeta,
    time: '5:30 pm',
    text: 'hey this is don diego calling whats up mate',
    isLiked: false,
    unread: true
  ),

  Message(
      user: rulo,
      time: '5:30 pm',
      text: 'hey this is don diego calling whats up mate',
      isLiked: true,
      unread: false
  ),

  Message(
      user: erre,
      time: '5:30 pm',
      text: 'hey this is don diego calling whats up mate',
      isLiked: false,
      unread: false
  ),

  Message(
      user: josi,
      time: '5:30 pm',
      text: 'hey this is don diego calling whats up mate',
      isLiked: true,
      unread: true
  ),

  Message(
      user: bila,
      time: '5:30 pm',
      text: 'hey this is don diego calling whats up mate',
      isLiked: false,
      unread: true
  ),

  Message(
      user: hip,
      time: '5:30 pm',
      text: 'hey this is don diego calling whats up mate',
      isLiked: false,
      unread: false
  ),

  Message(
      user: gambeta,
      time: '5:30 pm',
      text: 'hey this is don diego calling whats up mate',
      isLiked: false,
      unread: true
  ),

  Message(
      user: josi,
      time: '5:30 pm',
      text: 'hey this is don diego calling whats up mate',
      isLiked: false,
      unread: true
  ),

  Message(
      user: jota,
      time: '5:30 pm',
      text: 'hey this is don diego calling whats up mate',
      isLiked: true,
      unread: true
  ),

  Message(
      user: erre,
      time: '5:30 pm',
      text: 'hey this is don diego calling whats up mate',
      isLiked: false,
      unread: true
  ),

  Message(
      user: rulo,
      time: '5:30 pm',
      text: 'hey this is don diego calling whats up mate',
      isLiked: false,
      unread: true
  ),

];

List<Message> messages = [
  Message(
      user: gambeta,
      time: '5:30 pm',
      text: 'hey this is don diego calling whats up mate',
      isLiked: false,
      unread: true
  ),

  Message(
      user: currentUser,
      time: '5:30 pm',
      text: 'hey this is don diego calling whats up mate',
      isLiked: true,
      unread: false
  ),

  Message(
      user: currentUser,
      time: '5:30 pm',
      text: 'hey this is don diego calling whats up mate',
      isLiked: false,
      unread: false
  ),

  Message(
      user: gambeta,
      time: '5:30 pm',
      text: 'hey this is don diego calling whats up mate',
      isLiked: true,
      unread: true
  ),

  Message(
      user: currentUser,
      time: '5:30 pm',
      text: 'hey this is don diego calling whats up mate',
      isLiked: false,
      unread: true
  ),

  Message(
      user: gambeta,
      time: '5:30 pm',
      text: 'hey this is don diego calling whats up mate',
      isLiked: false,
      unread: false
  ),

  Message(
      user: gambeta,
      time: '5:30 pm',
      text: 'hey this is don diego calling whats up mate',
      isLiked: false,
      unread: true
  ),

  Message(
      user: currentUser,
      time: '5:30 pm',
      text: 'hey this is don diego calling whats up mate',
      isLiked: false,
      unread: true
  ),

  Message(
      user: gambeta,
      time: '5:30 pm',
      text: 'hey this is don diego calling whats up mate',
      isLiked: true,
      unread: true
  ),

  Message(
      user: currentUser,
      time: '5:30 pm',
      text: 'hey this is don diego calling whats up mate',
      isLiked: false,
      unread: true
  ),

  Message(
      user: gambeta,
      time: '5:30 pm',
      text: 'hey this is don diego calling whats up mate',
      isLiked: false,
      unread: true
  ),

];


