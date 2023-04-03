import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ExercisePage extends ConsumerWidget {
  const ExercisePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bench Press'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Form(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                '30 secs',
                style: Theme.of(context).textTheme.displayLarge,
              ),
              Column(
                children: [
                  IntrinsicHeight(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        SizedBox(
                          width: 65,
                          child: TextFormField(
                            readOnly: true,
                            textAlign: TextAlign.center,
                            keyboardType: TextInputType.number,
                            initialValue: '100',
                            inputFormatters: <TextInputFormatter>[
                              FilteringTextInputFormatter.digitsOnly,
                              LengthLimitingTextInputFormatter(2)
                            ],
                            onSaved: (String? value) {},
                            validator: (String? value) => null,
                          ),
                        ),
                        const VerticalDivider(
                          width: 20,
                          thickness: 2,
                          color: Colors.purple,
                        ),
                        const RepField(),
                        const RepField(),
                        const RepField(),
                        const RepField(),
                      ],
                    ),
                  ),
                  IntrinsicHeight(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        SizedBox(
                          width: 65,
                          child: TextFormField(
                            readOnly: true,
                            textAlign: TextAlign.center,
                            keyboardType: TextInputType.number,
                            initialValue: '100',
                            inputFormatters: <TextInputFormatter>[
                              FilteringTextInputFormatter.digitsOnly,
                              LengthLimitingTextInputFormatter(2)
                            ],
                            onSaved: (String? value) {},
                            validator: (String? value) => null,
                          ),
                        ),
                        const VerticalDivider(
                          width: 20,
                          thickness: 2,
                          color: Colors.purple,
                        ),
                        const RepField(),
                        const RepField(),
                        const RepField(),
                        const RepField(),
                      ],
                    ),
                  ),
                  IntrinsicHeight(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        SizedBox(
                          width: 65,
                          child: TextFormField(
                            readOnly: true,
                            textAlign: TextAlign.center,
                            keyboardType: TextInputType.number,
                            initialValue: '100',
                            inputFormatters: <TextInputFormatter>[
                              FilteringTextInputFormatter.digitsOnly,
                              LengthLimitingTextInputFormatter(2)
                            ],
                            onSaved: (String? value) {},
                            validator: (String? value) => null,
                          ),
                        ),
                        const VerticalDivider(
                          width: 20,
                          thickness: 2,
                          color: Colors.purple,
                        ),
                        const RepField(),
                        const RepField(),
                        const RepField(),
                        const RepField(),
                      ],
                    ),
                  ),
                  const IntrinsicWidth(
                    child: Divider(
                      color: Colors.purple,
                      thickness: 2,
                    ),
                  ),
                  IntrinsicHeight(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        SizedBox(
                          width: 65,
                          child: TextFormField(
                            textAlign: TextAlign.center,
                            keyboardType: TextInputType.number,
                            initialValue: '100',
                            inputFormatters: <TextInputFormatter>[
                              FilteringTextInputFormatter.digitsOnly,
                              LengthLimitingTextInputFormatter(2)
                            ],
                            onSaved: (String? value) {},
                            validator: (String? value) => null,
                          ),
                        ),
                        const VerticalDivider(
                          width: 20,
                          thickness: 2,
                          color: Colors.purple,
                        ),
                        const RepField(),
                        const RepField(),
                        const RepField(),
                        const RepField(),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                width: double.infinity,
                height: 60,
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    'Done',
                    style: Theme.of(context).textTheme.displaySmall,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class RepField extends StatelessWidget {
  const RepField({Key? key, this.readOnly = false}) : super(key: key);
  final bool readOnly;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 65,
      child: TextFormField(
        readOnly: readOnly,
        textAlign: TextAlign.center,
        keyboardType: TextInputType.number,
        inputFormatters: <TextInputFormatter>[
          FilteringTextInputFormatter.digitsOnly,
          LengthLimitingTextInputFormatter(2)
        ],
        decoration: const InputDecoration(hintText: '~'),
        onSaved: (String? value) {},
        validator: (String? value) => null,
      ),
    );
  }
}