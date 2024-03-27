import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show ByteData, rootBundle;
import 'package:path_provider/path_provider.dart';
import 'dart:io';
import 'package:file_picker/file_picker.dart';
import 'question_page.dart'; // Import your QuestionPage here

class CVPage extends StatefulWidget {
  @override
  _CVPageState createState() => _CVPageState();
}

class _CVPageState extends State<CVPage> {
  late String _filePath = '';
  String _fileName = '';
  String _pdfUrl = "assets/bot_bg.jpg"; // Replace with the path to your PDF file in the assets directory

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('CV Page'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Expanded(
                child: Container(
                  padding: EdgeInsets.all(20.0),
                  decoration: BoxDecoration(
                    border: Border.all(color: Color.fromARGB(255, 255, 255, 255), style: BorderStyle.solid),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Upload your CV to analyze',
                        style: TextStyle(fontSize: 18.0),
                      ),
                      SizedBox(height: 20.0),
                      ElevatedButton(
                        onPressed: () async {
                          String? filePath = await _pickPDF();
                          if (filePath != null) {
                            setState(() {
                              _filePath = filePath;
                              _fileName = filePath.split('/').last;
                            });
                          }
                        },
                        child: Text('Upload PDF'),
                      ),
                      SizedBox(height: 20.0),
                      if (_fileName.isNotEmpty) Text('Uploaded PDF: $_fileName'),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20.0),
              ElevatedButton(
                onPressed: () async {
                  await _downloadPDF(_pdfUrl);
                },
                child: Text('Sample PDF'),
              ),
              SizedBox(height: 20.0),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => QuestionPage()),
                  );
                },
                child: Text('Submit'),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Future<String?> _pickPDF() async {
    FilePickerResult? result = await FilePicker.platform.pickFiles(
      type: FileType.custom,
      allowedExtensions: ['pdf'],
    );

    if (result != null) {
      PlatformFile file = result.files.first;
      return file.path;
    } else {
      return null;
    }
  }

  Future<void> _downloadPDF(String url) async {
    final ByteData data = await rootBundle.load(url);
    final Directory tempDir = await getTemporaryDirectory();
    final File file = File('${tempDir.path}/$_pdfUrl');
    await file.writeAsBytes(data.buffer.asUint8List(), flush: true);
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text('PDF downloaded successfully')),
    );
  }
}
