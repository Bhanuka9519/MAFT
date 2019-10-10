import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:tabulation/store/app/app_state.dart';
import 'package:tabulation/store/models/area_model.dart';
import 'package:tabulation/view_models/receiving_pv_viewmodel.dart';

class ReceivingStepOneForm extends StatefulWidget {
  @override
  _ReceivingStepOneFormState createState() => new _ReceivingStepOneFormState();
}

class _ReceivingStepOneFormState extends State<ReceivingStepOneForm> {
  final _formKey = GlobalKey<FormState>();
  void _showDialog(String message) {
    Scaffold.of(context).showSnackBar(
      SnackBar(
        backgroundColor: Colors.redAccent,
        content: Text(message),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, ReceivingPvViewModel>(
      converter: (store) => ReceivingPvViewModel.fromStore(store),
      builder: (context, viewModel) {
        return new Form(
          key: _formKey,
          child: new Column(
            children: getFormWidget(viewModel),
          ),
        );
      },
    );
  }

  List<Widget> getFormWidget(ReceivingPvViewModel viewModel) {
    List<Widget> formWidgets = new List();
    List<Area> countingCenters = new List();

    viewModel.areas.forEach((Area area) {
      if (area.areaType == "CountingCentre") {
        countingCenters.add(area);
      }
    });

    final issuedBy = new Row(
      children: <Widget>[
        Padding(
          padding: EdgeInsets.only(top: 0.0),
          child: Text(
            'Received By : ',
            style: new TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
          ),
        ),
        new Expanded(
          child: Padding(
            padding: EdgeInsets.only(top: 0.0),
            child: new Container(
              padding: new EdgeInsets.only(left: 8.0),
              child: new Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  new Text(
                    'District EC Officer',
                    style: new TextStyle(
                        fontWeight: FontWeight.normal, fontSize: 18.0),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
    final receivedBy = new Row(
      children: <Widget>[
        Padding(
          padding: EdgeInsets.only(top: 20.0),
          child: Text(
            'Received from : ',
            style: new TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
          ),
        ),
        new Expanded(
          child: Padding(
            padding: EdgeInsets.only(top: 20.0),
            child: new Container(
              padding: new EdgeInsets.only(left: 8.0),
              child: new Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  new Text(
                    'Certified Officer',
                    style: new TextStyle(
                        fontWeight: FontWeight.normal, fontSize: 18.0),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );

    final district = new Row(
      children: <Widget>[
        Padding(
          padding: EdgeInsets.only(top: 33.0),
          child: Text(
            'District : ',
            style: new TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
          ),
        ),
        new Expanded(
          child: Padding(
            padding: EdgeInsets.only(top: 33.0),
            child: new Container(
              padding: new EdgeInsets.only(left: 8.0),
              child: new Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  DropdownButton(
                    isExpanded: true,
                    items: [
                      new DropdownMenuItem(child: new Text("Puttalam")),
                    ],
                    hint: new Text("Select a district"),
                    onChanged: (value) {},
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );

    final countingCenter = Row(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(top: 20.0, right: 0.0, left: 0.0,bottom:20.0),
          child: new Text(
            'PV I/R Center : ',
            style: new TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
          ),
        ),
        new Expanded(
          child: Padding(
            padding: EdgeInsets.only(top: 20.0,bottom:20.0),
            child: new Container(
              padding: new EdgeInsets.only(left: 5.0),
              child: new Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  DropdownButton(
                      isExpanded: true,
                      items: [
                        new DropdownMenuItem(child: new Text("PV I/R Center"))
                      ],
                      hint: new Text("Select Station"),
                      onChanged: (value) {}),
                ],
              ),
            ),
          ),
        ),
      ],
    );

    final districtR = new Row(
      children: <Widget>[
        Padding(
          padding: EdgeInsets.only(top: 33.0),
          child: Text(
            'District : ',
            style: new TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
          ),
        ),
        new Expanded(
          child: Padding(
            padding: EdgeInsets.only(top: 33.0),
            child: new Container(
              padding: new EdgeInsets.only(left: 8.0),
              child: new Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  DropdownButton(
                    isExpanded: true,
                    items: [
                      new DropdownMenuItem(child: new Text("Puttalam")),
                    ],
                    hint: new Text("Select a district"),
                    onChanged: (value) {},
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );

    final countingCenterR = Row(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(top: 20.0, right: 0.0, left: 0.0),
          child: new Text(
            'PV I/R Center : ',
            style: new TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),
          ),
        ),
        new Expanded(
          child: Padding(
            padding: EdgeInsets.only(top: 20.0),
            child: new Container(
              padding: new EdgeInsets.only(left: 5.0),
              child: new Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  DropdownButton(
                      isExpanded: true,
                      items: [
                        new DropdownMenuItem(child: new Text("PV I/R Center"))
                      ],
                      hint: new Text("Select Station"),
                      onChanged: (value) {}),
                ],
              ),
            ),
          ),
        ),
      ],
    );

    final divider = Divider(
      height: 30.0,
      color: Colors.blueGrey,
    );

    final btnNext = Padding(
      padding: const EdgeInsets.only(top: 20.0, right: 0.0, left: 0.0),
      child: new SizedBox(
        width: double.infinity,
        height: 60.0,
        child: new RaisedButton(
          textColor: Colors.white,
          shape: new RoundedRectangleBorder(
              borderRadius: new BorderRadius.circular(10.0)),
          color: Color.fromRGBO(72, 121, 209, 1),
          child: Text(
            'Next',
            style: TextStyle(fontSize: 20),
          ),
          onPressed: () {
            viewModel.createInvoice();
          },
        ),
      ),
    );

    formWidgets.add(issuedBy);
    formWidgets.add(district);
    formWidgets.add(countingCenter);

    formWidgets.add(divider);
    
    formWidgets.add(receivedBy);
    formWidgets.add(districtR);
    formWidgets.add(countingCenterR);

    formWidgets.add(btnNext);

    return formWidgets;
  }
}