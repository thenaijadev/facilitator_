import 'dart:io';

import 'package:facilitator/app/widgets/primary_button.dart';
import 'package:facilitator/config/router/routes.dart';
import 'package:facilitator/core/widgets/text_widget.dart';
import 'package:facilitator/features/user_verification/presentation/widgets/verification_item.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class UserVerificationScreen extends StatefulWidget {
  const UserVerificationScreen({super.key});

  @override
  State<UserVerificationScreen> createState() => _UserVerificationScreenState();
}

class _UserVerificationScreenState extends State<UserVerificationScreen> {
  String _selectedImagePath = "";

  Future _pickImageGallery() async {
    final returnedImage =
        await ImagePicker().pickImage(source: ImageSource.gallery);
    if (returnedImage == null) return;
    setState(() {
      _selectedImagePath = File(returnedImage.path).path;
    });
  }

  Future _pickImageCamera() async {
    final returnedImage =
        await ImagePicker().pickImage(source: ImageSource.camera);
    if (returnedImage == null) return;
    (File(returnedImage.path));
    setState(() {
      _selectedImagePath = File(returnedImage.path).path;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const TextWidget(
          text: "Get Verified",
          fontSize: 21,
          fontWeight: FontWeight.w500,
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            VerificationItem(
              isCompleted: false,
              onTap: () async {
                await _pickImageCamera();
              },
              image: "assets/images/face_scan_square.png",
              title: "Face Verification",
              subtitle: "Click to complete your facial identity verification",
            ),
            VerificationItem(
              isCompleted: true,
              onTap: () async {
                await _pickImageGallery();
              },
              image: "assets/images/add_image_blue.png",
              title: "Upload a Photo",
              subtitle:
                  "Click to upload passport photograph (Not more than 1 mb)",
            ),
            VerificationItem(
              isCompleted: true,
              onTap: () async {
                await _pickImageGallery();
              },
              image: "assets/images/add_image_blue.png",
              title: "Upload a valid ID",
              subtitle:
                  "Click to upload valid e.g. NIN, Drivers license, international passport.",
            ),
            const TextWidget(
              text: "*For Professionals/Certified Specialists",
              fontSize: 18,
              fontWeight: FontWeight.w500,
            ),
            VerificationItem(
              isCompleted: true,
              onTap: () async {
                await _pickImageGallery();
              },
              image: "assets/images/add_image_blue.png",
              title: "Add Certificate",
              subtitle: "e.g. MBA, PMP, ACCA, ICAN etc.",
            ),
            const Spacer(),
            PrimaryButton(
                label: "Verify Me",
                onPressed: () {
                  Navigator.pushNamed(context, Routes.inProgress);
                },
                isEnabled: true)
          ],
        ),
      ),
    );
  }
}
