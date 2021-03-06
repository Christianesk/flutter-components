import 'package:components/src/utils/global_util.dart';
import 'package:flutter/material.dart';

class InputPage extends StatefulWidget {
  InputPage({Key key}) : super(key: key);

  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  String _name = '';
  String _email = '';
  String _date = '';

  String _optionSelected = 'fly';

  List<String> _powers = ['fly', 'X Ray', 'Super breath', 'Super strength'];
  TextEditingController _inputFieldDateController = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Inputs'),
        backgroundColor: Color(colorApplication),
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 20.0),
        children: [
          _createInput(),
          Divider(),
          _createEmail(),
          Divider(),
          _createPassword(),
          Divider(),
          _createDate(context),
          Divider(),
          _createDropdown(),
          Divider(),
          _createPerson(),
        ],
      ),
    );
  }

  Widget _createInput() {
    return TextField(
        textCapitalization: TextCapitalization.sentences,
        decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20.0),
            ),
            counter: Text('letters ${_name.length}'),
            hintText: 'Person name',
            labelText: 'Name',
            helperText: 'Only name',
            suffixIcon: Icon(Icons.accessibility),
            icon: Icon(Icons.account_circle)),
        onChanged: (value) => setState(() {
              _name = value;
            }));
  }

  Widget _createPerson() {
    return ListTile(
      title: Text('Name is: $_name'),
      subtitle: Text('Email: $_email'),
      trailing: Text(_optionSelected),
    );
  }

  Widget _createEmail() {
    return TextField(
        keyboardType: TextInputType.emailAddress,
        decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20.0),
            ),
            hintText: 'Email',
            labelText: 'Email',
            suffixIcon: Icon(Icons.alternate_email),
            icon: Icon(Icons.email)),
        onChanged: (value) => setState(() {
              _email = value;
            }));
  }

  Widget _createPassword() {
    return TextField(
        obscureText: true,
        decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20.0),
            ),
            hintText: 'Password',
            labelText: 'Pasword',
            suffixIcon: Icon(Icons.lock_open),
            icon: Icon(Icons.lock)),
        onChanged: (value) => setState(() {
              
            }));
  }

  Widget _createDate(BuildContext context) {
    return TextField(
      enableInteractiveSelection: false,
      controller: _inputFieldDateController,
      decoration: InputDecoration(
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20.0),
          ),
          hintText: 'Birthdate',
          labelText: 'Birthdate',
          suffixIcon: Icon(Icons.perm_contact_calendar),
          icon: Icon(Icons.calendar_today)),
      onTap: () {
        FocusScope.of(context).requestFocus(new FocusNode());
        _selectDate(context);
      },
    );
  }

  void _selectDate(BuildContext context) async {
    DateTime picked = await showDatePicker(
        context: context,
        initialDate: new DateTime.now(),
        firstDate: new DateTime(2018),
        lastDate: new DateTime(2025),
        locale: Locale('en', 'US'));

    if (picked != null) {
      setState(() {
        _date = picked.toString();
        _inputFieldDateController.text = _date.split(' ')[0];
      });
    }
  }

  List<DropdownMenuItem<String>> getOptionsDropdown() {
    List<DropdownMenuItem<String>> list = new List();
    _powers.forEach((power) {
      list.add(DropdownMenuItem(
        child: Text(power),
        value: power,
      ));
    });

    return list;
  }

  Widget _createDropdown() {
    return Row(
      children: <Widget>[
        Icon(Icons.select_all),
        SizedBox(width: 30.0),
        Expanded(
          
          child: DropdownButton(
            elevation: 16,
            isExpanded: true,
            value: _optionSelected,
            items: getOptionsDropdown(),
            onChanged: (opt) {
              setState(() {
                _optionSelected = opt;
              });
            },
          ),
        )
      ],
    );
  }
}
