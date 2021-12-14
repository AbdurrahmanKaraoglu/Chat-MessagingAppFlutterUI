class Chat {
  final String name, lastMessage, image, time;
  final bool isActive;

  Chat({
    this.name = '',
    this.lastMessage = '',
    this.image = '',
    this.time = '',
    this.isActive = false,
  });
}

List chatsData = [
  Chat(
    name: "Ahmet Özberk 1",
    lastMessage: "Umarım iyisindir...",
    image: "assets/images/user1.png",
    time: "3 dakika önce",
    isActive: false,
  ),
  Chat(
    name: "Ahmet Özberk 2",
    lastMessage: "Merhaba Abdurrahman! NS...",
    image: "assets/images/user1.png",
    time: "8 dakika önce",
    isActive: true,
  ),
];
