import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class Ticket {
  String name;
  double price;
  DateTime purchaseDate;

  Ticket(this.name, this.price, this.purchaseDate);
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: TicketList(),
    );
  }
}

class TicketList extends StatefulWidget {
  @override
  _TicketListState createState() => _TicketListState();
}

class _TicketListState extends State<TicketList> {
  List<Ticket> tickets = [
    Ticket('Concert', 50.0, DateTime(2024, 2, 15)),
    Ticket('Movie', 20.0, DateTime(2024, 2, 20)),
    Ticket('Event', 30.0, DateTime(2024, 2, 25)),
  ];

  DateTime? selectedDate; // Updated type to DateTime?

  void _filterTicketsByDate() {
    List<Ticket> filteredTickets = selectedDate != null
        ? tickets
            .where((ticket) =>
                ticket.purchaseDate.year == selectedDate!.year &&
                ticket.purchaseDate.month == selectedDate!.month &&
                ticket.purchaseDate.day == selectedDate!.day)
            .toList()
        : tickets;

    setState(() {
      tickets = filteredTickets;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ticket App'),
      ),
      body: Column(
        children: [
          ElevatedButton(
            onPressed: () async {
              DateTime currentDate = selectedDate ?? DateTime.now();

              await showDialog(
                context: context,
                builder: (BuildContext context) {
                  return AlertDialog(
                    title: Text('Filter Tickets'),
                    content: Column(
                      children: [
                        // Champ de sélection de date
                        ElevatedButton(
                          onPressed: () async {
                            final DateTime? picked = await showDatePicker(
                              context: context,
                              initialDate: currentDate,
                              firstDate: DateTime(2020),
                              lastDate: DateTime(2101),
                            );

                            if (picked != null && picked != currentDate) {
                              setState(() {
                                selectedDate = picked;
                              });
                            }
                          },
                          child: Text('Select Date'),
                        ),
                        SizedBox(height: 20),
                        // Bouton Filtrer
                        ElevatedButton(
                          onPressed: () {
                            _filterTicketsByDate();
                            Navigator.of(context).pop();
                          },
                          child: Text('Filter'),
                        ),
                      ],
                    ),
                    actions: [
                      ElevatedButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        child: Text('Cancel'),
                      ),
                    ],
                  );
                },
              );
            },
            child: Text('Filter Tickets'),
          ),
          SizedBox(height: 20),
          Text('Tickets:'),
          for (var ticket in tickets)
            ListTile(
              title: Text('${ticket.name} - ${ticket.price}'),
              subtitle: Text('Date: ${ticket.purchaseDate.toLocal()}'),
            ),
        ],
      ),
    );
  }
}
