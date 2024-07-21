import 'package:flutter/material.dart';

class TextFields extends StatefulWidget {
  const TextFields({super.key});

  @override
  State<TextFields> createState() => _TextFieldsState();
}

class _TextFieldsState extends State<TextFields> {
  final TextEditingController controller = TextEditingController();

  String hasil = 'HASIL INPUT';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Fitur TextField'),
        backgroundColor: Colors.green,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          height: 150,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const TextField(
                showCursor: true,
                cursorColor: Colors.amber,
                cursorWidth: 5,
                cursorHeight: 20,
                cursorRadius: Radius.circular(20),
                // textAlign: TextAlign.end,
                textAlignVertical: TextAlignVertical.center,
                textCapitalization: TextCapitalization.none,
                style: TextStyle(
                  color: Colors.red,
                  fontSize: 16.0,
                ),
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.red,
                    ),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.red,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.black,
                    ),
                  ),
                  prefixIcon: Icon(Icons.add_a_photo), // Kiri TextField
                  // prefixText: 'Email: ',
                  suffix: Icon(Icons.email), // Kanan TextField
                  labelText: 'Email address',
                  labelStyle: TextStyle(
                    color: Colors.black,
                  ),
                  hintText: 'Please input your email',
                  hintStyle: TextStyle(
                    color: Colors.blue,
                    fontSize: 14,
                  ),
                  // Luar Border
                  icon: Icon(
                    Icons.person,
                    size: 24.0,
                  ),
                ),
              ),
              const SizedBox(
                height: 10.0,
              ),
              TextField(
                enableSuggestions: false,
                autocorrect: true,
                autofocus: false,
                obscureText: true,

                // keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  border: const OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.black,
                    ),
                  ),
                  icon: const Icon(Icons.password),
                  label: const Text('Password'),
                  suffixIcon: IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.remove_red_eye),
                  ),
                ),
              ),

              // Penggunaan TextField
              TextField(
                controller: controller,
                onChanged: (value) {
                  print('ON CHANGED');
                  setState(() {
                    hasil = value;
                  });
                },
                onSubmitted: (value) {
                  print(value);
                  setState(() {
                    hasil = value;
                  });
                },
                onEditingComplete: () {
                  print('EDIT SUCCESS');
                  print(controller.text);
                },
              ),
              Text(hasil)
            ],
          ),
        ),
      ),
    );
  }
}
