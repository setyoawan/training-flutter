import 'package:flutter/material.dart';

/* class cobaForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("SFA Meet 03 Form")),
        body: Meet3Page(),
      ),
    );
  }
}

class Meet3Page extends StatefulWidget {
  const Meet3Page({Key? key}) : super(key: key);

  @override
  _Meet3PageState createState() => _Meet3PageState();
}

class _Meet3PageState extends State<Meet3Page> {
  final _formKey = GlobalKey<FormState>();
  bool muncul = false;
  TextEditingController nameCont = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              controller: nameCont,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Field ini wajib diisi';
                }
                return null;
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16.0),
            child: ElevatedButton(
              onPressed: () {
                setState(() {
                  this.muncul = false;
                });
                if (_formKey.currentState!.validate()) {
                  setState(() {
                    this.muncul = true;
                  });
                }
              },
              child: const Text('Proses'),
            ),
          ),
          if (this.muncul == true) Text("Hasil : ${this.nameCont.text}")
        ],
      ),
    );
  }
} */

// Text Form Field ============================

/* class cobaTextFormField extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("SFA Meet 03 TextFormField")),
        body: Meet3Page(),
      ),
    );
  }
}

class Meet3Page extends StatefulWidget {
  const Meet3Page({Key? key}) : super(key: key);

  @override
  __Meet3PageState createState() => __Meet3PageState();
}

class __Meet3PageState extends State<Meet3Page> {
  String test = "";

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 10, right: 10, top: 10),
          child: TextFormField(),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 10, right: 10, top: 10),
          child: TextFormField(
            decoration: InputDecoration(
                labelText: "Nama",
                hintText: "e.g. Hint",
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
                suffixIcon: Icon(Icons.close_rounded),
                suffixText: "suffix",
                helperText: "helper",
                counterText: "counter",
                errorText: "error",
                icon: Text("Widget"),
                prefixText: "prefix",
                prefixIcon: Icon(Icons.email)),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 10, right: 10, top: 10),
          child: TextFormField(
            textAlign: TextAlign.center,
            obscureText: true,
            maxLength: 9,
            keyboardType: TextInputType.number,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 10, right: 10, top: 10),
          child: TextFormField(
            maxLines: 3,
            onChanged: (value) {
              setState(() {
                this.test = value;
              });
            },
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 10, right: 10, top: 10),
          child: Center(
              child: Text(
            this.test,
            textAlign: TextAlign.center,
          )),
        ),
      ],
    );
  }
} */

// Checkbox ===========================

/* class cobaCheckbox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("SFA Meet 03 CheckboxListTile")),
        body: Meet3Page(),
      ),
    );
  }
}

class Meet3Page extends StatefulWidget {
  const Meet3Page({Key ? key}) : super(key: key);

  @override
  ___Meet3PageState createState() => ___Meet3PageState();
}

class ___Meet3PageState extends State<Meet3Page> {
  List<data> listCheck = [
    data(Icons.save, "Programmer", false),
    data(Icons.format_paint, "Designer", false),
    data(Icons.music_note, "Composer", false),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: listCheck.length,
      itemBuilder: (_, int i){
        return CheckboxListTile(
          title: Text(this.listCheck[i].title),
          value: this.listCheck[i].cek,
          activeColor: Colors.blue,
          checkColor: Colors.white,
          onChanged: (bool? value) {
            setState(() {
              this.listCheck[i].cek = value!;
            });
          },
          selected: this.listCheck[i].cek,
          secondary: Icon(this.listCheck[i].icon),
          controlAffinity: ListTileControlAffinity.trailing,
        );
      },
    );
  }
}

class data {
  IconData icon;
  String title;
  bool cek;

  data(this.icon, this.title, this.cek);
} */

// Radio List Tile

class cobaRadio extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("SFA Meet 03 RadioListTile")),
        body: Meet3Page(),
      ),
    );
  }
}

class Meet3Page extends StatefulWidget {
  const Meet3Page({Key? key}) : super(key: key);

  @override
  _Meet3PageState createState() => _Meet3PageState();
}

class _Meet3PageState extends State<Meet3Page> {
  List<data> listCheck = [
    data(Icons.save, "Programmer"),
    data(Icons.format_paint, "Designer"),
    data(Icons.music_note, "Composer"),
  ];
  String? _job;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: listCheck.length,
      itemBuilder: (_, int i) {
        return RadioListTile(
          title: Text(this.listCheck[i].title),
          value: this.listCheck[i].title,
          groupValue: _job,
          activeColor: Colors.blue,
          onChanged: (String? value) {
            setState(() {
              this._job = value;
            });
          },
          secondary: Icon(this.listCheck[i].icon),
          controlAffinity: ListTileControlAffinity.trailing,
        );
      },
    );
  }
}

class data {
  IconData icon;
  String title;

  data(this.icon, this.title);
}
