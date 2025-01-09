import 'package:flutter/material.dart';

Widget buildNotesCard() {
  return Card(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(12),
    ),
    elevation: 4,
    child: Padding(
      padding: EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '07:20 PM',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 18,
            ),
          ),
          SizedBox(height: 8),
          Text(
            'Discussion About delivery plugin',
            style: TextStyle(
              fontSize: 16,
              color: Colors.grey[700],
            ),
          ),
          Spacer(),
          Row(
            children: [
              Icon(Icons.videocam, color: Colors.blueAccent),
              SizedBox(width: 8),
              Text('Google Meet'),
            ],
          ),
          SizedBox(height: 8),
          Text(
            'Mr. Shivam Gupta',
            style: TextStyle(
              fontSize: 14,
              color: Colors.grey[500],
            ),
          ),
        ],
      ),
    ),
  );
}