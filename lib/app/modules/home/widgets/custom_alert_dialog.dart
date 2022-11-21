import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CustomAlertDialog extends StatelessWidget {
  final RxList listSearch;
  final Function(String) selectedSearch;
  final void Function(String)? onChanged;
  const CustomAlertDialog({
    Key? key,
    required this.listSearch,
    required this.selectedSearch,
    required this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(20))),
      content: SingleChildScrollView(
        child: Container(
          width: double.maxFinite,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              TextField(
                autofocus: false,
                maxLines: 1,
                style: TextStyle(fontSize: 18),
                decoration: new InputDecoration(
                  border: InputBorder.none,
                  hintText: "Pesquise...",
                ),
                onChanged: onChanged,
              ),
              Divider(),
              ConstrainedBox(
                constraints: BoxConstraints(
                  maxHeight: MediaQuery.of(context).size.height * 0.4,
                ),
                child: Obx(
                  ()=> ListView.builder(
                      shrinkWrap: true,
                      itemCount: listSearch.length,
                      itemBuilder: (BuildContext context, int index) {
                        return ListTile(
                            onTap: () {
                              selectedSearch(listSearch[index]);
                              Navigator.pop(context);
                            },
                            title: Text(
                              listSearch[index],
                            ));
                      })
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
