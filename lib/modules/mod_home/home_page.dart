import 'package:danfe/danfe.dart';
import 'package:example/modules/mod_home/home_controller.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  HomeController controller = HomeController();
  String chaveNota = '';
  String valorTotalNota = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Parse XML',
            ),
            ElevatedButton(
              onPressed: () async {
                String xml =
                    r'<CFe><infCFe Id="CFe35220361099008000141599000159110031164512094" versao="0.07" versaoDadosEnt="0.07" versaoSB="010000"><ide><cUF>35</cUF><cNF>451209</cNF><mod>59</mod><nserieSAT>900015911</nserieSAT><nCFe>003116</nCFe><dEmi>20220310</dEmi><hEmi>101033</hEmi><cDV>4</cDV><tpAmb>2</tpAmb><CNPJ>16716114000172</CNPJ><signAC>SGR-SAT SISTEMA DE GESTAO E RETAGUARDA DO SAT</signAC><assinaturaQRCODE>U5BozwslgEQDIZ1WFZtNqMmrrp0XUHZ+K1J+zmW24WkVKlkI5MiOl9lwRIqAxS9m5/OwFKkaEiIwynbbIXCM2oj41W0yTrfnt2wE2/JpMKH1LIuayvtFNYnUWDG+8G0vjtjWuQQpRXTdVtKHoPUAtBf39WEKh6kpob+j3zNqwyYjUDPm2zudiZWl3Ig0ckn8tso63FN5adZbhaoJIN68IzbbCFsyPQvjJ4DGei6ubsfVJANIePWrAhBfECUGVnXsDZQi6/PVgF32QkfA1nG3I+xrd7seVL0pTGnwUUaNeoYTYUm3tI+asA97RpoUyH7dbPgPMFPYA/+Yd2nQ/OjkoA==</assinaturaQRCODE><numeroCaixa>140</numeroCaixa></ide><emit><CNPJ>61099008000141</CNPJ><xNome>DIMAS DE MELO PIMENTA SISTEMAS DE PONTO E ACESSO </xNome><xFant>DIMEP</xFant><enderEmit><xLgr>AVENIDA MOFARREJ</xLgr><nro>840</nro><xCpl>908</xCpl><xBairro>VL. LEOPOLDINA</xBairro><xMun>SAO PAULO</xMun><CEP>05311000</CEP></enderEmit><IE>111111111111</IE><IM>37517325</IM><cRegTrib>3</cRegTrib><indRatISSQN>S</indRatISSQN></emit><dest></dest><det nItem="1"><prod><cProd>42</cProd><xProd>BERINJELA COM QUEIJO COALHO</xProd><NCM>21069090</NCM><CFOP>5102</CFOP><uCom>UN</uCom><qCom>1.0000</qCom><vUnCom>19.100</vUnCom><vProd>19.10</vProd><indRegra>A</indRegra><vItem>9.55</vItem><vRatDesc>9.55</vRatDesc></prod><imposto><ICMS><ICMS00><Orig>0</Orig><CST>00</CST><pICMS>3.20</pICMS><vICMS>0.31</vICMS></ICMS00></ICMS><PIS><PISAliq><CST>01</CST><vBC>9.55</vBC><pPIS>0.0065</pPIS><vPIS>0.06</vPIS></PISAliq></PIS><COFINS><COFINSAliq><CST>01</CST><vBC>9.55</vBC><pCOFINS>0.0300</pCOFINS><vCOFINS>0.29</vCOFINS></COFINSAliq></COFINS></imposto></det><det nItem="2"><prod><cProd>56</cProd><xProd>BATATA FRITA</xProd><NCM>21069090</NCM><CFOP>5102</CFOP><uCom>UN</uCom><qCom>1.0000</qCom><vUnCom>0.500</vUnCom><vProd>0.50</vProd><indRegra>A</indRegra><vItem>0.25</vItem><vRatDesc>0.25</vRatDesc></prod><imposto><ICMS><ICMS00><Orig>0</Orig><CST>00</CST><pICMS>3.20</pICMS><vICMS>0.01</vICMS></ICMS00></ICMS><PIS><PISAliq><CST>01</CST><vBC>0.25</vBC><pPIS>0.0065</pPIS><vPIS>0.00</vPIS></PISAliq></PIS><COFINS><COFINSAliq><CST>01</CST><vBC>0.25</vBC><pCOFINS>0.0300</pCOFINS><vCOFINS>0.01</vCOFINS></COFINSAliq></COFINS></imposto></det><det nItem="3"><prod><cProd>61</cProd><xProd>ARROZ DE BROCOLIS</xProd><NCM>21069090</NCM><CFOP>5102</CFOP><uCom>UN</uCom><qCom>1.0000</qCom><vUnCom>19.000</vUnCom><vProd>19.00</vProd><indRegra>A</indRegra><vItem>9.50</vItem><vRatDesc>9.50</vRatDesc></prod><imposto><ICMS><ICMS00><Orig>0</Orig><CST>00</CST><pICMS>3.20</pICMS><vICMS>0.30</vICMS></ICMS00></ICMS><PIS><PISAliq><CST>01</CST><vBC>9.50</vBC><pPIS>0.0065</pPIS><vPIS>0.06</vPIS></PISAliq></PIS><COFINS><COFINSAliq><CST>01</CST><vBC>9.50</vBC><pCOFINS>0.0300</pCOFINS><vCOFINS>0.28</vCOFINS></COFINSAliq></COFINS></imposto></det><det nItem="4"><prod><cProd>67</cProd><xProd>BURGUER DA CASA</xProd><NCM>21069090</NCM><CFOP>5102</CFOP><uCom>UN</uCom><qCom>1.0000</qCom><vUnCom>26.000</vUnCom><vProd>26.00</vProd><indRegra>A</indRegra><vItem>13.00</vItem><vRatDesc>13.00</vRatDesc></prod><imposto><ICMS><ICMS00><Orig>0</Orig><CST>00</CST><pICMS>3.20</pICMS><vICMS>0.42</vICMS></ICMS00></ICMS><PIS><PISAliq><CST>01</CST><vBC>13.00</vBC><pPIS>0.0065</pPIS><vPIS>0.08</vPIS></PISAliq></PIS><COFINS><COFINSAliq><CST>01</CST><vBC>13.00</vBC><pCOFINS>0.0300</pCOFINS><vCOFINS>0.39</vCOFINS></COFINSAliq></COFINS></imposto></det><total><ICMSTot><vICMS>1.04</vICMS><vProd>64.60</vProd><vDesc>0.00</vDesc><vPIS>0.20</vPIS><vCOFINS>0.97</vCOFINS><vPISST>0.00</vPISST><vCOFINSST>0.00</vCOFINSST><vOutro>0.00</vOutro></ICMSTot><vCFe>32.30</vCFe><DescAcrEntr><vDescSubtot>32.30</vDescSubtot></DescAcrEntr></total><pgto><MP><cMP>01</cMP><vMP>32.30</vMP></MP><vTroco>0.00</vTroco></pgto><infAdic><infCpl>- :Nacional: R$ 0,00 Estadual: R$ 0,00 Municipal: R$ 0,00 Importado: R$ F:26753</infCpl><obsFisco xCampo="04.04.05.04"><xTexto>Comete crime quem sonega</xTexto></obsFisco></infAdic></infCFe><Signature xmlns="http://www.w3.org/2000/09/xmldsig#"><SignedInfo><CanonicalizationMethod Algorithm="http://www.w3.org/TR/2001/REC-xml-c14n-20010315"></CanonicalizationMethod><SignatureMethod Algorithm="http://www.w3.org/2001/04/xmldsig-more#rsa-sha256"></SignatureMethod><Reference URI="#CFe35220361099008000141599000159110031164512094"><Transforms><Transform Algorithm="http://www.w3.org/2000/09/xmldsig#enveloped-signature"></Transform><Transform Algorithm="http://www.w3.org/TR/2001/REC-xml-c14n-20010315"></Transform></Transforms><DigestMethod Algorithm="http://www.w3.org/2001/04/xmlenc#sha256"></DigestMethod><DigestValue>tFhCj8C3G32NyxP0M0gOF9//4xsH0q11IRh7sBxW580=</DigestValue></Reference></SignedInfo><SignatureValue>g6zhKvMghUDw+MBgZV9gDGq09Yao4lzUtuC5874oI0jPWO29KOQn8oXkWSj+D8bB6TL2wN3+fSdYa6dK4SzVbW54j9u3f2IE6AzDjd2MOjKbj4jV5ye6rFPOCT2Ebf8Qix8oOSEP66vF16Rh5Oj+0Gd0/OigAMRRzZ3bK8r0PwZ/YAy3sRWOI1jnBs6amzCyQV3PNSYlkw+9a3Vymi0chuJ8/O9HbD1kYEHV6BpwbPVUV9tbCTZcT3BdFj5oYdJTENzyB0CKUTD6D5g7np3VvP97OS846s58Uq1YXW684UJNGTWTJ28x988EAbhrLtPjKCqekggGb+GfkIwszcyDFg==</SignatureValue><KeyInfo><X509Data><X509Certificate>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</X509Certificate></X509Data></KeyInfo></Signature></CFe>';
                Danfe? danfe = await controller.parseXml(xml);

                trocarDadosNota(danfe);
              },
              child: const Text('Texto fixo SAT'),
            ),
            Divider(),
            ElevatedButton(
              onPressed: () async {
                String xml =
                    r'<?xml version="1.0" encoding="UTF-8"?><nfeProc versao="4.00" xmlns="http://www.portalfiscal.inf.br/nfe"><NFe xmlns="http://www.portalfiscal.inf.br/nfe"><infNFe Id="NFe33210332179395000128650020001055231954889236" versao="4.00"><ide><cUF>33</cUF><cNF>95488923</cNF><natOp>5102</natOp><mod>65</mod><serie>2</serie><nNF>105523</nNF><dhEmi>2021-03-25T20:31:31-03:00</dhEmi><tpNF>1</tpNF><idDest>1</idDest><cMunFG>3304557</cMunFG><tpImp>4</tpImp><tpEmis>1</tpEmis><cDV>6</cDV><tpAmb>1</tpAmb><finNFe>1</finNFe><indFinal>1</indFinal><indPres>1</indPres><procEmi>0</procEmi><verProc>2.5.0</verProc></ide><emit><CNPJ>32179395000128</CNPJ><xNome>BPRJ RESTAURANTE LTDA</xNome><xFant>Boa Praca RJ</xFant><enderEmit><xLgr>Avenida Ataulfo de Paiva</xLgr><nro>1320</nro><xCpl>de 766 ao fim - lado par</xCpl><xBairro>Leblon</xBairro><cMun>3304557</cMun><xMun>Rio de Janeiro</xMun><UF>RJ</UF><CEP>22440035</CEP><cPais>1058</cPais><xPais>Brasil</xPais><fone>111111111</fone></enderEmit><IE>11314724</IE><CRT>3</CRT></emit><det nItem="1"><prod><cProd>4</cProd><cEAN>SEM GTIN</cEAN><xProd>Pizza Calabresa</xProd><NCM>21069090</NCM><CEST>0000000</CEST><indEscala>S</indEscala><cBenef>RJ802408</cBenef><CFOP>5102</CFOP><uCom>ML</uCom><qCom>1.0000</qCom><vUnCom>44.9000000000</vUnCom><vProd>44.90</vProd><cEANTrib>SEM GTIN</cEANTrib><uTrib>ML</uTrib><qTrib>1.0000</qTrib><vUnTrib>44.9000000000</vUnTrib><indTot>1</indTot><nItemPed>1</nItemPed></prod><imposto><vTotTrib>1.80</vTotTrib><ICMS><ICMS20><orig>0</orig><CST>20</CST><modBC>3</modBC><pRedBC>33.3300</pRedBC><vBC>14.96</vBC><pICMS>12.0000</pICMS><vICMS>1.80</vICMS><vICMSDeson>3.59</vICMSDeson><motDesICMS>9</motDesICMS></ICMS20></ICMS><PIS><PISAliq><CST>01</CST><vBC>44.90</vBC><pPIS>0.6500</pPIS><vPIS>0.29</vPIS></PISAliq></PIS><COFINS><COFINSAliq><CST>01</CST><vBC>44.90</vBC><pCOFINS>3.0000</pCOFINS><vCOFINS>1.35</vCOFINS></COFINSAliq></COFINS></imposto></det><det nItem="2"><prod><cProd>22</cProd><cEAN>SEM GTIN</cEAN><xProd>Parmegiana de Palito</xProd><NCM>21069090</NCM><CEST>0000000</CEST><indEscala>S</indEscala><cBenef>RJ802408</cBenef><CFOP>5102</CFOP><uCom>UN</uCom><qCom>1.0000</qCom><vUnCom>72.9000000000</vUnCom><vProd>72.90</vProd><cEANTrib>SEM GTIN</cEANTrib><uTrib>UN</uTrib><qTrib>1.0000</qTrib><vUnTrib>72.9000000000</vUnTrib><indTot>1</indTot><nItemPed>2</nItemPed></prod><imposto><vTotTrib>2.91</vTotTrib><ICMS><ICMS20><orig>0</orig><CST>20</CST><modBC>3</modBC><pRedBC>33.3300</pRedBC><vBC>24.29</vBC><pICMS>12.0000</pICMS><vICMS>2.91</vICMS><vICMSDeson>5.83</vICMSDeson><motDesICMS>9</motDesICMS></ICMS20></ICMS><PIS><PISAliq><CST>01</CST><vBC>72.90</vBC><pPIS>0.6500</pPIS><vPIS>0.47</vPIS></PISAliq></PIS><COFINS><COFINSAliq><CST>01</CST><vBC>72.90</vBC><pCOFINS>3.0000</pCOFINS><vCOFINS>2.19</vCOFINS></COFINSAliq></COFINS></imposto></det><det nItem="3"><prod><cProd>56</cProd><cEAN>SEM GTIN</cEAN><xProd>Original</xProd><NCM>22030000</NCM><CEST>0000000</CEST><indEscala>S</indEscala><CFOP>5405</CFOP><uCom>ML</uCom><qCom>2.0000</qCom><vUnCom>16.9000000000</vUnCom><vProd>33.80</vProd><cEANTrib>SEM GTIN</cEANTrib><uTrib>ML</uTrib><qTrib>2.0000</qTrib><vUnTrib>16.9000000000</vUnTrib><indTot>1</indTot><nItemPed>3</nItemPed></prod><imposto><vTotTrib>0.00</vTotTrib><ICMS><ICMS60><orig>0</orig><CST>60</CST><vBCSTRet>0.00</vBCSTRet><pST>0.0000</pST><vICMSSTRet>0.00</vICMSSTRet></ICMS60></ICMS><PIS><PISNT><CST>06</CST></PISNT></PIS><COFINS><COFINSNT><CST>06</CST></COFINSNT></COFINS></imposto></det><det nItem="4"><prod><cProd>68</cProd><cEAN>SEM GTIN</cEAN><xProd>Corona - 330ml</xProd><NCM>22030000</NCM><CEST>0000000</CEST><indEscala>S</indEscala><CFOP>5405</CFOP><uCom>UN</uCom><qCom>8.0000</qCom><vUnCom>15.9000000000</vUnCom><vProd>127.20</vProd><cEANTrib>SEM GTIN</cEANTrib><uTrib>UN</uTrib><qTrib>8.0000</qTrib><vUnTrib>15.9000000000</vUnTrib><indTot>1</indTot><nItemPed>4</nItemPed></prod><imposto><vTotTrib>0.00</vTotTrib><ICMS><ICMS60><orig>0</orig><CST>60</CST><vBCSTRet>0.00</vBCSTRet><pST>0.0000</pST><vICMSSTRet>0.00</vICMSSTRet></ICMS60></ICMS><PIS><PISNT><CST>06</CST></PISNT></PIS><COFINS><COFINSNT><CST>06</CST></COFINSNT></COFINS></imposto></det><det nItem="5"><prod><cProd>182</cProd><cEAN>SEM GTIN</cEAN><xProd>Guarana</xProd><NCM>22021000</NCM><CEST>0000000</CEST><indEscala>S</indEscala><CFOP>5405</CFOP><uCom>ML</uCom><qCom>1.0000</qCom><vUnCom>7.9000000000</vUnCom><vProd>7.90</vProd><cEANTrib>SEM GTIN</cEANTrib><uTrib>ML</uTrib><qTrib>1.0000</qTrib><vUnTrib>7.9000000000</vUnTrib><indTot>1</indTot><nItemPed>5</nItemPed></prod><imposto><vTotTrib>0.00</vTotTrib><ICMS><ICMS60><orig>0</orig><CST>60</CST><vBCSTRet>0.00</vBCSTRet><pST>0.0000</pST><vICMSSTRet>0.00</vICMSSTRet></ICMS60></ICMS><PIS><PISNT><CST>06</CST></PISNT></PIS><COFINS><COFINSNT><CST>06</CST></COFINSNT></COFINS></imposto></det><det nItem="6"><prod><cProd>183</cProd><cEAN>SEM GTIN</cEAN><xProd>Guarana Zero</xProd><NCM>22021000</NCM><CEST>0000000</CEST><indEscala>S</indEscala><CFOP>5405</CFOP><uCom>ML</uCom><qCom>1.0000</qCom><vUnCom>7.9000000000</vUnCom><vProd>7.90</vProd><cEANTrib>SEM GTIN</cEANTrib><uTrib>ML</uTrib><qTrib>1.0000</qTrib><vUnTrib>7.9000000000</vUnTrib><indTot>1</indTot><nItemPed>6</nItemPed></prod><imposto><vTotTrib>0.00</vTotTrib><ICMS><ICMS60><orig>0</orig><CST>60</CST><vBCSTRet>0.00</vBCSTRet><pST>0.0000</pST><vICMSSTRet>0.00</vICMSSTRet></ICMS60></ICMS><PIS><PISNT><CST>06</CST></PISNT></PIS><COFINS><COFINSNT><CST>06</CST></COFINSNT></COFINS></imposto></det><det nItem="7"><prod><cProd>188</cProd><cEAN>SEM GTIN</cEAN><xProd>Agua</xProd><NCM>22021000</NCM><CEST>0000000</CEST><indEscala>S</indEscala><CFOP>5405</CFOP><uCom>ML</uCom><qCom>1.0000</qCom><vUnCom>6.9000000000</vUnCom><vProd>6.90</vProd><cEANTrib>SEM GTIN</cEANTrib><uTrib>ML</uTrib><qTrib>1.0000</qTrib><vUnTrib>6.9000000000</vUnTrib><indTot>1</indTot><nItemPed>7</nItemPed></prod><imposto><vTotTrib>0.00</vTotTrib><ICMS><ICMS60><orig>0</orig><CST>60</CST><vBCSTRet>0.00</vBCSTRet><pST>0.0000</pST><vICMSSTRet>0.00</vICMSSTRet></ICMS60></ICMS><PIS><PISNT><CST>06</CST></PISNT></PIS><COFINS><COFINSNT><CST>06</CST></COFINSNT></COFINS></imposto></det><det nItem="8"><prod><cProd>189</cProd><cEAN>SEM GTIN</cEAN><xProd>Agua com Gas</xProd><NCM>22021000</NCM><CEST>0000000</CEST><indEscala>S</indEscala><CFOP>5405</CFOP><uCom>ML</uCom><qCom>1.0000</qCom><vUnCom>6.9000000000</vUnCom><vProd>6.90</vProd><cEANTrib>SEM GTIN</cEANTrib><uTrib>ML</uTrib><qTrib>1.0000</qTrib><vUnTrib>6.9000000000</vUnTrib><indTot>1</indTot><nItemPed>8</nItemPed></prod><imposto><vTotTrib>0.00</vTotTrib><ICMS><ICMS60><orig>0</orig><CST>60</CST><vBCSTRet>0.00</vBCSTRet><pST>0.0000</pST><vICMSSTRet>0.00</vICMSSTRet></ICMS60></ICMS><PIS><PISNT><CST>06</CST></PISNT></PIS><COFINS><COFINSNT><CST>06</CST></COFINSNT></COFINS></imposto></det><det nItem="9"><prod><cProd>214</cProd><cEAN>SEM GTIN</cEAN><xProd>Caip Nac Salinissima</xProd><NCM>22089000</NCM><CEST>0000000</CEST><indEscala>S</indEscala><CFOP>5405</CFOP><uCom>UN</uCom><qCom>7.0000</qCom><vUnCom>23.9000000000</vUnCom><vProd>167.30</vProd><cEANTrib>SEM GTIN</cEANTrib><uTrib>UN</uTrib><qTrib>7.0000</qTrib><vUnTrib>23.9000000000</vUnTrib><indTot>1</indTot><nItemPed>9</nItemPed></prod><imposto><vTotTrib>0.00</vTotTrib><ICMS><ICMS60><orig>0</orig><CST>60</CST><vBCSTRet>0.00</vBCSTRet><pST>0.0000</pST><vICMSSTRet>0.00</vICMSSTRet></ICMS60></ICMS><PIS><PISAliq><CST>01</CST><vBC>167.30</vBC><pPIS>0.6500</pPIS><vPIS>1.09</vPIS></PISAliq></PIS><COFINS><COFINSAliq><CST>01</CST><vBC>167.30</vBC><pCOFINS>3.0000</pCOFINS><vCOFINS>5.02</vCOFINS></COFINSAliq></COFINS></imposto></det><det nItem="10"><prod><cProd>240</cProd><cEAN>SEM GTIN</cEAN><xProd>Pizza Portuguesa</xProd><NCM>21069090</NCM><CEST>0000000</CEST><indEscala>S</indEscala><cBenef>RJ802408</cBenef><CFOP>5102</CFOP><uCom>ML</uCom><qCom>1.0000</qCom><vUnCom>44.9000000000</vUnCom><vProd>44.90</vProd><cEANTrib>SEM GTIN</cEANTrib><uTrib>ML</uTrib><qTrib>1.0000</qTrib><vUnTrib>44.9000000000</vUnTrib><indTot>1</indTot><nItemPed>10</nItemPed></prod><imposto><vTotTrib>1.80</vTotTrib><ICMS><ICMS20><orig>0</orig><CST>20</CST><modBC>3</modBC><pRedBC>33.3300</pRedBC><vBC>14.96</vBC><pICMS>12.0000</pICMS><vICMS>1.80</vICMS><vICMSDeson>3.59</vICMSDeson><motDesICMS>9</motDesICMS></ICMS20></ICMS><PIS><PISAliq><CST>01</CST><vBC>44.90</vBC><pPIS>0.6500</pPIS><vPIS>0.29</vPIS></PISAliq></PIS><COFINS><COFINSAliq><CST>01</CST><vBC>44.90</vBC><pCOFINS>3.0000</pCOFINS><vCOFINS>1.35</vCOFINS></COFINSAliq></COFINS></imposto></det><det nItem="11"><prod><cProd>501</cProd><cEAN>SEM GTIN</cEAN><xProd>Gorjeta 12</xProd><NCM>21069090</NCM><CEST>0000000</CEST><indEscala>S</indEscala><CFOP>5102</CFOP><uCom>UN</uCom><qCom>1.0000</qCom><vUnCom>39.1800000000</vUnCom><vProd>39.18</vProd><cEANTrib>SEM GTIN</cEANTrib><uTrib>UN</uTrib><qTrib>1.0000</qTrib><vUnTrib>39.1800000000</vUnTrib><indTot>1</indTot><nItemPed>11</nItemPed></prod><imposto><vTotTrib>0.00</vTotTrib><ICMS><ICMS40><orig>0</orig><CST>41</CST></ICMS40></ICMS><PIS><PISNT><CST>08</CST></PISNT></PIS><COFINS><COFINSNT><CST>08</CST></COFINSNT></COFINS></imposto></det><det nItem="12"><prod><cProd>501</cProd><cEAN>SEM GTIN</cEAN><xProd>Gorjeta 12</xProd><NCM>21069090</NCM><CEST>0000000</CEST><indEscala>S</indEscala><CFOP>5102</CFOP><uCom>UN</uCom><qCom>1.0000</qCom><vUnCom>54.7700000000</vUnCom><vProd>54.77</vProd><cEANTrib>SEM GTIN</cEANTrib><uTrib>UN</uTrib><qTrib>1.0000</qTrib><vUnTrib>54.7700000000</vUnTrib><indTot>1</indTot><nItemPed>12</nItemPed></prod><imposto><vTotTrib>0.00</vTotTrib><ICMS><ICMS40><orig>0</orig><CST>41</CST></ICMS40></ICMS><PIS><PISNT><CST>08</CST></PISNT></PIS><COFINS><COFINSNT><CST>08</CST></COFINSNT></COFINS></imposto></det><det nItem="13"><prod><cProd>657</cProd><cEAN>SEM GTIN</cEAN><xProd>Burrata</xProd><NCM>21069090</NCM><CEST>0000000</CEST><indEscala>S</indEscala><cBenef>RJ802408</cBenef><CFOP>5102</CFOP><uCom>UN</uCom><qCom>1.0000</qCom><vUnCom>52.9000000000</vUnCom><vProd>52.90</vProd><cEANTrib>SEM GTIN</cEANTrib><uTrib>UN</uTrib><qTrib>1.0000</qTrib><vUnTrib>52.9000000000</vUnTrib><indTot>1</indTot><nItemPed>13</nItemPed></prod><imposto><vTotTrib>2.12</vTotTrib><ICMS><ICMS20><orig>0</orig><CST>20</CST><modBC>3</modBC><pRedBC>33.3300</pRedBC><vBC>17.63</vBC><pICMS>12.0000</pICMS><vICMS>2.12</vICMS><vICMSDeson>4.23</vICMSDeson><motDesICMS>9</motDesICMS></ICMS20></ICMS><PIS><PISAliq><CST>01</CST><vBC>52.90</vBC><pPIS>0.6500</pPIS><vPIS>0.34</vPIS></PISAliq></PIS><COFINS><COFINSAliq><CST>01</CST><vBC>52.90</vBC><pCOFINS>3.0000</pCOFINS><vCOFINS>1.59</vCOFINS></COFINSAliq></COFINS></imposto></det><det nItem="14"><prod><cProd>679</cProd><cEAN>SEM GTIN</cEAN><xProd>Tardizinha - Importado</xProd><NCM>22089000</NCM><CEST>0000000</CEST><indEscala>S</indEscala><CFOP>5405</CFOP><uCom>UN</uCom><qCom>3.0000</qCom><vUnCom>34.9000000000</vUnCom><vProd>104.70</vProd><cEANTrib>SEM GTIN</cEANTrib><uTrib>UN</uTrib><qTrib>3.0000</qTrib><vUnTrib>34.9000000000</vUnTrib><indTot>1</indTot><nItemPed>14</nItemPed></prod><imposto><vTotTrib>0.00</vTotTrib><ICMS><ICMS60><orig>0</orig><CST>60</CST><vBCSTRet>0.00</vBCSTRet><pST>0.0000</pST><vICMSSTRet>0.00</vICMSSTRet></ICMS60></ICMS><PIS><PISAliq><CST>01</CST><vBC>104.70</vBC><pPIS>0.6500</pPIS><vPIS>0.68</vPIS></PISAliq></PIS><COFINS><COFINSAliq><CST>01</CST><vBC>104.70</vBC><pCOFINS>3.0000</pCOFINS><vCOFINS>3.14</vCOFINS></COFINSAliq></COFINS></imposto></det><det nItem="15"><prod><cProd>689</cProd><cEAN>SEM GTIN</cEAN><xProd>Orange Tonic - Importado</xProd><NCM>22089000</NCM><CEST>0000000</CEST><indEscala>S</indEscala><CFOP>5405</CFOP><uCom>UN</uCom><qCom>1.0000</qCom><vUnCom>34.9000000000</vUnCom><vProd>34.90</vProd><cEANTrib>SEM GTIN</cEANTrib><uTrib>UN</uTrib><qTrib>1.0000</qTrib><vUnTrib>34.9000000000</vUnTrib><indTot>1</indTot><nItemPed>15</nItemPed></prod><imposto><vTotTrib>0.00</vTotTrib><ICMS><ICMS60><orig>0</orig><CST>60</CST><vBCSTRet>0.00</vBCSTRet><pST>0.0000</pST><vICMSSTRet>0.00</vICMSSTRet></ICMS60></ICMS><PIS><PISAliq><CST>01</CST><vBC>34.90</vBC><pPIS>0.6500</pPIS><vPIS>0.23</vPIS></PISAliq></PIS><COFINS><COFINSAliq><CST>01</CST><vBC>34.90</vBC><pCOFINS>3.0000</pCOFINS><vCOFINS>1.05</vCOFINS></COFINSAliq></COFINS></imposto></det><det nItem="16"><prod><cProd>693</cProd><cEAN>SEM GTIN</cEAN><xProd>Bramble Foam</xProd><NCM>22089000</NCM><CEST>0000000</CEST><indEscala>S</indEscala><CFOP>5405</CFOP><uCom>UN</uCom><qCom>1.0000</qCom><vUnCom>34.9000000000</vUnCom><vProd>34.90</vProd><cEANTrib>SEM GTIN</cEANTrib><uTrib>UN</uTrib><qTrib>1.0000</qTrib><vUnTrib>34.9000000000</vUnTrib><indTot>1</indTot><nItemPed>16</nItemPed></prod><imposto><vTotTrib>0.00</vTotTrib><ICMS><ICMS60><orig>0</orig><CST>60</CST><vBCSTRet>0.00</vBCSTRet><pST>0.0000</pST><vICMSSTRet>0.00</vICMSSTRet></ICMS60></ICMS><PIS><PISAliq><CST>01</CST><vBC>34.90</vBC><pPIS>0.6500</pPIS><vPIS>0.23</vPIS></PISAliq></PIS><COFINS><COFINSAliq><CST>01</CST><vBC>34.90</vBC><pCOFINS>3.0000</pCOFINS><vCOFINS>1.05</vCOFINS></COFINSAliq></COFINS></imposto></det><det nItem="17"><prod><cProd>741</cProd><cEAN>SEM GTIN</cEAN><xProd>Melancita - Importado</xProd><NCM>22089000</NCM><CEST>0000000</CEST><indEscala>S</indEscala><CFOP>5405</CFOP><uCom>UN</uCom><qCom>1.0000</qCom><vUnCom>34.9000000000</vUnCom><vProd>34.90</vProd><cEANTrib>SEM GTIN</cEANTrib><uTrib>UN</uTrib><qTrib>1.0000</qTrib><vUnTrib>34.9000000000</vUnTrib><indTot>1</indTot><nItemPed>17</nItemPed></prod><imposto><vTotTrib>0.00</vTotTrib><ICMS><ICMS60><orig>0</orig><CST>60</CST><vBCSTRet>0.00</vBCSTRet><pST>0.0000</pST><vICMSSTRet>0.00</vICMSSTRet></ICMS60></ICMS><PIS><PISAliq><CST>01</CST><vBC>34.90</vBC><pPIS>0.6500</pPIS><vPIS>0.23</vPIS></PISAliq></PIS><COFINS><COFINSAliq><CST>01</CST><vBC>34.90</vBC><pCOFINS>3.0000</pCOFINS><vCOFINS>1.05</vCOFINS></COFINSAliq></COFINS></imposto></det><total><ICMSTot><vBC>71.84</vBC><vICMS>8.63</vICMS><vICMSDeson>17.24</vICMSDeson><vFCP>0.00</vFCP><vBCST>0.00</vBCST><vST>0.00</vST><vFCPST>0.00</vFCPST><vFCPSTRet>0.00</vFCPSTRet><vProd>876.85</vProd><vFrete>0.00</vFrete><vSeg>0.00</vSeg><vDesc>0.00</vDesc><vII>0.00</vII><vIPI>0.00</vIPI><vIPIDevol>0.00</vIPIDevol><vPIS>3.85</vPIS><vCOFINS>17.79</vCOFINS><vOutro>0.00</vOutro><vNF>876.85</vNF><vTotTrib>8.63</vTotTrib></ICMSTot></total><transp><modFrete>9</modFrete></transp><pag><detPag><tPag>04</tPag><vPag>876.85</vPag><card><tpIntegra>2</tpIntegra><CNPJ>01425787000104</CNPJ><tBand>02</tBand></card></detPag></pag><infAdic><infCpl>- :Nacional: R 0,00 Estadual: R 0,00 Municipal: R 0,00 Importado: R F:131188</infCpl></infAdic><infRespTec><CNPJ>15120049000155</CNPJ><xContato>OZTECHNOLOGY</xContato><email>develop@oztechnology.com.br</email><fone>1138928272</fone></infRespTec></infNFe><infNFeSupl><qrCode>http://www4.fazenda.rj.gov.br/consultaNFCe/QRCode?p=33210332179395000128650020001055231954889236|2|1|1|E7F2DE6104BCB336C651AD7A993C36A80EF1D9BD</qrCode><urlChave>www.fazenda.rj.gov.br/nfce/consulta</urlChave></infNFeSupl><Signature xmlns="http://www.w3.org/2000/09/xmldsig#"><SignedInfo><CanonicalizationMethod Algorithm="http://www.w3.org/TR/2001/REC-xml-c14n-20010315"/><SignatureMethod Algorithm="http://www.w3.org/2000/09/xmldsig#rsa-sha1"/><Reference URI="#NFe33210332179395000128650020001055231954889236"><Transforms><Transform Algorithm="http://www.w3.org/2000/09/xmldsig#enveloped-signature"/><Transform Algorithm="http://www.w3.org/TR/2001/REC-xml-c14n-20010315"/></Transforms><DigestMethod Algorithm="http://www.w3.org/2000/09/xmldsig#sha1"/><DigestValue>GSgwESQxxoR1rTNV/PnqYUtIw/E=</DigestValue></Reference></SignedInfo><SignatureValue>nTPpzcofKmQjH1CpZdpZZTv5d4u8CIkAk37TiYrfYjrAut85xRAeRjYRqPcRhnmhCdnJzrb52qrq6Fq1nfg1ChLa7kQ0igAcP8kL3SgXIWD69De1rMYcPN12gx0krnt5tHgW5M5j0AYnB6mXaxJG5QzwRv9ggeRMVRAJkmHPeyXChCheLndhVgt2wh+s9aOKMR+beyZdDQXDc9igBk2/tRQAN/YU9AblrrAc2nLIfGNZoHRHKBDxtDc1QX+/fYP6GSw7aEX7l78vwrpUqBhyrxMpYnJdTGexcNeCNuy5TD3o+AsG2cUxNLnzBJx36L+gOWJ5WLIQcqD2RNI9R7J7RA==</SignatureValue><KeyInfo><X509Data><X509Certificate>MIIHwzCCBaugAwIBAgIIbJQ9f/64tnswDQYJKoZIhvcNAQELBQAwdjELMAkGA1UEBhMCQlIxEzARBgNVBAoTCklDUC1CcmFzaWwxNjA0BgNVBAsTLVNlY3JldGFyaWEgZGEgUmVjZWl0YSBGZWRlcmFsIGRvIEJyYXNpbCAtIFJGQjEaMBgGA1UEAxMRQUMgU0FGRVdFQiBSRkIgdjUwHhcNMjEwMzI0MTIwNTE3WhcNMjIwMzI0MTIwNTE3WjCB9TELMAkGA1UEBhMCQlIxEzARBgNVBAoTCklDUC1CcmFzaWwxCzAJBgNVBAgTAlJKMRcwFQYDVQQHEw5SSU8gREUgSkFORUlSTzE2MDQGA1UECxMtU2VjcmV0YXJpYSBkYSBSZWNlaXRhIEZlZGVyYWwgZG8gQnJhc2lsIC0gUkZCMRYwFAYDVQQLEw1SRkIgZS1DTlBKIEExMRcwFQYDVQQLEw4xNjc0OTI5OTAwMDExMTETMBEGA1UECxMKcHJlc2VuY2lhbDEtMCsGA1UEAxMkQlBSSiBSRVNUQVVSQU5URSBMVERBOjMyMTc5Mzk1MDAwMTI4MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEA6v9urNV0orPvAju4fK4oKk6llhBLSTQ+2SYECVA61sSp+LC7WR4ECxv/q7Jmb4fYYXM6/D1fRfgW3dLyoyZHFBTTEuPmvBLaZ33UGJ0LcHxX1G4w1a5RNcM07SJO9mSK8htnxfq+feNEJADwXfKfoI+Xl/2/Awyk8k98e36wwlzXEHIwfUMgbMvk10P6xp7wo7WJhyTtEkjteYtQsEJrRmvUmqhj3g2mn2u4jas1OCWIytGOfpDHeFMAPzCRTJKkaLJPdCyFMXQ9Q1mr5EAGprnLGA14MggqVy6aLTPa2r2K2sjeBB67TIJZKsqAIHzeAbHsa03qbY3oHfjZRBJo9QIDAQABo4IC0zCCAs8wHwYDVR0jBBgwFoAUKV5L1UZMu/4Wp2PBHcQm8t3Y8wUwDgYDVR0PAQH/BAQDAgXgMG0GA1UdIARmMGQwYgYGYEwBAgEzMFgwVgYIKwYBBQUHAgEWSmh0dHA6Ly9yZXBvc2l0b3Jpby5hY3NhZmV3ZWIuY29tLmJyL2FjLXNhZmV3ZWJyZmIvYWMtc2FmZXdlYi1yZmItcGMtYTEucGRmMIGuBgNVHR8EgaYwgaMwT6BNoEuGSWh0dHA6Ly9yZXBvc2l0b3Jpby5hY3NhZmV3ZWIuY29tLmJyL2FjLXNhZmV3ZWJyZmIvbGNyLWFjLXNhZmV3ZWJyZmJ2NS5jcmwwUKBOoEyGSmh0dHA6Ly9yZXBvc2l0b3JpbzIuYWNzYWZld2ViLmNvbS5ici9hYy1zYWZld2VicmZiL2xjci1hYy1zYWZld2VicmZidjUuY3JsMIGLBggrBgEFBQcBAQR/MH0wUQYIKwYBBQUHMAKGRWh0dHA6Ly9yZXBvc2l0b3Jpby5hY3NhZmV3ZWIuY29tLmJyL2FjLXNhZmV3ZWJyZmIvYWMtc2FmZXdlYnJmYnY1LnA3YjAoBggrBgEFBQcwAYYcaHR0cDovL29jc3AuYWNzYWZld2ViLmNvbS5icjCBwwYDVR0RBIG7MIG4gSFBTEVTU0FEUk8uQVZJTEFAQUxJRkVHUk9VUC5DT00uQlKgJQYFYEwBAwKgHBMaQUxFU1NBTkRSTyBWSVRBTEkgREUgQVZJTEGgGQYFYEwBAwOgEBMOMzIxNzkzOTUwMDAxMjigOAYFYEwBAwSgLxMtMjQxMjE5ODAyMTgyNTk1Mjg3NjAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwMDAwoBcGBWBMAQMHoA4TDDAwMDAwMDAwMDAwMDAdBgNVHSUEFjAUBggrBgEFBQcDAgYIKwYBBQUHAwQwCQYDVR0TBAIwADANBgkqhkiG9w0BAQsFAAOCAgEAj4FiUJHHsMlbfRfAOyuuMmaEanWbvx+LmCAU5bjjsDVXXFYuX6mfvmtoFUPw4gSXwyQJ/st4+v1aRgZBf+43lZwwIcoB6Mbph/pv1KK/rmXV9TtjIjBsohuahFDvvSAAYrCWvYpqi5g0iBRVfIz+0LRc9L5LHkwkEN3HnXN8FKM0dTSdRMCVmEc2RujvuPAnc2cXPQ5bA7gaZYRSGx/cybRxOZ58K2A9Tg23wO68lXT1z7D1mlay3EfnMo+xzYdxRrIJZeE9BMm5SSOzOQRgz0W1jJq7dNxpgaDPt4uWk37TyucA7eyIvzurNPNUzeGDk+nJWmLVBWwwDdN7/i7ZNw5I0ts+b4uV02g9VQEs8fjq4EHFs8UcHj8jAX0cRRYTy+vVmMZIkgxxqee9Srlkstz484xbBvlrRSxIMLfWrkH+c5toj26hVGzAjzwkz3vs7a0y8C8I1oayh3z24h/AK2g4hGKqAWLXxSO7AfWC/eiiLAYOpauzxHiXGx/O4QJJfZ+Z204RZBhT9J84yFAqAy5d89kV60TshaoXVsxF0N+Rq1VHHKnsjldtWV2RxHpAbAMIwkCfuLNdbOToYKTyryv9QBwQ4jH6xOxIATbZeGmCGLwaf9fHr5SQ1PjWYuiO6JzYe7U7nx+OtLJIIkEbj5AF2dN+JpgsPCjvMLSX4Q8=</X509Certificate></X509Data></KeyInfo></Signature></NFe><protNFe versao="4.00"><infProt><tpAmb>1</tpAmb><verAplic>SVRSnfce202103250812</verAplic><chNFe>33210332179395000128650020001055231954889236</chNFe><dhRecbto>2021-03-25T20:31:33-03:00</dhRecbto><nProt>333210562184381</nProt><digVal>GSgwESQxxoR1rTNV/PnqYUtIw/E=</digVal><cStat>100</cStat><xMotivo>Autorizado o uso da NF-e</xMotivo></infProt></protNFe></nfeProc>';
                Danfe? danfe = await controller.parseXml(xml);
                trocarDadosNota(danfe);
              },
              child: const Text('Texto fixo NFCE'),
            ),
            Divider(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text(
                  'Chave da nota: ',
                ),
                Text(
                  chaveNota,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text(
                  'Valor total: ',
                ),
                Text(
                  valorTotalNota,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

  void trocarDadosNota(Danfe? nota) {
    if (nota == null) {
      setState(() {
        chaveNota = 'ERRO';
      });
    } else {
      setState(() {
        chaveNota = nota.dados?.chaveNota ?? '';
      });

      setState(() {
        valorTotalNota = nota.dados?.total?.valorTotal ?? '';
      });
    }
  }
}