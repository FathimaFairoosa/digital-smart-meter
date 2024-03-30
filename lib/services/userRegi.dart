
// import 'package:http/http.dart' as http;
// import 'package:iot/constants/urls.dart';
// import 'package:iot/models/registrationModel.dart';

// Future<String> addItemApi(UserRegModel item) async {
//   try {
//     var request = http.MultipartRequest(
//       'POST',
//       Uri.parse('$baseUrl/userregistration'),
//     );
//     request.fields['name'] = item.name;
//     request.fields['address'] = item.address;
//     request.fields['district'] = item.district; 
//     request.fields['pincode'] = item.pinnumber;
//     request.fields['ph'] = item.phone;
//     request.fields['email'] = item.email;
//     request.fields['adhar'] = item.adharnum;
//     request.fields['house'] = item.housenum;
//     request.fields['applydate'] = DateTime.now.toString();
//     request.files.add(await http.MultipartFile.fromPath(
//       'mimage',
//       item.imgFileurl,
//     ));
//     var response = await request.send();
//     if (response.statusCode == 200 || response.statusCode == 201 ) {
//       print('Menu item added successfully');
//       return "success";
//     } else {
//       print('Failed to add menu item: ${response.statusCode}');
//       return "failed";
//     }
//   } catch (e) {
//     print('Error adding menu item: $e');
//     return "failed";
//   }
// }