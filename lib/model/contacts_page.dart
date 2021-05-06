import 'package:flutter/cupertino.dart';
import 'package:task4/model/contact_card.dart';

class Contacts extends StatelessWidget {
  final int index;
  Contacts({this.index});
  static final List<ContactCard> contacts = [
    ContactCard(
      name: 'Maria Elvis',
      phone: '5562458796',
      url:
          'https://i.pinimg.com/236x/67/5f/40/675f409cfcbea9281f6649ca096caf25--corporate-photography-headshot-photography.jpg',
    ),
    ContactCard(
      name: 'Henry Pierson',
      phone: '45662158796',
      url:
          'https://itsupplychain.com/wp-content/uploads/2019/10/Peter-Nilsson-VP-Strategic-Initiatives-MPO-566-x-400-900-x-636.jpg',
    ),
    ContactCard(
      name: 'Randell Kobe',
      phone: '2698755236',
      url:'https://images.squarespace-cdn.com/content/v1/5cf0d08d5fc69d000172462a/1600701210662-EWX3T3BQ5H2RXTZXRM01/ke17ZwdGBToddI8pDm48kNiEM88mrzHRsd1mQ3bxVct7gQa3H78H3Y0txjaiv_0fDoOvxcdMmMKkDsyUqMSsMWxHk725yiiHCCLfrh8O1z4YTzHvnKhyp6Da-NYroOW3ZGjoBKy3azqku80C789l0s0XaMNjCqAzRibjnE_wBlkZ2axuMlPfqFLWy-3Tjp4nKScCHg1XF4aLsQJlo6oYbA/Balazs+Professional+LinkedIn+Profile+Picture.jpg'  ),
    ContactCard(
      name: 'Kevin Parole',
      phone: '5562458796',
      url: 'https://images.squarespace-cdn.com/content/v1/5ebae12d7999536040a28da3/1590010714936-QL3JS6HKNCY5P7OPK71Y/ke17ZwdGBToddI8pDm48kAV6JiFYo8CHN2AHK6y706x7gQa3H78H3Y0txjaiv_0fDoOvxcdMmMKkDsyUqMSsMWxHk725yiiHCCLfrh8O1z4YTzHvnKhyp6Da-NYroOW3ZGjoBKy3azqku80C789l0sofvP-RiTb638-KOMjny0uGs_3EOler6cv--KhllN9olrbkdsB-Oy_nqhydJw2laQ/Updated+Website+Profile.jpg',
    ),
    ContactCard(
      name: 'Nadia El-Said',
      phone: '2698755236',
      url:'https://writestylesonline.com/wp-content/uploads/2018/11/Three-Statistics-That-Will-Make-You-Rethink-Your-Professional-Profile-Picture-1024x1024.jpg'
            ),
    ContactCard(
      name: 'James Bally',
      phone: '3368958796',
      url: 'https://clubhouseframer.com/frames/profile-elonmusk.jpg?v4',
    ),
    ContactCard(
      name: 'Jessica Molly',
      phone: '44687158796',
      url:'https://images.squarespace-cdn.com/content/v1/5d2a480b1204020001912170/1599066575995-99MDQJ3SOM8VIEVTOF2O/ke17ZwdGBToddI8pDm48kMXRibDYMhUiookWqwUxEZ97gQa3H78H3Y0txjaiv_0fDoOvxcdMmMKkDsyUqMSsMWxHk725yiiHCCLfrh8O1z4YTzHvnKhyp6Da-NYroOW3ZGjoBKy3azqku80C789l0luUmcNM2NMBIHLdYyXL-Jww_XBra4mrrAHD6FMA3bNKOBm5vyMDUBjVQdcIrt03OQ/0C3A4587.JPG'
              ),
  ];
  @override
  Widget build(BuildContext context) {
    return contacts[index];
  }
}
