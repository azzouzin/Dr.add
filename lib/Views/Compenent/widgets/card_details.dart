import 'package:flutter/material.dart';

import '../Constants.dart';

class CardDetails extends StatelessWidget {
  const CardDetails({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: Colors.white,
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 4.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            DateRow(),
            TimeRow(),
            StatusRow(),
          ],
        ),
      ),
    );
  }
}

/////////////////////////////////////////
class StatusRow extends StatelessWidget {
  const StatusRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(
          radius: 3,
          backgroundColor: Colors.green,
        ),
        SizedBox(
          width: 4.0,
        ),
        Text(
          'Confirmedd',
          style: TextStyle(color: Colors.grey),
        ),
      ],
    );
  }
}

/////////////////////////////////////////
class TimeRow extends StatelessWidget {
  const TimeRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          Icons.watch_later,
          color: kPrimaryColor,
          size: 14,
        ),
        SizedBox(
          width: 4.0,
        ),
        Text(
          '08:45 AM',
          style: TextStyle(color: Colors.grey),
        ),
      ],
    );
  }
}

////////////////////////////////////////
class DateRow extends StatelessWidget {
  const DateRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          Icons.calendar_month,
          color: kPrimaryColor,
          size: 14,
        ),
        SizedBox(
          width: 4.0,
        ),
        Text(
          '10/06/2023',
          style: TextStyle(color: Colors.grey),
        ),
      ],
    );
  }
}
