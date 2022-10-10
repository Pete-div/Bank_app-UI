

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class NewTx extends StatelessWidget {
  final VoidCallback done;
  final double opacity;
  NewTx(this.done, this.opacity);

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: Duration(seconds: 1),
      curve: Curves.fastOutSlowIn,
      width: double.infinity,
      padding: EdgeInsets.all(40),
      color: Colors.white.withOpacity(opacity),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          TextFormField(
            initialValue: 'App Subcription',
            style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
            readOnly: true,
            decoration: const InputDecoration(
                isDense: true,
                labelText: 'Title',
                border: OutlineInputBorder(),
                contentPadding: EdgeInsets.all(12)),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: TextFormField(
                  readOnly: true,
                  initialValue: '12',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),
                  decoration: InputDecoration(
                      isDense: true,
                      icon: Icon(
                        Icons.attach_money,
                      ),
                      contentPadding: EdgeInsets.all(8)),
                ),
              ),
              SizedBox(
                width: 20,
              ),
              Expanded(
                child: TextFormField(
                  readOnly: true,
                  initialValue: 'Business',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),
                  decoration: InputDecoration(
                      isDense: true,
                      icon: Icon(
                        Icons.work,
                      ),
                      contentPadding: EdgeInsets.all(8)),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            children: [
              ElevatedButton.icon(
            style: ButtonStyle(),
                onPressed: () {},
                icon: Icon(Icons.today),
                label: Text(
                  DateFormat('MMMM dd,yyyy',).format(
                    DateTime.now(),
                  ),style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold),
                ),
              ),
                    ElevatedButton.icon(
            style: ButtonStyle(),
                onPressed:done,
                icon: Icon(Icons.add,color: Colors.white,),
                label: Text(
                'ADD',style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold,color: Colors.white),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
