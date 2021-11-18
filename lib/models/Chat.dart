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
  Chat(
    name: "Ahmet Özberk 3",
    lastMessage: "Güncelleme var mı...",
    image: "assets/images/user1.png",
    time: "5 gün önce",
    isActive: false,
  ),
  Chat(
    name: "Ahmet Özberk 4",
    lastMessage: "Rica ederim :)",
    image: "assets/images/user1.png",
    time: "5 gün önce",
    isActive: true,
  ),
  Chat(
    name: "Ahmet Özberk 5",
    lastMessage: "Teşekkürler",
    image: "assets/images/user1.png",
    time: "6 gün önce",
    isActive: false,
  ),
  Chat(
    name: "Ahmet Özberk 6",
    lastMessage: "Umarım iyisindir...",
    image: "assets/images/user1.png",
    time: "3 dakika önce",
    isActive: false,
  ),
  Chat(
    name: "Ahmet Özberk 7",
    lastMessage: "Merhaba Abdurrahman! NS...",
    image: "assets/images/user1.png",
    time: "8 dakika önce",
    isActive: true,
  ),
  Chat(
    name: "Ahmet Özberk 8",
    lastMessage: "Güncelleme var mı...",
    image: "assets/images/user1.png",
    time: "5 gün önce",
    isActive: false,
  ),
];
