import 'package:live_music_artist_side/profilesection/mywallet/mycreditcard/mycreditcard.dart';
import 'package:live_music_artist_side/profilesection/mywallet/transactions/transactions.dart';
import 'package:live_music_artist_side/profilesection/mywallet/withdrawbalance/withdrawbalance.dart';

const String image = 'assets/static_images';
const String dynamicImage = 'assets/dynamic_images';
List<String> bandpics = [
  "images/band1.png",
  "images/band2.png",
  "images/band3.png",
];
List<String> bandpics2 = [
  "images/band4.png",
  "images/band5.png",
  "images/band6.png",
];
List<String> artistimages = [
  "images/artist1.png",
  "images/artist2.png",
  "images/artist3.png",
  "images/artist4.png",
  "images/artist3.png",
  "images/artist4.png",
];
String verifydescription =
    "Lorem ipsum dolor sit amet, consectetur\n adipiscing elit. Duis magna justo,\n scelerisque et euismod sit amet,\n eleifend quis magna. Sed fringilla, est at \n volutpat sodales, nisl eros tristique sapien,\n ut gravida urna \n lorem a odio. Sed bibendum lacinia nisl, sit \n amet blandit velit porta ultrices.\n Pellentesque vehicula maximus augue, id\n consequat mi. Aenean eget justo mauris.\n Vivamus nec augue rutrum, porttitor ex a,\n aliquet lacus. Curabitur egestas tincidunt\n nunc et vestibulum. Vestibulum sit amet \n blandit massa, vel ornare lectus. Ut quis \n urna suscipit, pretium magna sed,\n tincidunt purus. Praesent non facilisis dui.\n Praesent blandit arcu velit";
List groupsnames = ["Metal and Beats", "Beauty & Sound", "Awesome Notes"];
List ratingscore = ["(34)", "(16)", "(14)"];
List typesalertbox = [
  "Near By Artist &  Musicians ",
  "Only Groups",
  "Only Artist"
];
List musictypesalertbox = [
  "All Band",
  "Big band",
  "Christian band",
  "Fife and drum",
  "Jazz band",
];
List membersname = [
  "William",
  "James Dude",
  "Scarlet",
  "Sparrow",
];
String bigtext =
    "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis magna justo, scelerisque et euismod sit amet, eleifend quis magna. Sed fringilla, est at volutpat sodales, nisl eros ebloa tristique sapien, ut gravida urna lorem a odio. Sed bibendum lacinia nisl, sit amet blandit velit porta ultrices.";
List chipsname = [
  "Rock",
  "Grunge",
  "Pop Rock",
  "Country band",
  "Folk",
  "Techno",
  "Hip-hop",
  "Lorem"
];
List<String> chatlist = [
  "images/img1.png",
  "images/img2.png",
  "images/img3.png",
  "images/img4.png",
  "images/img5.png",
  "images/img6.png",
  "images/img7.png",
  "images/img8.png",
  "images/img8.png",
];
List<String> chatlistnames = [
  "Eugene Hanson",
  "Toney Stark",
  "Alex Jack",
  "Johnathen",
  "Jack chin",
  "Robert James",
  "Robin Hood",
  "Marksmen",
  "Marksmen",
];
List<String> chatlistrecentmessages = [
  "Hey! What' sup? ",
  "I am fine. How are you doing?",
  "Hi how may I help you?",
  "Hey! Can you do favour for me?",
  "No problem we will talk about it",
  "Are you sure about this?",
  "That's wonderful.",
  "That's wonderful.",
  "ok I will leave in a while for that",
];
List<String> chatlisttiming = [
  "10:55 PM",
  "4:12 PM",
  "3:55 PM",
  "Yesterday",
  "11/08",
  "10:55 PM",
  "4:12 PM",
  "3:55 PM",
  "Yesterday",
];
String abouttext =
    "Lorem ipsum dolor sit amet, consecteturdipiscing elit. Duis magna justo, scelerisque et eismod sit amet, eleifend quis magna. Sed fringilla, est at volutpat sodales, nisl eros ebloa tristique sapien, ut gravida urna lorem a odio. Sed bibendum lacinia nisl, sit amet blandit velit porta ultrices.";

List bookednames = ["Metal and Beats", "Metal and Beats"];
List dates = ["20th", "5th"];
List monthdays = ["November, Saturday  ", "December, Saturday  "];
List bandimages = ["images/band2.png", "images/band1.png"];
List times = ["09:30 PM", "06:30 PM"];
List timertimes = ["3 hour", "5 hour"];
List locations = ["Red Hook, Brooklyn", "123 ST, Mareena Bar"];
List eventtypes = ["For Concert", "For Wedding"];
List ordernumbers = ["#9283", "#9299"];
List prices = ["750", "500"];

List bookingdetailicons = [
  "images/locationicon.svg",
  "images/calendericon.svg",
  "images/timeicon.svg",
  "images/timericon.svg",
  "images/dollaricon.svg",
  "images/ordericon.svg"
];
List bookingdetailnames = [
  "Location",
  "Date",
  "Time",
  "Duration",
  "  Cost",
  "Order"
];
List bookingiconsdetails = [
  "Red Hook, Brooklyn",
  "20/11/2021",
  "09:30 PM",
  "3 hour",
  "\$ 450",
  "#9283"
];
List settingsicons = [
  "images/paymentmethodicon.svg",
  "images/notificationsoutlined.svg",
  "images/changepassword.svg",
  "images/languagesicon.svg",
  "images/shareusicon.svg",
  "images/termsicon.svg",
  "images/privacypolicyicon.svg",
  "images/abouticon.svg",
];
List settingsnames = [
  "Payment methods",
  "Notifications",
  "Change Password",
  "Language",
  "Share App",
  "Terms of Service",
  "Privacy Policy",
  "About us",
];
List notificationsicons = [
  "images/noti1.svg",
  "images/noti2.svg",
  "images/noti3.svg",
];
List notificationstitle = [
  "Eugene Hanson",
  "From Toney Stark",
  "New Musicians ",
];
List notificationssubtitle = [
  "Booked your Reservation...",
  "You have received \$ 250 in wallet",
  "Explore new artists for you next event...",
];
List notificationstime = [
  "10:55 PM",
  "4:12 PM",
  "4:12 PM",
];
List languages = [
  "English (English)",
  "Lwo (Acholi)",
  "Arfikaans (Arfikaans)",
  "German (Deutsch)",
  "French (Français)",
  "Spanish (Español)",
  "Italian (Italiano)",
  "Romanian (Română)",
  "Portuguese (Português)",
  "Swedish (Svenska)",
];
String descriptiontext =
    "Lorem ipsum dolor sit amet, consectetur dipiscing elit. Duis magna justo, scelerisque et eismod sit amet, eleifend quis magna. Sed fringilla.";
//""""
///Booking listsdummydata

List bookingclientnames = ["William Smith", "Jack chin", "Robert James"];
List bookingclientpics = [
  "images/img5.png",
  "images/img4.png",
  "images/img3.png"
];
List bookingclientaddress = [
  "123, X ST Club House, New York",
  "34 MK Ware House, New York",
  "99 Mareena Bar, New York"
];
List bookingclienttime = ["09:30 PM", "11:30 AM", "12:30 PM"];
List bookingclientdates = [
  "20 November, 2021",
  "15 November, 2021",
  "11 November, 2021"
];

//"""//

//****Groupsinfo*/

List groupsimages = [
  "images/group1.png",
  "images/group2.png",
  "images/group3.png"
];

List groupnames = ["Folk Group", "Dark Night Drums", "Stage On Fire"];

//***//  Mywalletdata

List wallettilenames = [
  "Withdraw Balance",
  "My Credit Cards",
  "Transfer ",
  "Transaction History "
];
List wallettilesicons = [
  "images/withdrawicon.svg",
  "images/creditcardicon.svg",
  "images/transfericon.svg",
  "images/historyicon.svg"
];

List wallettilesnavigation = [
  WithdrawBalanceScreen(),
  MyCreditCardScreen(),
  WithdrawBalanceScreen(),
  TransactionsScreen()
];
List withdrawamout = [
  "\$ 100",
  "\$ 500",
  "\$ 1000",
];

//*** */  Transactions data

List tilesnames = [
  "Balance Withdraw ",
  "Balance Withdraw ",
  "Balance Received",
  "Balance Received",
  "Balance Withdraw ",
];

List amounts = [
  "- \$ 250",
  "- \$ 350",
  "+ \$ 700",
  "- \$ 400",
  "+ \$ 500",
];

List leadingicons = [
  "images/visatrans.svg",
  "images/visatrans.svg",
  "images/mobiletrans.svg",
  "images/mastertrans.svg",
  "images/mobiletrans.svg"
];
