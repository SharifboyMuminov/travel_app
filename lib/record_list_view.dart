import 'package:flutter/material.dart';
import 'package:flutter_sound/public/flutter_sound_player.dart';

class RecordListView extends StatefulWidget {
  final List<String> records;
  const RecordListView({
    super.key,
    required this.records,
  });

  @override
  _RecordListViewState createState() => _RecordListViewState();
}

class _RecordListViewState extends State<RecordListView> {
  late int _totalDuration;
  late int _currentDuration;
  double _completedPercentage = 0.0;
  bool _isPlaying = false;
  int _selectedIndex = -1;
  FlutterSoundPlayer _player = FlutterSoundPlayer();


  @override
  void initState() {

    _init();
    super.initState();
  }

  _init()async{
    await _player.openPlayer();
  }

  @override
  Widget build(BuildContext context) {
    return widget.records.isEmpty
        ? Center(child: Text('No records yet'))
        : ListView.builder(
      itemCount: widget.records.length,
      shrinkWrap: true,
      reverse: true,
      itemBuilder: (BuildContext context, int i) {
        print(widget.records[i]);
        return ExpansionTile(
          title: Text('New recoding ${widget.records.length - i}'),
          subtitle: Text(_getDateFromFilePath(
              filePath: widget.records.elementAt(i))),
          onExpansionChanged: ((newState) {
            if (newState) {
              setState(() {
                _selectedIndex = i;
              });
            }
          }),
          children: [
            Container(
              height: 100,
              padding: const EdgeInsets.all(10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  LinearProgressIndicator(
                    minHeight: 5,
                    backgroundColor: Colors.black,
                    valueColor:
                    AlwaysStoppedAnimation<Color>(Colors.green),
                    value: _selectedIndex == i ? _completedPercentage : 0,
                  ),
                  IconButton(
                    icon: _selectedIndex == i
                        ? _isPlaying
                        ? Icon(Icons.pause)
                        : Icon(Icons.play_arrow)
                        : Icon(Icons.play_arrow),
                    onPressed: () {
                      _startPlayback(widget.records[i]);
                    }
                  ),
                ],
              ),
            ),
          ],
        );
      },
    );
  }

  Future<void> _startPlayback(String? filePath) async {
    if (filePath != null) {
      try {
        await _player.startPlayer(fromURI: filePath!);
        setState(() {
          _isPlaying = true;
        });
      } catch (e) {
        print('Error starting playback: $e');
        setState(() {
          _isPlaying = false;
        });
      }
    }
  }


  String _getDateFromFilePath({required String filePath}) {
    String fromEpoch = filePath.substring(
        filePath.lastIndexOf('/') + 1, filePath.lastIndexOf('.'));

    print(fromEpoch);

    DateTime recordedDate =
    DateTime.fromMillisecondsSinceEpoch(int.parse(fromEpoch));
    int year = recordedDate.year;
    int month = recordedDate.month;
    int day = recordedDate.day;

    return ('$year-$month-$day');
  }
}