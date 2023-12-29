import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  bool light0 = true;
  bool light1 = true;
  bool light2 = true;

  final MaterialStateProperty<Icon?> thumbIcon =
  MaterialStateProperty.resolveWith<Icon?>(
        (Set<MaterialState> states) {
      if (states.contains(MaterialState.selected)) {
        return const Icon(Icons.check);
      }
      return const Icon(Icons.close);
    },
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Account Settings'),
      ),
      body:  SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('Update your settings like notifications, \n payments,profile edit etc.'),
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text('Profile Information'),
              subtitle: Text('Change Your account information') ,
              trailing: Icon(Icons.arrow_forward_ios_outlined),
            ),
            ListTile(
              leading: Icon(Icons.lock),
              title: Text('Change Password'),
              subtitle: Text('Change Your Password') ,
              trailing: Icon(Icons.arrow_forward_ios_outlined),
            ), const ListTile(
              leading: Icon(Icons.payment_outlined),
              title: Text('Payment Methods'),
              subtitle: Text('Add Your credit & debit cards') ,
              trailing: Icon(Icons.arrow_forward_ios_outlined),
            ),
            const ListTile(
              leading: Icon(Icons.location_on_sharp),
              title: Text('Locations'),
              subtitle: Text('Add or remove your delivery locations') ,
              trailing: Icon(Icons.arrow_forward_ios_outlined),
            ),
            const ListTile(
              leading: Icon(Icons.social_distance_outlined),
              title: Text('Add Social Accounts'),
              subtitle: Text('Add Facbook, Twitter etc.') ,
              trailing: Icon(Icons.arrow_forward_ios_outlined),
            ),
            const ListTile(
              leading: Icon(Icons.share),
              title: Text('Refer to Friends'),
              subtitle: Text('Get \$1 for reffering friends') ,
              trailing: Icon(Icons.arrow_forward_ios_outlined),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text('NOTIFICATIONS',style: TextStyle(fontWeight: FontWeight.w700),textScaleFactor: 1.2,),
            ),
            ListTile(
              leading: Icon(Icons.notifications),
              title: Text('Push Notifications'),
              subtitle: Text('For daily upadte you will get it') ,
              trailing: Switch(  value: light0,
                activeColor: Colors.amber,

                thumbColor: const MaterialStatePropertyAll<Color>(Colors.white),
                onChanged: (bool value) {
                  setState(() {
                    light0 = value;
                  });
                },),
            ),  ListTile(
              leading: Icon(Icons.notifications),
              title: Text('SMS Notifications'),
              subtitle: Text('For daily update you will get it') ,
              trailing:Switch(
                value: light1,
                activeColor: Colors.amber,

                thumbColor: const MaterialStatePropertyAll<Color>(Colors.white),
                onChanged: (bool value) {
                  setState(() {
                    light1 = value;
                  });
                },),
            ),  ListTile(
              leading: Icon(Icons.notifications),
              title: Text('Promotional Notifications'),
              subtitle: Text('For daily update you will get') ,
              trailing: Switch(  value: light2,
                activeColor: Colors.amber,

                thumbColor: const MaterialStatePropertyAll<Color>(Colors.white),

                onChanged: (bool value) {
                  setState(() {
                    light2 = value;
                  });
                },),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Text('MORE',style: TextStyle(fontWeight: FontWeight.w700),textScaleFactor: 1.2,),
            ),
            ListTile(
              leading: Icon(Icons.star,color: Colors.amber),
              title: Text('Rate Us'),
              subtitle: Text('Rate us playstore,appstore') ,
              trailing: Icon(Icons.arrow_forward_ios_outlined),
            ),
            ListTile(
              leading: Icon(Icons.book),
              title: Text('FAQ'),
              subtitle: Text('Frequently') ,
              trailing: Icon(Icons.arrow_forward_ios_outlined),
            ),
            ListTile(
              leading: Icon(Icons.exit_to_app),
              title: Text('Logout'),

              trailing: Icon(Icons.arrow_forward_ios_outlined),
            ),

          ],
        ),
      ),
    );
  }
}
