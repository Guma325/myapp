import 'package:flutter/material.dart';
import 'package:myapp/models/match.dart';

// ignore: must_be_immutable
class MatchDetailPage extends StatefulWidget {
  Match match;

  MatchDetailPage({super.key, required this.match});

  @override
  State<MatchDetailPage> createState() => _MatchDetailPageState();
}

Color checkVictoryappBar(bool result) {
  if (result) {
    return Colors.green.shade400;
  } else {
    return Colors.red.shade400;
  }
}

class _MatchDetailPageState extends State<MatchDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: checkVictoryappBar(widget.match.matchResult),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 140,
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(10.0),
                  child: Image.network(widget.match.championPlayed)),
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              "${widget.match.kills.toString()} / ${widget.match.deaths.toString()} / ${widget.match.assists.toString()}",
              textScaleFactor: 1.25,
              style: TextStyle(
                  color: Colors.grey[800],
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 20,
            ),
            Center(
              child: Wrap(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(right: 5),
                    child: CircleAvatar(
                      maxRadius: 50,
                      backgroundImage: NetworkImage(widget.match.summonerSpell1),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 5),
                    child: CircleAvatar(
                      maxRadius: 50,
                      backgroundImage: NetworkImage(widget.match.summonerSpell2),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Center(
              child: Wrap(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(right: 5),
                    child: CircleAvatar(
                      maxRadius: 40,
                      backgroundImage: NetworkImage(widget.match.item1),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 5),
                    child: CircleAvatar(
                      maxRadius: 40,
                      backgroundImage: NetworkImage(widget.match.item2),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 5),
                    child: CircleAvatar(
                      maxRadius: 40,
                      backgroundImage: NetworkImage(widget.match.item3),
                    ),
                  ),
                ],
              ),
            ),
            Center(
              child: Wrap(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(right: 5),
                    child: CircleAvatar(
                      maxRadius: 40,
                      backgroundImage: NetworkImage(widget.match.item4),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 5),
                    child: CircleAvatar(
                      maxRadius: 40,
                      backgroundImage: NetworkImage(widget.match.item5),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 5),
                    child: CircleAvatar(
                      maxRadius: 40,
                      backgroundImage: NetworkImage(widget.match.item6),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
