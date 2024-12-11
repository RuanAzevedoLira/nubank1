import 'package:flutter/material.dart';

class Area_PIX extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Text('X'), // First text
            Spacer(), // Spacer to push the second title to the right
            Text('?'), // Second text
          ],
        ),
        backgroundColor: Color(0xFF8A33F4), // Nubank purple
      ),
      body: Container(
        color: Colors.white,
        child: Padding(
          padding: EdgeInsets.all(16.0), // Padding around the text
          child: Column(
            crossAxisAlignment: CrossAxisAlignment
                .start, // Align the children to the start (left side)
            children: [
              Text(
                'Área Pix', // Larger text at the top
                style: TextStyle(
                  fontSize: 24, // Set the font size for the larger text
                  fontWeight: FontWeight.bold, // Make it bold
                  color: Colors.black, // Set the text color
                ),
              ),
              SizedBox(height: 8), // Add some space between the texts
              Text(
                'Envie e receba pagamentos a qualquer hora e dia da semana, sem pagar nada por isso.', // Smaller text below the main text
                style: TextStyle(
                  fontSize: 16, // Smaller font size for the second text
                  color: Color(0xff000000), // Set the text color
                ),
              ),
              SizedBox(height: 16), // Space between text and grid

              // GridView to display 6 buttons in a 3x2 grid
              Container(
                height: MediaQuery.of(context).size.height *
                    0.4, // Adjust height of the grid
                child: GridView.count(
                  crossAxisCount: 3, // 3 columns
                  crossAxisSpacing: 16, // Space between columns
                  mainAxisSpacing: 16, // Space between rows
                  children: List.generate(6, (index) {
                    // Get screen width to dynamically scale the buttons
                    double screenWidth = MediaQuery.of(context).size.width;
                    double buttonWidth = 40;
                    double buttonHeight = buttonWidth; // Make the button square

                    // List of texts for each button
                    List<String> buttonLabels = [
                      'Transferir',
                      'Programar',
                      'Ler QR code',
                      'Pix Copia e Cola',
                      'Cobrar',
                      'Depositar'
                    ];

                    // List of icons for each button
                    List<IconData> buttonIcons = [
                      Icons.local_atm, // Button 1
                      Icons.event, // Button 2
                      Icons.qr_code, // Button 3
                      Icons.content_copy, // Button 4
                      Icons.local_atm, // Button 5 (same as button 1)
                      Icons.local_atm, // Button 6 (same as button 1)
                    ];

                    return Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Color(0xffffffff),
                            shape: CircleBorder(),
                            padding: EdgeInsets.all(
                                30), // Adjust padding if necessary
                            minimumSize: Size(buttonWidth,
                                buttonHeight), // Dynamically set button size
                          ),
                          child: Icon(
                            buttonIcons[
                                index], // Use the icon based on the index
                            color: Color(0xff000000),
                            size: buttonWidth *
                                0.4, // Icon size as a proportion of the button size
                          ),
                        ),
                        SizedBox(height: 8), // Space between button and text
                        Text(
                          buttonLabels[
                              index], // Use the text based on the index
                          style: TextStyle(
                            fontSize: 12, // Smaller font size for text
                            color: Colors.black, // Set text color
                          ),
                        ),
                      ],
                    );
                  }),
                ),
              ),
              SizedBox(height: 16),
              Divider(
                color: Colors.grey, // Divider color (you can customize it)
                thickness: 1, // Divider thickness (default is 0.5)
                indent: 0, // Left indent
                endIndent: 0, // Right indent
                height: 20, // Space around the divider
              ),
              SizedBox(height: 8),
              Text(
                'Preferências', // Smaller text below the main text
                style: TextStyle(
                  fontSize: 16, // Smaller font size for the second text
                  color: Colors.black, // Set the text color
                ),
              ),
              SizedBox(
                width: 8,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Icon(Icons.shield, color: Colors.black), // First icon
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    'Registrar ou trazer chaves',
                    style: TextStyle(fontSize: 16, color: Colors.black),
                  ),
                  Spacer(),
                  Icon(Icons.arrow_forward,
                      color: Colors.black), // Second icon at the edge
                ],
              ),
              SizedBox(
                width: 8,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Icon(Icons.settings, color: Colors.black), // First icon
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    'Configurar Pix',
                    style: TextStyle(fontSize: 16, color: Colors.black),
                  ),
                  Spacer(),
                  Icon(Icons.arrow_forward,
                      color: Colors.black), // Second icon at the edge
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
