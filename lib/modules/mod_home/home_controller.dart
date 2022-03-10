import 'package:danfe/danfe.dart';
import 'package:esc_pos_printer/esc_pos_printer.dart';
import 'package:esc_pos_utils/esc_pos_utils.dart';

class HomeController {
  Future<Danfe?> parseXml(String xml) async {
    Danfe? danfe = DanfeParser.parseDanfe(xml);
    const PaperSize paper = PaperSize.mm80;
    DanfePrinter danfePrinter = DanfePrinter(paper);
    final profile = await CapabilityProfile.load();
    List<int> _dados = await danfePrinter.bufferDanfe(danfe);
    NetworkPrinter printer = NetworkPrinter(paper, profile);
    await printer.connect('192.168.5.111', port: 9100);
    printer.rawBytes(_dados);
    printer.disconnect();
    return danfe;
  }
}
