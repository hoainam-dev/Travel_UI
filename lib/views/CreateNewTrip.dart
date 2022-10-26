import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:intl/intl.dart';

class CreateNewTrip extends StatefulWidget {
  const CreateNewTrip({Key? key}) : super(key: key);

  @override
  State<CreateNewTrip> createState() => _CreateNewTripState();
}

Widget buildGridViewsImg(isChecked) => StaggeredGrid.count(
        crossAxisCount: 6,
        crossAxisSpacing: 10.0,
        mainAxisSpacing: 10.0,
        children: [
          StaggeredGridTile.count(
            crossAxisCellCount: 3,
            mainAxisCellCount: 2,
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(primary: Colors.white),
                onPressed: () => {print("add a new picture success!")},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Icon(
                      Icons.add,
                      color: Color(0xff00CEA6),
                      size: 30,
                    ),
                    Text(
                      "Add new",
                      style:
                          TextStyle(color: Color(0xff00CEA6), fontSize: 16),
                    )
                  ],
                )),
          ),
          StaggeredGridTile.count(
              crossAxisCellCount: 3,
              mainAxisCellCount: 2,
              child: Stack(
                children: [
                  SizedBox(
                    height: 135,
                    child: Image.asset(
                      "images/picture01.png",
                      fit: BoxFit.cover,
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(left: 15, top: 100),
                    child: const Text(
                      "Dragon Bridge",
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    ),
                  ),
                  Container(
                      margin: const EdgeInsets.only(left: 160, top: 10),
                      child: Transform.scale(
                          scale: 1.3,
                          child: Checkbox(
                            activeColor: const Color(0xff00CEA6),
                            checkColor: Colors.white,
                            value: isChecked,
                            shape: const CircleBorder(),
                            onChanged: (bool? value) {},
                          )))
                ],
              )),
          StaggeredGridTile.count(
              crossAxisCellCount: 3,
              mainAxisCellCount: 2,
              child: Stack(
                children: [
                  SizedBox(
                    height: 135,
                    child: Image.asset(
                      "images/picture02.png",
                      fit: BoxFit.cover,
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(left: 15, top: 100),
                    child: const Text(
                      "Cham Museum",
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    ),
                  ),
                  Container(
                      margin: const EdgeInsets.only(left: 160, top: 10),
                      child: Transform.scale(
                          scale: 1.3,
                          child: Checkbox(
                            activeColor: const Color(0xff00CEA6),
                            checkColor: Colors.white,
                            value: isChecked,
                            shape: const CircleBorder(),
                            onChanged: (bool? value) {},
                          )))
                ],
              )),
          StaggeredGridTile.count(
              crossAxisCellCount: 3,
              mainAxisCellCount: 2,
              child: Stack(
                children: [
                  SizedBox(
                    height: 135,
                    child: Image.asset(
                      "images/picture03.png",
                      fit: BoxFit.cover,
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(left: 15, top: 100),
                    child: const Text(
                      "My Khe Beach",
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    ),
                  ),
                  Container(
                      margin: const EdgeInsets.only(left: 160, top: 10),
                      child: Transform.scale(
                          scale: 1.3,
                          child: Checkbox(
                            activeColor: const Color(0xff00CEA6),
                            checkColor: Colors.white,
                            value: isChecked,
                            shape: const CircleBorder(),
                            onChanged: (bool? value){}
                          )))
                ],
              )),
        ]);

class _CreateNewTripState extends State<CreateNewTrip> {
  final TextEditingController _LocationController = TextEditingController();

  final TextEditingController _DateController = TextEditingController();

  final TextEditingController _TimeFromController = TextEditingController();

  final TextEditingController _TimeTocontroller = TextEditingController();

  final TextEditingController _NumberOfTravelController = TextEditingController();

  final TextEditingController _FeeController = TextEditingController();

  final TextEditingController _LanguageController = TextEditingController();

  bool isChecked = false;

  @override
  void initState() {
    super.initState();
    _NumberOfTravelController.text = "1"; // Setting the initial value for the field.
  }

  void add() {
    int currentValue = int.parse(_NumberOfTravelController.text);
    setState(() {
      currentValue++;
      _NumberOfTravelController.text =
          (currentValue).toString(); // incrementing value
    });
  }

  void minus() {
    int currentValue = int.parse(_NumberOfTravelController.text);
    setState(() {
      currentValue--;
      _NumberOfTravelController.text =
          (currentValue > 1 ? currentValue : 1)
              .toString(); // decrementing value
    });
  }

  DateTime selectedDate = DateTime.now();

  DateTime selectedTimeFrom = DateTime.now();

  DateTime selectedTimeTo = DateTime.now();

  _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: selectedDate,
      firstDate: DateTime(2000),
      lastDate: DateTime(2025),
    );
    if (picked != null && picked != selectedDate)
      setState(() {
        selectedDate = picked.toLocal();
        _DateController.text =
            (selectedDate).toString().split(' ')[0];
      });
  }

  _selectedTimeFrom(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: selectedTimeFrom,
      firstDate: DateTime(2000),
      lastDate: DateTime(2025),
    );
    if (picked != null && picked != selectedTimeFrom)
      setState(() {
        selectedTimeFrom = picked.toLocal();
        _TimeFromController.text =
        (selectedTimeFrom).toString().split(' ')[0];
      });
  }

  _selectedTimeTo(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: selectedTimeTo,
      firstDate: DateTime(2000),
      lastDate: DateTime(2025),
    );
    if (picked != null && picked != selectedTimeTo)
      setState(() {
        selectedTimeTo = picked.toLocal();
        _TimeTocontroller.text =
        (selectedTimeTo).toString().split(' ')[0];
      });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Stack(
            children: [
              Container(
                margin: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                height: 50,
                // color: Colors.white,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    TextButton.icon(
                      style: TextButton.styleFrom(
                        primary: Colors.black,
                      ),
                      icon: const Icon(Icons.clear, size: 22),
                      label: const Text(
                        '',
                      ),
                      onPressed: () {},
                    ),
                    const SizedBox(
                      width: 140,
                    ),
                    const Text(
                      "Create New Trip",
                      style:
                          TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              Container(
                  margin: const EdgeInsets.fromLTRB(0, 30, 0, 0),
                  width: 520,
                  height: 1050,
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 40, right: 40, top: 60),
                          child: Form(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  "Where you want to explore",
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold),
                                ),
                                TextFormField(
                                  decoration: const InputDecoration(
                                    prefixIcon: Icon(
                                      Icons.location_on_outlined,
                                    ),
                                    hintText: 'Danang, Vietnam',
                                  ),
                                  controller: _LocationController,
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                                const Text(
                                  "Date",
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold),
                                ),
                                TextFormField(
                                  decoration: const InputDecoration(
                                    prefixIcon:
                                        Icon(Icons.calendar_month_outlined),
                                    hintText: 'mm/dd/yy',
                                  ),
                                  controller: _DateController,
                                  onTap: () => _selectDate(context),
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                                const Text(
                                  "Time",
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold),
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Expanded(
                                      flex: 1,
                                      child: TextFormField(
                                        decoration: const InputDecoration(
                                          prefixIcon:
                                              Icon(Icons.access_time_outlined),
                                          hintText: 'From',
                                        ),
                                        controller: _TimeFromController,
                                        onTap: () => _selectedTimeFrom(context),
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 20,
                                    ),
                                    Expanded(
                                      flex: 1,
                                      child: TextFormField(
                                        decoration: const InputDecoration(
                                          prefixIcon:
                                              Icon(Icons.access_time_outlined),
                                          hintText: 'To',
                                        ),
                                        controller: _TimeTocontroller,
                                        onTap: () => _selectedTimeTo(context),
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                                const Text(
                                  "Number of travelers",
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Container(
                                  width: 180,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      OutlinedButton(
                                        onPressed: minus,
                                        style: OutlinedButton.styleFrom(
                                          fixedSize: const Size(40, 30),
                                        ),
                                        child: const Icon(
                                          Icons.arrow_drop_down,
                                          color: Color(0xff00BC97),
                                        ),
                                      ),
                                      Expanded(
                                        flex: 1,
                                        child: TextField(
                                          decoration: const InputDecoration(
                                            isDense: true,                      // Added this
                                            contentPadding: EdgeInsets.all(8),
                                          ),
                                          textAlign: TextAlign.center,
                                          controller: _NumberOfTravelController,
                                        ),
                                      ),
                                      OutlinedButton(
                                        onPressed: add,
                                        child: const Icon(
                                          Icons.arrow_drop_up,
                                          color: Color(0xff00BC97),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                                const Text(
                                  "Fee",
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold),
                                ),
                                TextFormField(
                                  decoration: const InputDecoration(
                                    prefixIcon:
                                        Icon(Icons.monetization_on_outlined),
                                    hintText: 'Fee',
                                    suffixIcon: Padding(
                                      padding: EdgeInsets.only(bottom: 10.0),
                                      child: Align(
                                          alignment: Alignment.bottomCenter,
                                          widthFactor: 1.0,
                                          heightFactor: 1.0,
                                          child: Text(
                                            r'($/hour)',
                                            style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 16),
                                          )),
                                    ),
                                  ),
                                  controller: _FeeController,
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                                const Text(
                                  "Guide's Language",
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold),
                                ),
                                TextFormField(
                                  decoration: const InputDecoration(
                                      prefixIcon: Icon(
                                        Icons.public,
                                      ),
                                      hintText: 'Korean, English'),
                                  controller: _LanguageController,
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                                const Text(
                                  "Attractions",
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold),
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                                buildGridViewsImg(isChecked),
                                const SizedBox(
                                  height: 40,
                                ),
                                ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                        primary: const Color(0xff00CEA6)),
                                    onPressed: () {},
                                    child: const SizedBox(
                                        height: 50,
                                        child: Center(
                                            child: Text("DONE",
                                                style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 16,
                                                ))))),
                              ],
                            ),
                          ),
                        ),
                      ]))
            ],
          ),
        ),
      ),
    );
  }
}
