import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mydiary_dev/Constants/imagespath.dart';
import '../Constants/Colors.dart';


class ChattingScreen extends StatefulWidget {
  const ChattingScreen({super.key});

  @override
  State<ChattingScreen> createState() => _ChattingScreenState();
}

class _ChattingScreenState extends State<ChattingScreen> {
  bool isSender = true;
  List<String> names = ["rohan","rohan","rohan","rohan","rohan","rohan","rohan","rohan","rohan","rohan","rohan",];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffEEF3FF),
      appBar: AppBar(
        toolbarHeight: 67,
        elevation: 5,
        backgroundColor: Colors.white,
        shadowColor: Colors.black,
        title: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 15,),
            Text(
              "APPNWEB Technologies Community",
              style: GoogleFonts.poppins(
                  fontSize: 15, color: primary, fontWeight: FontWeight.w500),
            ),
            Container(
              height: 30,
                width: 200,
                child : ListView.builder(
                  itemCount: names.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (BuildContext context, int index) {
                    if (index < 5) {
                      return Padding(
                        padding: const EdgeInsets.only(top: 2.0, right: 2.0),
                        child: SvgPicture.asset(
                          AssetsPaths.personnimage,
                          height: 20,
                          width: 20,
                        ),
                      );
                    } else {
                      return index==5? Padding(
                        padding: const EdgeInsets.only(left: 2.0),
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(90),
                              color: Colors.transparent
                          ),
                          height: 20,
                          width: 20,
                          child: CircleAvatar(
                            backgroundColor: Color(0xffF0F0F0),
                            child: Text("+ ${names.length-index}",
                          style: GoogleFonts.poppins(
                            color: primary,
                            fontSize: 10
                          ),
                          ),),
                        ),
                      ) : SizedBox(height: 0, width: 0,);
                    }
                    return  Row(
                      children: [


                      ],
                    );
                  },
                ),

            )
          ],
        ),
        leading: InkWell(
          onTap: (){
            Get.back();
          },
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: SvgPicture.asset(
              AssetsPaths.backicon,
              height: 50,
              width: 50,
            ),
          ),
        ),
        actions: [IconButton(onPressed: () {}, icon: SvgPicture.asset(AssetsPaths.information))],
      ),

      body: SafeArea(child: Column(
          children: [
            Expanded(

                child: buildChatList()),

            SizedBox(height: 10,),

            Padding(
              padding: const EdgeInsets.only(left: 10, bottom: 15, right: 10, top: 0),
              child: Row(
                children: [
                  Container(
                    height: 42.29,
                    width: 42.29,
                    decoration: BoxDecoration(
                      color: Color(0xff2E74D8),
                      borderRadius: BorderRadius.circular(10)
                    ),
                    child: IconButton(
                      icon: Icon(Icons.attach_file, color: Colors.white, size: 28),
                      onPressed: () {},
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: "Enter Message Here...",
                          hintStyle: TextStyle(color: Colors.grey.shade600),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(6.31),
                            borderSide: BorderSide.none,
                          ),
                          suffixIcon: IconButton(icon: SvgPicture.asset(AssetsPaths.camera, height: 16.41, width: 18.93,), onPressed: () { },),
                          suffixIconConstraints: BoxConstraints(minHeight: 16.41, minWidth: 18.93 ),
                          filled: true,
                          fillColor: Colors.white,
                          contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 5),
                  CircleAvatar(
                    backgroundColor: primary,
                    radius: 25,
                    child: IconButton(
                      icon: SvgPicture.asset(AssetsPaths.send),
                      onPressed: () {},
                    ),
                  ),
                ],
              ),
            )


          ],
      )),
    );
  }
  Widget buildChatList() {
    return ListView.builder(
      padding: const EdgeInsets.all(16),
      itemCount: 12, // Example count
      itemBuilder: (context, index) {
        if (index == 0 || index == 6) {
          return _buildDateDivider(index == 0 ? 'Monday' : 'Today');
        }
        return _buildMessageItem(index);
      },
    );
  }

  Widget _buildDateDivider(String date) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 16),
      child: Row(
        children: [
          Expanded(
            child: Container(
              height: 1,
              color: Colors.grey.withOpacity(0.2),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Text(
              date,
              style: TextStyle(
                color: Colors.grey[600],
                fontSize: 12,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          Expanded(
            child: Container(
              height: 1,
              color: Colors.grey.withOpacity(0.2),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildMessageItem(int index) {
    final bool isSentByMe = index % 2 == 0;
    final String sender = _getSenderName(index);

    return Padding(
      padding: const EdgeInsets.only(bottom: 16),
      child: Row(
        mainAxisAlignment:
        isSentByMe ? MainAxisAlignment.end : MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          if (!isSentByMe) ...[
            SvgPicture.asset(AssetsPaths.personnimage, height: 25.25, width: 25.25,),
             SizedBox(width: 12),
          ],
          Column(
            crossAxisAlignment:
            isSentByMe ? CrossAxisAlignment.end : CrossAxisAlignment.start,
            children: [

              Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Container(
                    constraints: BoxConstraints(
                      maxWidth: MediaQuery.of(context).size.width * 0.65,
                    ),
                    padding: const EdgeInsets.symmetric(
                      horizontal: 16,
                      vertical: 12,
                    ),
                    decoration: BoxDecoration(
                      color: isSentByMe
                          ? const Color(0xFF2B3A67)
                          : Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.05),
                          blurRadius: 4,
                          offset: const Offset(0, 2),
                        ),
                      ],
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        if (!isSentByMe)
                          Padding(
                            padding: const EdgeInsets.only(bottom: 4, left: 0),
                            child: Text(
                              sender,
                              style: GoogleFonts.poppins(
                                color: Color(0xFF2B3A67),
                                fontSize: 13,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ),
                        Text(
                          'This is a test message',
                          style: GoogleFonts.poppins(
                            color: isSentByMe ? Colors.white : const Color(0xFF2B3A67),
                            fontSize: 12.62,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                  ),
                  if (isSentByMe) ...[
                    const SizedBox(width: 8),
                    SvgPicture.asset(AssetsPaths.personnimage, height: 25.25, width: 25.25,)
                  ],
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
  String _getSenderName(int index) {
    final names = [
      'Jitesh Kumar',
      'Manish Kumawat',
      'Shivam',
    ];
    return names[index % names.length];
  }


}
