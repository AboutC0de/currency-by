import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../domain/exchange_rate/exchange_rate.dart';
import '../infrastructure/currency_source.dart';
import '../utils/constants.dart';

class CurrencyInfoModal extends StatelessWidget {
  final ExchangeRate exchangeRate;
  final CurrencySource source;

  const CurrencyInfoModal({
    Key key,
    @required this.exchangeRate,
    @required this.source,
  }) : super(key: key);

  @override
  Widget build(BuildContext ctx) {
    return Material(
      color: darkGreyColor,
      child: Scaffold(
        backgroundColor: darkGreyColor,
        appBar: AppBar(
          titleSpacing: 0,
          elevation: 0,
          automaticallyImplyLeading: false,
          backgroundColor: darkGreyColor,
          title: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 16,
              vertical: 26,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.baseline,
                  children: [
                    Text(
                      exchangeRate.currencyCode,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 27,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Text(
                      exchangeRate.currencyFullName[0].toLowerCase() +
                          exchangeRate.currencyFullName.substring(1),
                      style: const TextStyle(
                        color: greyColor,
                        fontSize: 17,
                      ),
                      overflow: TextOverflow.ellipsis,
                    ),
                  ],
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pop(ctx);
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: backgroundGreyColor,
                    ),
                    child: const Icon(
                      Icons.close,
                      color: greyColor,
                      size: 25,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        body: const Center(child: Text('text')),
      ),
    );
  }
}

//     builder: (BuildContext context) {
//       return BlocProvider<CurrencyExchangeRateBloc>(
//         create: (BuildContext context) => getIt<CurrencyExchangeRateBloc>()
//           ..getCurrencyExchangeRates(exchangeRate.currencyCode),
//         child: Container(
//           decoration: const BoxDecoration(
//             color: darkGreyColor,
//             borderRadius: BorderRadius.only(
//               topLeft: Radius.circular(25.0),
//               topRight: Radius.circular(25.0),
//             ),
//           ),
//           child: ListView(
//             padding: const EdgeInsets.symmetric(
//               vertical: 16,
//               horizontal: 26,
//             ),
//             children: [
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: [
//                   Row(
//                     crossAxisAlignment: CrossAxisAlignment.baseline,
//                     children: [
//                       Text(
//                         exchangeRate.currencyCode,
//                         style: const TextStyle(
//                           color: Colors.white,
//                           fontSize: 27,
//                           fontWeight: FontWeight.w900,
//                         ),
//                       ),
//                       const SizedBox(
//                         width: 10,
//                       ),
//                       Text(
//                         exchangeRate.currencyFullName[0].toLowerCase() +
//                             exchangeRate.currencyFullName.substring(1),
//                         style: const TextStyle(
//                           color: greyColor,
//                           fontSize: 17,
//                         ),
//                         overflow: TextOverflow.ellipsis,
//                       ),
//                     ],
//                   ),
//                   GestureDetector(
//                     onTap: () {
//                       Navigator.pop(context);
//                     },
//                     child: Container(
//                       decoration: BoxDecoration(
//                         borderRadius: BorderRadius.circular(20),
//                         color: backgroundGreyColor,
//                       ),
//                       child: const Icon(
//                         Icons.close,
//                         color: greyColor,
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//               const DividerWithPadding(
//                 padding: 0,
//               ),
//               SizedBox(
//                 height: 30,
//                 child: Row(
//                   children: [
//                     Text(
//                       exchangeRate.nb.toStringAsFixed(4),
//                       style: const TextStyle(
//                         fontSize: 16,
//                         color: Colors.white,
//                         fontWeight: FontWeight.bold,
//                       ),
//                     ),
//                     const SizedBox(
//                       width: 5,
//                     ),
//                     Text(
//                       source.getDiffSign(exchangeRate),
//                       style: TextStyle(
//                         color: source.getNbDiffColor(exchangeRate),
//                       ),
//                     )
//                   ],
//                 ),
//               ),
//               CurrencyInfoCharts(
//                 source: source,
//               ),
//             ],
//           ),
//         ),
//       );
//     },
//   );
// }
