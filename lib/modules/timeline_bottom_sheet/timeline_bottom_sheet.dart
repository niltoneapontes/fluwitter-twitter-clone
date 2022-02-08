import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class TimelineBottomSheet extends StatefulWidget {
  const TimelineBottomSheet({Key? key}) : super(key: key);

  @override
  State<TimelineBottomSheet> createState() => _TimelineBottomSheetState();
}

class _TimelineBottomSheetState extends State<TimelineBottomSheet> {
  bool _recentFirst = true;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            height: 5,
            width: 32,
            decoration: BoxDecoration(
                color: Colors.grey[800],
                borderRadius: BorderRadius.circular(10)),
          ),
          const SizedBox(
            height: 20,
          ),
          Visibility(
            visible: _recentFirst,
            replacement: SvgPicture.asset(
              'assets/icons/recent_first_settings.svg',
              width: MediaQuery.of(context).size.width * 0.1,
            ),
            child: SvgPicture.asset(
              'assets/icons/timeline_settings.svg',
              width: MediaQuery.of(context).size.width * 0.1,
            ),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 20),
            child: Text(
              'Sua timeline mostra os Tweets mais recentes',
              style: TextStyle(
                fontSize: 20,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          ElevatedButton(
              onPressed: () {
                Navigator.of(context).pop();
                setState(() {
                  _recentFirst = !_recentFirst;
                });
              },
              style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.all(12),
                  primary: const Color(0xFF15202B),
                  elevation: 0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Icon(Icons.swap_horiz_outlined),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 12),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                              _recentFirst
                                  ? 'Alternar para Página Inicial'
                                  : 'Mudar para últimos Tweets',
                              style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w300)),
                          Text(
                            _recentFirst
                                ? 'Os Tweets da Página Inicial são recomendados para você'
                                : 'Os Tweets mais recentes são exibidos à medida que são publicados',
                            softWrap: true,
                            style: const TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.w300),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              )),
          ElevatedButton(
              onPressed: () {
                log('Preference Settings');
              },
              style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.all(12),
                  primary: const Color(0xFF15202B),
                  elevation: 0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Icon(Icons.settings_outlined),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(left: 12),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text('Ver preferências de conteúdo',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w300)),
                        ],
                      ),
                    ),
                  )
                ],
              ))
        ],
      ),
    );
  }
}
