import 'package:doctorapp/config/app_image.dart';
import 'package:doctorapp/model/home_entdecken_model.dart';
import '../model/anatomie_model.dart';
import '../model/laparoskopische_cholezystektomie_model.dart';
import '../model/oesophagus_magen_model.dart';
import '../model/proktologie_model.dart';

class CommonList{
  static List<EntdeckenModel> entdeckenList = [
    EntdeckenModel(image: AppImage.anatomiebilder,title: "Anatomie bilder"),
    EntdeckenModel(image: AppImage.VerfahrenBeschreibung,title: "Verfahren Beschreibung"),
    EntdeckenModel(image: AppImage.Zusatzoptionen,title: "Zusatzoptionen"),
  ];

  static List<Anatomie> anatomieList = [
    Anatomie(image: AppImage.anatomie),
    Anatomie(image: AppImage.anatomie2),
    Anatomie(image: AppImage.anatomie3),
    Anatomie(image: AppImage.anatomie4),
    Anatomie(image: AppImage.anatomie5),
    Anatomie(image: AppImage.anatomie6),
    Anatomie(image: AppImage.anatomie7),
    Anatomie(image: AppImage.anatomie8),
  ];

  static List<LaparoskopischeCholezystektomieModel> laparoskopischeCholezystektomieModel =[
    LaparoskopischeCholezystektomieModel(image: AppImage.clipOnDerACysticaDuctusCysticus),
    LaparoskopischeCholezystektomieModel(image: AppImage.durchtrennungDesDuctusCysticus),
    LaparoskopischeCholezystektomieModel(image: AppImage.durchtrennterDuctusUndArterie),
    LaparoskopischeCholezystektomieModel(image: AppImage.gallen),
  ];

  static List<ProktologieModel> proktologieModelModelList = [
    ProktologieModel(image: AppImage.ethiconCircularStapler),
    ProktologieModel(image: AppImage.hica)
  ];

  static List<OesophagusMagenModel> oesophagusMagenModel = [
    OesophagusMagenModel(image: AppImage.zwerchFellSchenkelRechtSundLinks),
    OesophagusMagenModel(image: AppImage.knsr),
  ];

  static var allData = [
    {
      'name':'Gefasseingriffe',
      'type':'vb',
      'main_name':'0'
    },{
      'name':'1.1  Arterielle BGA',
      'type':'vb_in',
      'main_name':'Gefasseingriffe',
      'index':0
    },{
      'name':'1.2 Port-a-Cath Implantation V. cephalica',
      'type':'vb_in',
      'main_name':'Gefasseingriffe',
      'index':1
    },{
      'name':'Appendix/ Gallenblase',
      'type':'vb',
      'main_name':'1'
    },{
      'name':'2.1 Laparoskopische Appendektomie',
      'type':'vb_in',
      'main_name':'Appendix/ Gallenblase',
      'index':0
    },{
      'name':'2.2 Laparoskopische Cholezystektomie',
      'type':'vb_in',
      'main_name':'Appendix/ Gallenblase',
      'index':1
    },{
      'name':'2.3  Lap. Cholezystektomie mit Cholangiographie',
      'type':'vb_in',
      'main_name':'Appendix/ Gallenblase',
      'index':2
    },
    {
      'name':'Abdominalhernien',
      'type':'vb',
      'main_name':'2'
    }, {
      'name':'3.1 Laparoskopische Hernienplastik TEPP',
      'type':'vb_in',
      'main_name':'Abdominalhernien',
      'index':0
    },{
      'name':'3.2 Laparoskopische Hernienplastik TAPP',
      'type':'vb_in',
      'main_name':'Abdominalhernien',
      'index':1
    },{
      'name':'3.3 Umbilicalhernienplastik',
      'type':'vb_in',
      'main_name':'Abdominalhernien',
      'index':2
    },{
      'name':'3.4 Inguinalhernienplastik nach Lichtenstein',
      'type':'vb_in',
      'main_name':'Abdominalhernien',
      'index':3
    },{
      'name':'Proktologie',
      'type':'vb',
      'main_name':'3'
    },{
      'name':'4.1 Mukopexie nach Longo',
      'type':'vb_in',
      'main_name':'Proktologie',
      'index':0
    },{
      'name':'4.2 Mariskenresektion',
      'type':'vb_in',
      'main_name':'Proktologie',
      'index':1
    },{
      'name':'4.3 Exzision Sinus Pilonidalis',
      'type':'vb_in',
      'main_name':'Proktologie',
      'index':2
    },
    {
      'name':'Dunndarm / Kolon / Rektum',
      'type':'vb',
      'main_name':'4'
    },
    {
      'name':'5.1 Dünndarmsegmentresektion',
      'type':'vb_in',
      'main_name':'Dunndarm / Kolon / Rektum',
      'index':0
    },{
      'name':'5.2 Laparoskopische Hemikolektomie rechts',
      'type':'vb_in',
      'main_name':'Dunndarm / Kolon / Rektum',
      'index':1
    },{
      'name':'5.3 Laparoskopische Sigmaresektion',
      'type':'vb_in',
      'main_name':'Dunndarm / Kolon / Rektum',
      'index':2
    },{
      'name':'5.4 Lap. Rektosigmoidresektion',
      'type':'vb_in',
      'main_name':'Dunndarm / Kolon / Rektum',
      'index':3
    },{
      'name':'Oesophagus / Magen',
      'type':'vb',
      'main_name':'5'
    },{
      'name':'6.1 Lap. Fundoplicatio',
      'type':'vb_in',
      'main_name':'Oesophagus / Magen',
      'index':0
    },{
      'name':'6.2 Lap. Magenbypass (Roux-Y)',
      'type':'vb_in',
      'main_name':'Oesophagus / Magen',
      'index':1
    },{
      'name':'6.3 Lap. Sleeve Gastrektomie',
      'type':'vb_in',
      'main_name':'Oesophagus / Magen',
      'index':2
    },{
      'name':'Endokrine Chirurgie',
      'type':'vb',
      'main_name':'6'
    },
    {
      'name':'7.1 Totale Thyreoidektomie',
      'type':'vb_in',
      'main_name':'Endokrine Chirurgie',
      'index':0
    },{
      'name':'7.2 Hemithyreoidektomie links / rechts',
      'type':'vb_in',
      'main_name':'Endokrine Chirurgie',
      'index':1
    },{
      'name':'7.3 Splenektomie',
      'type':'vb_in',
      'main_name':'Endokrine Chirurgie',
      'index':2
    },{
      'name':'Thoraxchirurgie',
      'type':'vb',
      'main_name':'7'
    },{
      'name':'8.1 Thoraxdrainage-Einlage',
      'type':'vb_in',
      'main_name':'Thoraxchirurgie',
      'index':0
    },{
      'name':'8.2 Tracheotomie',
      'type':'vb_in',
      'main_name':'Thoraxchirurgie',
      'index':1
    },{
      'name':'8.3 Thorakoskopie Wedge Resektion',
      'type':'vb_in',
      'main_name':'Thoraxchirurgie',
      'index':2
    },{
      'name':'Notfallchirurgie / Traumatologie',
      'type':'vb',
      'main_name':'8'
    },{
      'name':'9.1 Kompartment / Logenspaltung',
      'type':'vb_in',
      'main_name':'Notfallchirurgie / Traumatologie',
      'index':0
    },{
      'name':'9.2 Zehenamputation',
      'type':'vb_in',
      'main_name':'Notfallchirurgie / Traumatologie',
      'index':1
    },{
      'name':'9.3 Cistofix Anlage',
      'type':'vb_in',
      'main_name':'Notfallchirurgie / Traumatologie',
      'index':2
    },{
      'name':'9.4 Achillessehnennaht',
      'type':'vb_in',
      'main_name':'Notfallchirurgie / Traumatologie',
      'index':3
    },{
      'name':'9.5 Bursektomie Ellenbogen',
      'type':'vb_in',
      'main_name':'Notfallchirurgie / Traumatologie',
      'index':4
    },{
      'name':'9.6 Fixateur externe',
      'type':'vb_in',
      'main_name':'Notfallchirurgie / Traumatologie',
      'index':5
    },{
      'name':'9.7 Proximaler Femurnagel',
      'type':'vb_in',
      'main_name':'Notfallchirurgie / Traumatologie',
      'index':6
    },
    {
      'name':'Kontaktiere uns',
      'type':'zo',
      'main_name':0
    },
    {
      'name':'Uber uns',
      'type':'zo',
      'main_name':1
    },

    {
      'name':'Ubersicht Anatomie',
      'type':'ab',
      'main_name': 0
    },

    {
      'name':'Arterielle BGA',
      'type':'ab',
      'main_name':1
    },

    {
      'name':'Port-a-Cath Implantation V. cephalica',
      'type':'ab',
      'main_name':2
    },
    {
      'name':'Laparoskopische Appendektomie',
      'type':'ab',
      'main_name':3
    },
    {
      'name':'Laparoskopische Cholezystektomie',
      'type':'ab',
      'main_name':4
    },
    {
      'name':'Proktologie',
      'type':'ab',
      'main_name':5
    },
    {
      'name':'Oesophagus / Magen',
      'type':'ab',
      'main_name':6
    },
    {
      'name':'Thoraxdrainage-Einlage',
      'type':'ab',
      'main_name':7
    },
    {
      'name':'Bursektomie Ellenbogen',
      'type':'ab',
      'main_name':8
    }

  ];

  static var procedureData =  {
    "Gefasseingriffe": [
      {
        "name": "1.1  Arterielle BGA",
        "list": [
          "Schritt 1:\nWählen Sie den Zugang. In der Regel wird die am Handgelenk gelegene Arteria radialis verwendet.",
          "Schritt 2:\nAm liegenden Patienten unter sterilen Bedingungen Palpation der Arterie und Punktion im 45°-Winkel mit einer dünnen Kanüle.",
          "Schritt 3:\nDie Anlage eines A.-radialis-Katheters ist verboten ohne vorherige Durchführung eines Allen-Tests.",
          "Der Allen-Test orientiert über die Durchblutung des Hohlhandbogens bei wechselnder Kompression der A. ulnaris und A. radialis. Kommt es durch vollständige Kompression und Verschluss der A. radialis zu einer Minderdurchblutung der Finger und zu einem Verlust der Pulsationen der A. ulnaris, darf eine Punktion oder die Einlage eines A.-radialis-Katheter nicht erfolgen.",
          "Schritt 4:\nSobald die Nadel in die Arterie eingeführt ist, füllt sich die Spritze automatisch.",
          "Schritt 5:\nEntfernen der Nadel und Druckverband für 3-5min circa anlegen."
        ],
        "table": true,
        "tabledata": [
          {
            "r1": "Infektionsrisiko",
            "r2": "Allen-Test zur Prüfung der arteriellen Versorgung.",
            "r3": "Bei arteriosklerotisch veränderten Gefäßen Gefahr der Gangrän, die zur Amputation führen kann"
          }
        ],
        "tablenext" : false
      },
      {
        "name": "1.2 Port-a-Cath Implantation V. cephalica",
        "list": [

          "Schritt 1:\nRöntgenschürze nicht vergessen. Korrekte Seite? Lokalanästhesie, Palpation des Processus coracoideus. Hautinzision quer vom Sulcus deltoideopectoralis (Anatomie s.a. Mohrenheim Grube) rechts nach medial.",
          "Schritt 2:\nFreilegen der Vena cephalica, Umfahren mittels Overholt und zweifaches Anschlingen der Vene mit Seide 2-0 nach proximal und distal.",
          "Schritt 3:\nVenotomie (wahlweise mittels 11er Klinge oder Schere) und Einführen des gefüllten Polyurethan-Katheters. (bei feinem Gefäss empfiehlt sich oft die dreiecksförmige Einführhilfe).",
          "Schritt 4:\nLagekontrolle mittels Bildverstärker, die Spitze projiziert sich 1 cm kaudal der Carina.",
          "Schritt 5:\nFixation des Katheters an der Vene durch den vorgelegten Seide-Faden (cave: Okklusion) und Ligatur nach distal. Funktionskontrolle: Problemlose Aspiration und Injektion möglich?",
          "Schritt 6:\nNun Vorbereiten der subkutanen Reservoirtasche medial auf der Pektoralisfaszie. Kürzen des Katheters und Konnektion mit dem Port-Reservoir.",
          "Schritt 7:\nFixation des Port-Reservoirs auf die Pektoralisfaszie mit 3 EKN 2-0 Seide-Fäden (oder Ethibond 2-0).",
          "Schritt 8:\nNochmalige Funktionskontrolle: Problemlose Aspiration und Injektion möglich? Kontrolle der Hämostase, schichtweiser Wundverschluss mit Subkutannaht mit Vicryl 3-0 und fortlaufender 4-0 Monocryl-Intrakutannaht. Folienverband. Je nach Wunsch Onkologie Anstechen des Ports und Anschliessen einer Infusion.",
          "Schritt 9:\nDokumentation mittels Bildverstärker."
        ],
        "table": true,
        "tabledata": [
          {
            "r1": "Processus coracoideusVena cephalica, Carina",
            "r2": "Blutung, Pneumothorax, Katheterdislokation Kathterokklusion",
            "r3": "Aufsuchen der V. cephalica in der Mohrenheim Grube"
          }
        ],
        "tablenext" : true,
        "tablenextdata" : [
          "Bei Nichtauffinden der V. cephalica empfiehlt sich der Einsatz des Gefässultraschalls (7,5 MhZ Linearschallkopf). Sollte die Vene auch mit dem Ultraschall nicht gefunden werden, oder sich als zu kleinkalibrig erweisen. Dann sollte die US-gesteuerte Punktion der V. jugularis erfolgen oder die Punktion der V. subclavia (Landmark-Punktion in Trendelenburg-Position). Wie bei allen venösen Punktione, muss eine arterielle Punktion vermieden werden. Daher Beachten von hellrotem Blut pulsatilem Backflow und Verlauf des Katheters in Projektion auf V. cava und den rechten Vorhof. Bei Unsicherheit Kontrastmittelgabe. Keine Schleuse einführen. Bei Problemen Gefässchirurgen kontaktieren für Angio und Drahtpassage",
          "Vorlage OP-Bericht:\nIndikation:\nIndikation zur Port Einlage durch die tKollegen der Onkologie zur Systemtherapie.",
          "Diagnosen:\nWesentliche Diagnose für die Port Einlage",
          "Operation:\nPort-A-Cath Implantation über V. cephalica/jugularis/subclavia rechts (Implantatnahme. LOT Nr. und Grösse)",
          "Technisches Vorgehen:\nEingriff in Vollnarkose/LA-MAC. Rückenlage. Perioperative Antibiotikaprophylaxe mit _______ i.v. Desinfektion mit Betaseptic und steriles Abdecken. Hautinzision quer vom Sulcus deltoideopectoralis rechts nach medial. Freilegen der Vena cephalica, zweifaches Anschlingen der Vene mit Seide 2-0. Venotomie und Einführen des gefüllten Polyurethane Katheters. Lagekontrolle mittels Bildverstärker, die Spitze projiziert sich 1 cm caudal der Carina. Fixation des Katheters an der Vene durch den vorgelegten Seide-Faden und Ligieren der Vene über den distalen Seide-Faden. Problemlose Aspiration und Injektion. Nun Vorbereiten der subcutanen Reservoirtasche medial auf der Pectoralisfaszie, Kürzen des Katheters und Konnektion mit dem Port-Reservoir, einwandfreie Funktionskontrolle des Systems inkl. Blutaspiration und Injektion. Fixation des Port-Reservoirs auf die Pectoralisfaszie mit 3 EKN 2-0 Seide-Fäden. Kontrolle der Hämostase, schichtweiser Wundverschluss mit Subkutannaht mit Vicryl 3-0 und fortlaufender 4-0 Monocryl Intrakutannaht. Abschlusslagekontrolle mittels Bildverstärker. Anstechen des Port-Systems für die nachfolgende Chemotherapie und Anhängen einer Ringerlactat Infusion. Wundverband mit Klarsichtfolie.",
          "Postoperatives Procedere:\nKeine Fadenentfernung bei resorbierbarem Nahtmaterial. Port-System ab sofort verwendbar. Keine Elevation des rechten Armes über 90° für 2 Wochen."
        ]
      }
    ],
    "Appendix/ Gallenblase" : [
      {
        "name": "2.1 Laparoskopische Appendektomie",
        "list": [
          "Schritt 1:\nKamerazugang periumbilikal mit offenem Eingehen in das Abdomen, 12mm Trokar über einen Wechselstab. Anlegen des Pneumoperitoneums, 12mm Hg Gasdruck. 360°-Übersichtslaparoskopie.",
          "Schritt 2:\nIn der Regel 12mm im linken Unterbauch, sowie 5mm Arbeitszugang suprapubisch.",
          "Schritt 3:\nDurchtrennen des Mesenteriolums mit dem Bipolarund der Schere. Darstellen der Appendixbasis.",
          "Schritt 4:\nAbtragen der Appendix an der Basis mit dem Golden Stapler 45mm.",
          "Schritt 5:\nBergen der Appendix über einen Bergebeutel durch den Zugang im linken Unterbauch.",
          "Schritt 6:\nLavage lokal, in der Excavatio rectovesicalis bzwrectouterina sowie perihepatisch (cave Abszesse).",
          "Schritt 7:\nFaszienverschluss para-/infraumbilikal und im linken Unterbauch mit 0er Biosyn.",
          "Schritt 8:\nHautverschluss mit Dermalon 4/0. Anlage eines sterilen Verbandes."
        ],
        "table": true,
        "tabledata": [
          {
            "r1": "Ileozökalen Übergang",
            "r2": "",
            "r3": "Kolonwands-chädigung durch Hitzeeinwirkung"
          },
          {
            "r1": "Zökum & Dünndarm",
            "r2": "",
            "r3": ""
          }
        ],
        "tablenext" : false
      },
      {
        "name": "2.2 Laparoskopische Cholezystektomie",
        "list": [
          "Schritt 1:\nPatientin in Rückenlage mit abgewinkelten Beinen (French position) und Allgemeinanästhesie. Kamerazugang periumbilikal mit offenem Eingehen in das Abdomen. 12mm Trokar über einen Wechselstab. Anlegen des Pneumoperitoneums. 12mm Hg Gasdruck. 360°-Übersichtslaparoskopie.",
          "Schritt 2:\nWeiterer Arbeitszugang 12mm im linken Mittelbauch. 5 mm Arbeitszugang supxiphoidal und im rechten Mittelbauch.",
          "Schritt 3:\nFassen des Gallenblasenfundus und kranialluxation in Richtung der rechten Schulter des Patienten.",
          "Schritt 4:\nPräparation am Infundibulum. Inzision der Serosa und Darstellen des Calot’schen Dreiecks. Schrittweise Freipräparation des Ductus cysticus und der Arteria cystica. Herstellen des Critical view of safety (CVS) nach Strasberg.",
          "Schritt 5:\nDurchtrennung des Ductus cysticus zwischen 2 zentralen und 1 peripher angelegten Grena Clips (violett) und der Arteria cystica zwischen 1 zentral und 1 peripher-angelegten Grena Clip (violett).",
          "Schritt 6:\nHerauslösen der Gallenblase aus dem Leberbett mit dem Elektrohäckchen. Die Gallenblase wird in toto mittels Endobag über den infraumbilikalen 12 mm Zugang geborgen.",
          "Schritt 7:\nHämostasekontrolle und Spülung",
          "Schritt 8:\nFaszienverschluss para-/infraumbilikal mit 0er Biosyn. Hautverschluss mit Rückstichnähten nach Allgöwer mit Dermalon 4-0. Anlage von sterilen Verbänden."
        ],
        "table": true,
        "tabledata": [
          {
            "r1": "Leber, A. cystica, Ductus cysticus, DHC, Duodenum.",
            "r2": "Calot'sches Dreieck",
            "r3": "Verwechslung der A. cystica mit A. hepatica dextra"
          },
          {
            "r1": "",
            "r2": "Galleleck, Gallengangsverletz-ung, Verletzung vonLeber,Duodenum oder Kolon",
            "r3": "Kleine Gallengänge können direkt in die Gallenblase münden und müssen ggf. umstochen werden"
          },
          {
            "r1": "",
            "r2": "Gefässverletzung (V. portae, A. hepatica)",
            "r3": "Bei unklaren postoperativen Problemen ERCP"
          }
        ],
        "tablenext" : false
      },
      {
        "name": "2.3  Lap. Cholezystektomie mit Cholangiographie",
        "list": [
          "Schritt 1:\nDurchführen der Cholezystektomie bis Schritt 4.Freipräparation der Arterie cystica undDurchtrennung derselben zwischen 2 Grena Clips.",
          "Schritt 2:\nSchrittweise Freipräparation des Ductus cysticus. Grena Clip Gallenblasennahe und Inzision des Ductus cysticus bis zur Gallesekretion.",
          "Schritt 3:\nEinbringen des Cholangiographie-Katheters mit der cholangiographie Zange und Vorschieben desselben in den Ductus choledochus.",
          "Schritt 4:\nSpülung des Cholangiographie-Katheters mit Ringerlösung zum Ausschluss einer Leckage.",
          "Schritt 5:\nOkklusion von Katherter und Ductus cysticus mit der Cholangiographie Zange.",
          "Schritt 6:\nInjektion eines leberdurchlässigen Kontrastmittels in den Katheter und Röntgendurchleuchtung.",
          "Schritt 7:\nDas Cholangiogramm kann unvermutete Gallengangssteine aufdecken. Es zeigt auch die Anatomie der Gallengänge.",
          "Schritt 8:\nIm Falle von Gallengangsteinen werden diese mit dem Fogarty-Manöver entfernt.",
          "Schritt 9:\nEntfernung des Katheters und Anlage von 2 weiteren Grena Clips zentral.",
          "Schritt 10:\nDurchtrennung des Ductus cysticus.",
          "Schritt 11:\nHerauslösen der Gallenblase aus dem Leberbett mit dem Elektrohäkchen.",
          "Schritt 12:\nFortführung der Schritte wie bei der Lap. Cholezystektomie"

        ],
        "table": false,
        "tablenext" : false
      }
    ],
    "Abdominalhernien" :  [
      {
        "name": "3.1 Laparoskopische Hernienplastik TEPP",
        "list": [
          "Schritt 1:\nInfraumbilikale Inzision, Verdrängen des Subkutangewebes, quere Inzision der vorderen Rektusscheide, Verdrägen der Muskulatur nach lateral, Darstellen der hinteren Rektusscheide.",
          "Schritt 2:\nEingehen mit dem Trokar über einen Wechselstab über die hintere Rektusscheide bis in den präperitonealen Raum und Insufflation von CO2. Eröffnen des präperitonealen Raumes. Stumpfe Präparation bis zur Symphyse.",
          "Schritt 3:\nTrendelenburg-Lagerung. Einbringen eines 5 mm Trokars zwischen Symphyse und Umbilicus. Darstellen der Symphyse.",
          "Schritt 4:\nDarstellung der epigastrischen Gefässe, und des inneren Leistenringes.",
          "Schritt 5:\nStumpfes Ablösen des Peritoneums nach dorsal und kranial bis mindestens 3-4 cm cranial der Spina iliaca anterior superior. Einbringen 5mm Trokar.",
          "Schritt 6:\nVervollständigung der Präparation des Peritoneums nach dorsal, Darstellung des Vas deferens und der Testikulargefässe. Beurteilung aller Bruchlücken inguinal, femoral, obturatorisch und Klassifizierung möglicher Hernien",
          "Schritt 7:\nSchrittweise vollständige Reposition der Hernie. Bei direkter Inguinalhernie, Fixation der Fascia transversalis an der Symphyse mit Protack.",
          "Schritt 8:\nBefestigung des Bard-Netzes mit Protack/Glubran. Das Netz wird am Lig. cooperi und an den ventralen Bauchdecken fixiert. Aktuelle Bruchpforte und potentielle andere Schwachstellen müssen gut abgedeckt werden.",
          "Schritt 9:\nAblassen des Gases unter Sicht.",
          "Schritt 10:\nFaszienverschluss infraumbilikal mit 0er Biosyn. Hautverschluss mit Dermalon 4-0."
        ],
        "table": true,
        "tabledata": [
          {
            "r1": "Samenstrangverle-tzung",
            "r2": "",
            "r3": "Kolonwands-chädigung durch Hitzeeinwirkung"
          },
          {
            "r1": "'Corona mortis' am aufsteigenden Astd. OS pubis in ca 25%.",
            "r2": "Pneumoperitoneum.Drainage mittels Veress Nadel",
            "r3": "Grössere Perforationen im Peritoneum werden verschlossen:5mm Endoclip."
          }
        ],
        "tablenext" : false
      },
      {
        "name": "3.2 Laparoskopische Hernienplastik TAPP",
        "list": [
          "Schritt 1:\nZugang Lokalinfiltration, Standardzugang mit Verres / offen, Setzen der Trokare unter Sicht, Pneumoperitoneum 12 mm Hg, Übersichtsbild.",
          "Schritt 2:\nPräparation Peritoneale Inzision 3-4 cm oberhalb aller Herniendefekte von Spina iliaca anterior superior bis Plica umbilicalis medialis. Inzision parallel zur Plica umbil.med. nach kranial, falls mehr Platz notwendig. Durchtrennung der Plica wegen Blutungsgefahr eher unterlassen. Adhärentes Gewebe (Sigma etc) am Peritoneum nicht lösen, en-bloc mit Peritoneum belassen.",
          "Schritt 3:\nDissektion Peritoneum mit Schere, kaum Elektrokaustik lösen, Dissektionsebene innerhalb der avaskulären “Spinnwebenschicht. Erhalt der Fascia spermatica und lumbalis über Nerven (Nn. cut. fem. lat, genitofem., ilioing). Zurückdrängen / meist Resektion Leistenkanallipom.",
          "Schritt 4:\nDissektionsausmass: -medial: 1–2 cm über die Symphyse zur kontralateralen Seite, Linea alba frei,- kranial: 3-4 cm über den Musc. transversalis Bogen bzw. direkten Bruchdefekt, -lateral: bis zur Spina iliaca anterior superior, -kaudal: Richtung medial 2-3 cm unterhalb des Lig. Cooperi und 4-5cm unterhalb des Tractus iliopubicus auf Ebene des Musc. psoas (Peritoneum bis zum mittlerenAbschnitt des Psoasmuskel; peritoneale Umschlagfalte mindestens 1 cm unterhalb der geplanten kaudalen Netzkante)",
          "Schritt 5:\nBeurteilung aller Hernien inguinal, femoral, obturatorisch und Klassifizierung der Hernien",
          "Schritt 6:\nMediale Hernie: Faszia transversalis Fixierung am Lig. pectineum (Cooper). Laterale Hernie: falls lateraler Bruchsack nicht komplett freipäpariert werden kann (oder offener Proc. vaginalis) soweit wie möglich präparieren, durchtrennen, resorbierbar verschliessen.",
          "Schritt 7:\nPlatzieren des Netzes: Platzierung faltenfrei mit ausreichender Überlappung aller Bruchpforten, Klebefixation.",
          "Schritt 8:\nperitonaler Nahtverschluss fortlaufend, resorbierbar, monofil. Trokarentfernung unter Sicht, Fasziennähte, Intrakutannähte, Steristrip"
        ],
        "table": true,
        "tabledata": [
          {
            "r1": "'Corona mortis' am aufsteigenden Ast d. OS pubis in ca 25%.",
            "r2": "",
            "r3": "Ductus deferens Tesitkulargefässe nicht direkt fassen (paravasales Nervengeflecht)"
          }
        ],
        "tablenext" : false
      },
      {
        "name": "3.3 Umbilicalhernienplastik",
        "list": [
          "Schritt 1:\nDer Zugang erfolgt über einen semizirkulären periumbilikalen Hautschnitt.",
          "Schritt 2:\nAblösen des Bruchsacks. Bei kleineren, gut auslösbaren Nabelhernien wird der Bruchsack intakt gelassen.",
          "Schritt 3:\nIst der Nabel erheblich mit dem Bruchsack verwachsen, kann der distale Bruchsackanteil belassen werden. Der Bruchsack wird durch eineäussere Tabaksbeutelnaht umstochen, der überstehende Anteil abgetragen und der Stumpf versenkt.",
          "Schritt 4:\nBruchlückenverschluss. Nahtmaterial ist 0er Polypropylen.",
          "Schritt 5:\nNabelfixierung. Am Ende der Operation wird der Nabel mit Einzelknopfnähten auf dem Faszienniveau fixiert."
        ],
        "table": true,
        "tabledata": [
          {
            "r1": "",
            "r2": "Verletzung von Baucheingeweiden",
            "r3": "Die Bruchpforte der Nabelhernie liegt im Nabelring"
          },
          {
            "r1": "",
            "r2": "",
            "r3": "Bei Bruch > 2cm, sollte ein präperitoneales Netz verwendet werden"
          }
        ],
        "tablenext" : false
      },
      {
        "name": "3.4 Inguinalhernienplastik nach Lichtenstein",
        "list": [
          "Schritt 1:\nEinzeichen von Spina iliaca ant. sup. und Tuberculum pubicum.",
          "Schritt 2:\nHautschnitt tuberculum pubicum - Spina iliaca ant. sup. Entlang der Hautspaltlinien, ca 8cm.",
          "Schritt 3:\nDurchtrennen der Subcutis und Scarpa Faszie in derselben Richtung, subcutane Gefässe (Vasa epigastrica superficialis) werden ligiert oder koaguliert.",
          "Schritt 4:\nDarstellung Externusaponeurose in einer Breite von max. 2 cm, Längsinzision in Faserrichtung, die Inzision geht medial in den Anulus inguinalis superficialis über.",
          "Schritt 5:\nDarstellung der Nerven: Nach Abpräparation der Externusaponeurose vom M. obliquus internus abdominis und Darstellung des Leistenbandes, Identifikation des N. iliohypogastricus sowie am Samenstrang (Fascia spermatica externa) des N. ilioinguinalis.",
          "Schritt 6:\nAnschlingen des Samenstranges mit Mersilene-Band. Einsetzen von Wundspreizer gross.",
          "Schritt 7:\nLateral: Spaltung des M. cremaster kranialseitig des Samenstranges, Schonung des N. ilioinguinalis,Bruchsacksuche, Identifikation des Ductus deferens und evtl. Begleitlipoms (Resektion), Bruchsack wird über den inneren Leistenring nach innen verfolgt, Trennung von Ductus deferens samt Begleitstrukturen, Reposition / Resektion (Tabaksbeutelnaht, resorbierbar 3/0).",
          "Medial: bei direkter Hernie: raffende Naht der Transversalisfaszie mit Vicryl 2-0."                                          ,
          "Schritt 8:\nEinbringen des Ultrapro Netzes, Zurechtschneiden des Netzes: dazu Bildung der beiden lateralen Schenkel im Verhältnis 1:2 (kaudal zu kranial). Primärschnitt nicht zu weit.",
          "Schritt 9:\nNetzfixation: medial soll das Netz ca. 2cm das Tuberculum pubicum überlappen, beginnend von medial fortlaufende nicht-resorbierbare Naht (Prolene 2-0) mit Fixation des Netzes am Leistenband bis knapp lateral des Anulus inguinalis profundus, weitere Einzelknopfnähte kranial zw. Netz und M. obliquus internus bzw. Faszie in Nervenverlaufsrichtung. Fixation deskranialen Schenkels lateral des Anulus inguinalis profundus zum Leistenband, Demonstration der Durchtrittstelle des Samenstranges (1 Fingerkuppe), evtl. Verkleinerung des Schlitzes durch zusätzliche Nähte lateral des Samenstranges.",
          "Schritt 10:\nVerschluss Externusaponeurose mit Vicryl 2-0- GGfs. subcutanes Redon. Subcutannaht mit Vicryl 3-0 EKN. Intrakutane Hautnaht Vicryl 4-0 rapid."
        ],
        "table": true,
        "tabledata": [
          {
            "r1": "Samenstrangverle-tzungN. ilioinguinalisN. iliohypogastricus",
            "r2": "",
            "r3": "Einengung am inneren Leistenring durch zu enge Nähte"
          }
        ],
        "tablenext" : false
      }
    ],
    "Proktologie" :  [
      {
        "name": "4.1 Mukopexie nach Longo",
        "list": [
          "Schritt 1:\nSteinschnittlage und Transanal ggf. nach vorsichtiger Sphinkterdilatation durch Einführen des Spezial-Spekulums.",
          "Schritt 2:\nUnter Zuhilfenahme eines längeren, halbschalenförmigen Spekulums erfolgt dann die Tabaksbeutelnaht (Stärke 2/0, nicht resorbierbar) mindestens 3 cm oberhalb der Linea dentata.",
          "Schritt 3:\nNach Entfernen des Halbschalenspekulums Einführen des weit geöffneten Staplers, sodass die Gegendruckplatte oberhalb der Tabaksbeutelnaht zu liegen kommt.",
          "Schritt 4:\nDiese Naht wird auf dem Zentraldorn verknotet und der Faden sodann durch Öffnungen des Staplerkopfs geführt.",
          "Schritt 5:\nStapler schliessen.",
          "Schritt 6:\nNach erneuter Kontrolle des intakt verbliebenen Analkanals (Linea dentata sichtbar?) und – bei weiblichen Patienten – transvaginaler digitaler Kontrolle des Nichtfassens der Hinterwand Auslösen des Staplers.",
          "Schritt 7:\nNach Entfernen des Staplers muss die gesamte Zirkumferenz der Klammernaht noch einmal auf Bluttrockenheit inspiziert werden."
        ],
        "table": true,
        "tabledata": [
          {
            "r1": "Bei weiblichen Patienten: Fassen der Vaginalhinterwand vermeiden!",
            "r2": "",
            "r3": "Die Tabaksbeutelnaht muss deutlich, mindestens 3 cm oberhalbdes Analkanals im unteren Rektum angelegt werden."
          }
        ],
        "tablenext" : false
      },
      {
        "name": "4.2 Mariskenresektion",
        "list": [
          "Schritt 1: Steinschnittlage",
          "Schritt 2: Die Mariske wird gefasst.",
          "Schritt 3: Doppel-V-förmige Inzision. Ablösen des Hautlappens.",
          "Schritt 4: Hämostasekontrolle.",
          "Schritt 5: Hautverschluss mit Vicryl 3-0 fortlaufender Naht."
        ],
        "table": false,
        "tablenext" : false
      },
      {
        "name": "4.3 Exzision Sinus Pilonidalis",
        "list": [
          "Schritt 1:\nOperationsprinzip: Die operative Therapie erfordert die Entfernung allen entzündlichen Gewebes bis zur sakralen Faszie.",
          "Schritt 2:\nBauchlage und Gesässhälften mit Pflasterstreifen distrahieren.",
          "Schritt 3:\nInjektion von Methylenblaulösung in die Poren.",
          "Schritt 4:\nNach spitz-ovalärer Umschneidung der äusseren Fistelöffnung in entsprechender Ausdehnung, wird die Entzündungszone schrittweise im Subkutanniveau mit der Diathermie präpariert. Der Entzündungsherd muss vollständig und unter Umständen bis zur sakralen Faszie präpariert undentfernt werden.",
          "Schritt 5:\nBlutstillung.",
          "Schritt 6:\nMan kann die Wunde offenlassen und mit einer feuchten Kompresse der Sekundärheilung"
        ],
        "table": true,
        "tabledata": [
          {
            "r1": "",
            "r2": "",
            "r3": "Offene Wundbehandlung, ggf spätere Sekundärnaht"
          }
        ],
        "tablenext" : false
      }
    ],
    "Dunndarm / Kolon / Rektum": [
      {
        "name": "5.1 Dünndarmsegmentresektion",
        "list": [
          "Schritt 1:\nResektionsprinzip ist die Resektion des erkrankten Darmabschnitts unter Einhaltung möglichst sparsamer Resektionsgrenzen. Die distale und proximale Resektionslinie müssen ausreichend durchblutet sein, um eine sichere Anastomosenheilung zu gewährleisten.",
          "Schritt 2:\nSkelettierung des Dünndarmmesos I.",
          "Schritt 3:\nSkelettierung des Dünndarmmesos II.",
          "Schritt 4:\nNach Skelettierung des Darmrohrs erfolgt die Resektion zwischen Klemmen. Schritt 5: Nach Resektion werden die Darmenden einander angenähert und anastomisiert.",
          "Schritt 5:\nNach Fertigstellung der Naht erlaubt die vorsichtige Palpation zwischen Daumen und Zeigefinger eine Überprüfung der Lumenweite.",
          "Schritt 6:\nVerschluss des Mesoschlitzes.",
        ],
        "table": true,
        "tabledata": [
          {
            "r1": "",
            "r2": "Insuffizienz Anastomosenstenose Gefässverletzug Kurzdarmsyndrom bei >50% Verlust",
            "r3": ""
          }
        ],
        "tablenext" : false
      },
      {
        "name": "5.2 Laparoskopische Hemikolektomie rechts",
        "list": [
          "Schritt 1:\nZugänge: Kamerazugang infraumbilikal, offenes Anlegen des Pneumoperitoneums; 12mm linker Unterbauch; 5mm suprasymphysär, 5mm linker Mittelbauch (gibt auch andere Trokarpositionen).",
          "Schritt 2:\nExposition: Omentum majus übers Colon transversum schlagen. Operationstisch nach links kippen. Die A. ileocolica wird unter Spannung gebracht.",
          "Schritt 3:\nInzision des Mesenteriums unterhalb der ileokolischen Gefässe und Aufsuchen der mesokolischen Schicht.",
          "Schritt 4:\nMedial nach lateral Mobilisation. Dissektion zentral der ileokolischen Gefässe.",
          "Schritt 5:\nAbsetzen der ileokolischen Gefässe mit Hem-o- loks. Bei D3 Lymphadenektomie wird die V. mesenterica superior von unterhalb der Einmündung der V ileocolica bis zum Abgang des Henle's trunk/ Colica media freigelegt und das lymphatische Gewebe dem Präparat zudisseziert.",
          "Schritt 6:\nKomplettierung der medial nach lateral Mobilisation.",
          "Schritt 7:\nSpalten des Omentum majus auf Höhe Transektionsebene.",
          "Schritt 8:\nSuprakolisches Eingehen in die Bursa omentalis und Durchtrennung des Lig. Hepatocolicum sowie Mobilisation der rechten Flexur.",
          "Schritt 9:\nVon infraileokolisch Mobilisation des Ileozökums.",
          "Schritt 10:\nLaterales Ablösen des Colon ascendens medial der Toldt'schen Linie.",
          "Schritt 11:\nBergeinzision transrektal/ periumbilikal (alternativ intrakorporale Stapleranastomose)",
          "Schritt 12:\nResektion des vor die Bauchdecke luxierten Hemikolons rechts.",
          "Schritt 13:\nIleo-Transversostomie entweder End-zu-End, Seit-zu-Seit (iso- oder antiperistaltisch). Handnaht mit PDS 4-0 oder Seit-zu-Seit-Linear stapleranastomose (60mm Magazin). Verschluss Mesoschlitz mit PDS 4-0.",
          "Schritt 13:\nVerschluss der Bergeinzision (Faszie und Haut)."
        ],
        "table": true,
        "tabledata": [
          {
            "r1": "Verletzung von Ureter oder Duodenum, Pankreas.",
            "r2": "Abriss eines pankreatischen oder colischen Astes im Bereich des Pankreaskopfes (Registrar's vein)",
            "r3": "Ileumdurchtrennung 10 – 15 cm proximal der Bauhin-Klappe."
          } ,{
            "r1": "A./V. ileocolica, colica dextra, colica media, V. mesenterica superior, Henle.",
            "r2": "",
            "r3": "Palpable Pulsation der Randarkade im Bereich des abgesetzten Darmes sind ein Hinweis auf eine gute Durchblutung der zu anastomosierenden Darmenden."
          } ,{
            "r1": "Der rechte Ureter überkreuzt die A. iliaca communis an ihrer Aufteilung in internen und externen Anteil.",
            "r2": "",
            "r3": ""
          }
        ],
        "tablenext" : false
      },
      {
        "name": "5.3 Laparoskopische Sigmaresektion",
        "list": [
          "Schritt 1:\nSupraumbilikale Inzision und Einlage des 12mm Kamerazugangs.",
          "Schritt 2:\nEs gibt diverse klassische Trokarpositionen. Zum Beispiel: 12mm Trokar medial der Spina iliaca anterior superior rechts, je ein 5mm Trokar im linken und rechten Mittelbauch lateral.",
          "Schritt 3:\nExposition: Omentum majus nach suprakolisch verlagern. Patient in Trendelenburglagerung und leichter Rechtskippung.",
          "Schritt 4:\nDas Sigma und somit die A. rectalis superior wird unter Spannung gebracht. Über dem Promontorium Inzision des Peritoneums und Eingehen auf die Waldeyer/Gerota Faszie.",
          "Schritt 5:\nIdentifikation des Ursprungs der A. mesenterica inferior.",
          "Schritt 6:\nPatient weniger Kopf-tief. Maximale Rechtsseitenkippung. Im Bereich des Treitz Inzision des Peritoneums unterhalb der V. mesenterica inferior. Identifikation der Gerota Faszie.",
          "Schritt 7:\nMedial nach lateral Mobilisation. Wenn mesokolische Schicht oberhalb und unterhalb der A. mesenterica inferior definiert, dann Dissektion derselben und Absetzen zwischen Hemolock Clips (violett) ggf. Gefässstapler.",
          "Schritt 8:\nKomplettierung der medial nach Lateral- Mobilisation. Dorsal ist die sogenannte Gerota- Faszie. Gegen apikal stösst man auf das querverlaufende Pankreas.",
          "Schritt 9:\nKomplettierung der medial nach Lateral- Mobilisation. Dorsal ist die sogenannte Gerota- Faszie. Gegen apikal stösst man auf das querverlaufende Pankreas.",
          "Schritt 10:\nAblösen des Sigmas und Colon descendens von lateral.",
          "Schritt 11:\nMobilisation der linken Flexur (oft schwierigster Schritt der Operation). Hierbei eingehen in die Bursa omentalis. CAVE: Einriss der Milzkapsel bei zu starkem Zug an der Kolonflexur.",
          "Schritt 12:\nPräparation im Beckenbereich bis auf Absetzungshöhe. Hierbei streng in der mesosigmoidalen bzw. mesorektalen Schicht bleiben. Schonung der Ureteren. Schonung der dorsal liegenden hypogastrischen Nerven.",
          "Schritt 13:Absetzen mit Linearstapler (60mm).",
          "Schritt 14:\nSupraumbilikaler Bergeschnitt (Pfannenstiel-Schnitt). Einlage Alexis. Verlagerungdes mobilisierten Darmes vor die Bauchdecke.",
          "Schritt 15:\nTransektion meist im Bereich des distalen Colon descendens. Arterielle Durchblutung prüfen. Ohne gute Durchblutung, keine Anastomose!",
          "Schritt 16:\nTabaksbeutelnaht mit Prolene 2-0 und Einnaht des Staplerkopfes.",
          "Schritt 17:\nVerschluss Zusatzinzision.",
          "Schritt 18:\nVon anal her Ausspülen des Rektums, leichte Sphinkterdilatation mit den Dilatatoren.",
          "Schritt 19:\nEinführen des Staplers von anal. Rotationskontrollierte Konnektion mit Staplerplatte von endoabdominal. Herstellen der Descendorektostomie.",
          "Schritt 20:\nKontrolle der Staplerringe. Kontrolle der Dichtigkeit der Anastomose mit Lufttest. Ausschluss relevante Anastomosenblutung mittels starrer Rektoskopie.",
          "Schritt 21:\nSpülen des Abdomens. Hämostasekontrolle.",
          "Schritt 22:\nEntfernung der Trokare unter Sicht und Faszien-/ Wundverschluss",
        ],
        "table": true,
        "tabledata": [
          {
            "r1": "Promontorium, A. mesenterica inferior, Ureter, V. mesenterica inferior, Gerota-Faszie, Pankreas, Bursa omentalis, Milz, hypogastrische Nerven, gonadale Gefässe",
            "r2": "Milzkapselläsionen durch Zug am Kolon oder am grossen Netz",
            "r3": "Auf richtige Orientierung der zu anastomosierenden Darmenden.Anastomose muss spannungsfrei sein."
          },
          {
            "r1": "",
            "r2": "Überprüfung der Riolan-Anastomose vor Ligatur der A. colica sinistra.",
            "r3": "Darstellung des linken Ureters auch proximal bei der Mobilisationdes Mesosigmas"
          },
        ],
        "tablenext" : false
      },
      {
        "name": "5.4 Lap. Rektosigmoidresektion",
        "list": [
          "Analog zur Sigmaresektion. Allerdings liegt hier die Absetzunghöhe tiefer, nämlich unterhalb derperitonealen Umschlagsfalte.",
        ],
        "table": false,
        "tabledata": [
        ],
        "tablenext" : false
      },
    ],
    "Oesophagus / Magen": [
      {
        "name": "6.1 Lap. Fundoplicatio",
        "list": [
          "Schritt 1:\nTrokarposition: Beste Lokalisation für die Trokare ist die halbkreisförmige Anordnung mit dem Xiphoid als Zentrum. Hier wird ganz rechts am Rippenbogen der Leberretraktor, links am Rippenbogen die Babcock-Zange zum Fassen des Magens und in der Mitte 2 Querfinger oberhalb des Nabels der Optiktrokar eingeführt. Beiderseits paramedian liegen die Arbeitskanäle für den Operateur. Verwendung finden von re –li: 5-5-10- 10-10mm Trokare.",
          "Schritt 2:\nNach Einführen des Leberretraktors und kranialer Verdrängung des linken Leberlappens wird der Magen mit einer Babcock-Zange an der grossen Kurvatur gefasst und vom Assistenten unter laterale Anspannung gesetzt. Über die beiden Arbeitstrokare wird links eine Fasszange, rechts das Hauptarbeitsinstrument (Schere, Haken, Power device) eingeführt.",
          "Schritt 3:\nDie Präparation beginnt mit der lebernahen Spaltung des Omentum minus unter Schonung der Lagadère Äste des Nervus vagus und die Darstellung des rechten Crus des Diaphragmas. Von da cranial und linksseitiges Eröffnen des phreno-ösophagealen Ligaments und freilegen des Oesophagus.",
          "Der Allen-Test orientiert über die Durchblutung des Hohlhandbogens bei wechselnder Kompression der A. ulnaris und A. radialis. Kommt es durch vollständige Kompression und Verschluss der A. radialis zu einer Minderdurchblutung der Finger und zu einem Verlust der Pulsationen der A. ulnaris, darf eine Punktion oder die Einlage eines A.-radialis-Katheter nicht erfolgen.",
          "Schritt 4:\nDer Ösophagus wird langstreckig, meist stumpf mobilisiert schlussendlich mit einem Tupfer durch den Assistentenport unterfahren. So kann der Oesophagus vollständig vom linken Crus befreit und ein dorsales Fenster eröffnet werden. Der ösophago-gastrale Übergang sollte nun ohne Zug intraabdominal liegen bleiben.",
          "Schritt 5:\nAls Nächstes erfolgt die Skelettierung der grossen Magenkurvatur auf einer Länge von 6 – 8 cm.",
          "Schritt 6:\nIst der Ösophagus vollständig mobilisiert, wird er stumpf unterfahren. Alternativ kann ein Gummizügel oder eine flexible Hakensonde benutzt werden, um ihn ventral zu ziehen. Die Zwerchfellschenkel werden nun mit einzelnen Nähten von dorsal nach ventral vereint (Ethibond 0), die dicke Magensonde dient als Kontrolle der Öffnung. Die Implantation von Netzten bei Hiatushernien wird kontrovers diskutiert. Die Rezidivrate muss gegen die Komplikationen, welche durch den direkten Kontakt des Netzes mit dem Magen/Oeosophagus zustandekommen, abgewogen werden. Aus meiner Sicht überwiegen die Nachteile der Netzte, weshalb ich aktuell keine verwende.",
          "Schritt 7:\nJe nach Situation wird nun im Anschluss eine Fundoplicatio durchgeführt, diese wird jeweils mit Ethibond 2-0 durchgeführt: 7a Dor: Anteriore 180° Fundoplikation: Findet Anwendung als Ergänzung/ Rezidivprophylaxe bei Hiatushernien, welche ursächlich für Reflux sind. Sowie bei GERD mit leichten oesophagealen Motilitätsstörungen.\n- 1 x His Winkel-Rekonstruktion\n- 3 x Fundo-oesophago-phrenicopexie\n- 3 x anteriore Fundo-phrenicopexie\n- ev. 1 x Rosatti Stich",
          "7b Toupet: Posteriore 270° Fundoplikation: Heute vor allem bei GERD mit schwachem UES angewendet. Weniger Bloating. Luftaufstossen einfacher möglich. Langzeitergebnisse analog zum Nissen.\n- 3 x (Fundo-oesophago-phrenikopexie\n- jeweils 3 seromuskulären Nähten beidseits an der vorderen Ösophaguszirkumferenz unter Schonung des vorderen Vagusastes,\n- Fixation der Fundoplicatio mit zusätzlichen 2 Nähten am kranialen Hiatusbogen,",
          "7c Nissen: Posteriore 360° Fundoplikation: Heute selten verwendet, Toupet wird bevorzugt. Bei GERD mit schwachem UES angewendet. Nachteile sind häufiger Dysphagie postop, häufiger Bloating postoperativ. - analog Toupet, aber die Manschette wird anterior durch die 3 Stiche (Fundus-fundus) vollständig geschlossen.t",
        ],
        "table": true,
        "tabledata": [
          {
            "r1": "Verletzung von Ösophagus, Magen, Milz, N. vagus",
            "r2": "Eine dicke Magensonde (42 Fr.) oder ein Gastroskop werden während der Präparation im Oesophagus platziert um diesen intraoperativ sichtbar zu machen und zu schützen. Bei der Manschettenbildung dient die Sonde als Kalibrierung der Hiatoplastik und der Manschette.",
            "r3": "Auf Vorder- und Hinterfläche des Ösophagus liegen die Hauptstämme des Vagusnerven, welche zwingend geschont werden müssen.n"
          }
        ],
        "tablenext" : false
      },
      {
        "name": "6.2 Lap. Magenbypass (Roux-Y)",
        "list": [
          "Schritt 1:\nBeach-Chair-Lagerung",
          "Schritt 2:\nInstrumentieren des Abdomens mit fünf 12mm Trokaren, nachdem unter Sicht direkt mit dem Optiktrokar der Kamerazugang hergestellt worden war. 15mmHg Gasdruck.",
          "Schritt 3:\nWeghalten der Leber mit dem Leberpaddel und Darstellen des His'schen Winkels.",
          "Schritt 4:\nSkelettieren der kleinen Kurvatur des Magens und Durchtrennen des Magens mit mehreren Magazinen mit dem Endostapler 60mm, sodass ein Magenpouch von ca. 25ml Grösse entsteht.",
          "Schritt 5:\nDistale Inzision des Pouches.",
          "Schritt 6:\nNun Mobilisation des Omentum majus und des Colon transversum. Spalten des Omentum majus vom Colon in die Peripherie.",
          "Schritt 7:\nAufsuchen des Ligamentum Treitz und Hochklappen einer Dünndarmschlinge von ca. 80cm Länge distal des Treitz'schen Bandes.",
          "Schritt 8:\nEröffnen des Dünndarmes antemesenterial. Einbringen des Endo Stapler 45 in die Dünndarmschlinge und in den Magenpouch. Anastomosierung. Verschluss der Gastroenterostomie mit resorbierbarem V-Lock 3-0.",
          "Schritt 9:\nAbmessen des alimentären Dünndarmschenkels von rund 180cm Länge und Anlage der Fusspunktanastomose mit dem Endo-Stapler vaskular 30, bidirektionales Stapling vaskular nach distal und proximal. Verschluss der Enterotomie mittels fortlaufender 3-0 V-Lock Naht.",
          "Schritt 10:\nVerschluss der Mesolücken mit V-Lock 2-0 nicht resorbierbar. Durchtrennen des biliären Dünndarmschenkels 1cm distal der Gastroenterostomie mit dem Endo-GIA Stapler 60 vaskular.",
          "Schritt 11:\nAn der Gastroenterostomie wird mit Methylenblau, welches über eine Magensonde appliziert wird, die Dichtigkeit geprüft.",
          "Schritt 12:\nEntfernen der Trokare unter Sicht und Ablassen des Pneumoperitoneums nach Entfernen desLeberpaddels.",
        ],
        "table": true,
        "tabledata": [
          {
            "r1": "Milzverletzung, Verletzung der A. colica media. Anastomoseninsuffizienz",
            "r2": "",
            "r3": ""
          }
        ],
        "tablenext" : false
      },
      {
        "name": "6.3 Lap. Sleeve Gastrektomie",
        "list": [
          "Schritt 1:\nPatient in Beach-Chair-Lagerung",
          "Schritt 2:\nHautinzision epigastrisch und Eingehen in das Abdomen mit 12-mm-Optiktrokar. Pneumoperitoneum bei 15 mmHg.",
          "Schritt 3:\nInstrumentation mit drei weiteren 12-mm- und einem 5-mm-Trokar. Danach wird das Leberpaddle eingesetzt.",
          "Schritt 4:\nEingehen in die Bursa omentalis kranial des Pylorus.",
          "Schritt 5:\nDurchtrennen des Magens entlang einer Ch 16 Magensonde nach kranial mittels Endo-GIA Stapler 60.",
          "Schritt 6:\nPräparation des His´schen Winkels und vollständiges Absetzen des Magen-Sleeves. Fortlaufende Übernähung der Klammernahtreihe mit V-Lock-Fäden.",
          "Schritt 7:\nVollständiges Lösen des Sleeves vom Omentum majus.",
          "Schritt 8:\nFasziennaht. Klammernaht. Pflasterverband."
        ],
        "table": true,
        "tabledata": [
          {
            "r1": "Aa. gastricae breves von der A.lienalis zum Magenfundus.",
            "r2": "",
            "r3": "das venöse Hauptgefäß an der kleinen Kurvatur (V. coronia ventriculi) mündet in die V. portae."
          },
          {
            "r1": "A. gastrica sinistra aus demTruncus coeliacus und A. gastrica dextra aus der A. hepatica an der kleinen Kurvatur.",
            "r2": "Bei Milzverletzung: Versuch der Erhaltung durch Blutstillung mittels Elektro-/Saphir-/Argon-Koagulation, hämostyptische Substanzen(Tabotamp o.ä.)",
            "r3": "Im kleinen Netz findet sich in ca. 15% der Fälle eine akzessorische linke Leberarterie aus der A. gastrica sinistra."
          },
          {
            "r1": "A. gastroepiploica sinistra aus der A. lienalis und A. gastroepiploica dextra aus der A. gastroduodenalis an der großen Kurvatur.",
            "r2": "",
            "r3": ""
          },
        ],
        "tablenext" : false
      }
    ],
    "Endokrine Chirurgie": [
      {
        "name": "7.1 Totale Thyreoidektomie",
        "list": [
          "Schritt 1:\nRückenlage, Kopf rekliniert, ggf Kissen zwischen die Schulterblätter, und Oberkörper leicht aufgerichtet.",
          "Schritt 2:\nHautschnitt und Platysmadurchtrennung. Der Hautschnitt erfolgt als Kocherscher Kragenschnitt zwischen den Muskelbäuchen des M. sternocleidomastoideus beidseits.",
          "Schritt 3:\nDurchtrennung oberflächlicher Halsvenen und Mobilisation des Wundrandes. Nach Mobilisation der Wundränder wird die gerade Halsmuskulatur in der Mittellinie längs gespalten.",
          "Der Allen-Test orientiert über die Durchblutung des Hohlhandbogens bei wechselnder Kompression der A. ulnaris und A. radialis. Kommt es durch vollständige Kompression und Verschluss der A. radialis zu einer Minderdurchblutung der Finger und zu einem Verlust der Pulsationen der A. ulnaris, darf eine Punktion oder die Einlage eines A.-radialis-Katheter nicht erfolgen.",
          "Schritt 4:\nDarstellung, Durchtrennung und Ligatur der oberen Polgefässe.",
          "Schritt 5:\nLigatur A. thyreoidea inferior. Durchtrennung der unteren Polgefässe.",
          "Schritt 6:\nAls letzter Schritt der Skelettierung wird der Isthmus durchtrennt.",
          "Schritt 7:\nAblösung von der Trachea. Unter Koagulation kleinerer Gefässe kann man die Schilddrüse scharf von der Trachea als letztem verbliebenen Fixierungsbereich ablösen und entfernen.",
          "Schritt 8:\nWundverschluss.",

        ],
        "table": true,
        "tabledata": [
          {
            "r1": "N. laryngeus recurrens, A. thyreoidea superior aus A. carotis externa zum oberen Pol. A. thyreoidea inferior aus Truncus thyrocervicalis zieht mehr von lateral als kaudal zur Schilddrüse",
            "r2": "Gefässverletzung.",
            "r3": "Kalziummangel infolge Hypoparathyreoidismus. N. laryngeus recurrens verläuft in der Rinne zwischen Trachea und Ösophagus"
          }
        ],
        "tablenext" : false
      },
      {
        "name": "7.2 Hemithyreoidektomie links / rechts",
        "list": [
          "Schritt 1:\nDie Lagerung erfolgt in maximaler Reklination des Kopfes in einer Kopfschale.",
          "Schritt 2:\nHautschnitt und Durchtrennung des Platysmas. Durchtrennung oberflächlicher Halsvenen und Mobilisation des Wundrandes.",
          "Schritt 3:\nNach Mobilisation der Wundränder wird die gerade Halsmuskulatur in der Mittellinie längs gespalten.",
          "Schritt 4:\nDarstellung, Durchtrennung und Ligatur der oberen Polgefässe.",
          "Schritt 5:\nLigatur A. thyreoidea inferior. Durchtrennung der unteren Polgefässe.",
          "Schritt 6:\nIsthmusdurchtrennung",
          "Schritt 7:\nAblösung von der Trachealvorderfläche. Adhäsionen zur Trachea werden unter punktueller Koagulation gelöst, so dass der Schilddrüsenlappen subtotal mobilisiert ist.",
          "Schritt 8:\nInzision der Schilddrüsenkapsel und die Drüse unter partieller Aushöhlung des verbleibenden dorsalen Lappenrestes reseziert.",
          "Schritt 9:\nDer verbleibende Kapselrest wird mit zweireihiger fortlaufender Naht bluttrocken verschlossen.",
          "Schritt 10:\nWundverschluss",
        ],
        "table": true,
        "tabledata": [
          {
            "r1": "N. laryngeus recurrens, A. thyreoidea superior aus A. carotis externa zum oberen Pol. A. thyreoidea inferior aus Truncus thyrocervicalis zieht mehr von lateral als kaudal zur Schilddrüse",
            "r2": "Gefässverletzung. Hormontherapie in Abhängigkeit von der Grunderkrankung, erst nach Vorliegen der gutartigen Histologie beginnend.",
            "r3": "Kalziummangel infolge Hypoparathyreoidismus. N. laryngeus recurrens verläuft in der Rinne zwischen Trachea und Ösophagus"
          }
        ],
        "tablenext" : false,
      },
      {
        "name": "7.3 Splenektomie",
        "list": [
          "Schritt 1:\nDie Splenektomie kann über einen Rippenbogenrandschnitt links oder über einen Oberbauchmedianschnitt erfolgen.",
          "Schritt 2:\nNach vollständiger Freilegung der Milz werden zuerst die Vasa brevia zwischen großer Magenkurvatur und oberem Milzhilus durchtrennt.",
          "Schritt 3:\nSkelettierung des Milzhilus. Ihre Gefässversorgung bezieht die Milz aus dem Milzhilus.",
          "Schritt 4:\nMobilisation der Milz. Ist der Milz am Gefäßstiel vollständig skelettiert, wird sie aus ihrem Lager luxiert.",
          "Schritt 5:\nRetrograde Auslösung der Milz. Ist die Milz vollständig luxiert, lässt sie sich nach kraniomedial umschlagen. Nun stellen sich die letzten retrograden Gefäße dar, die aus dem Pankreasschwanz zum Milzhilus verlaufen.",
          "Schritt 6:\nBlutstillung Milzlager. Man sollte sich viel Zeit lassen und mit gezielten Maßnahmen alle Blutungsquellen versorgen.",
          "Schritt 7:\nEine Blutungsdrainage für 48 Stunden, schichtweiser Verschluss der Bauchdecken und Hautnähte beenden den Eingriff.",
        ],
        "table": true,
        "tabledata": [
          {
            "r1": "Enge Lagebeziehung zwischen Milz und Magen (A./V. gastrica brevis), Milzhilus und Pankreasschwanz sowie unterem Milzpol und linker Kolonflexur.",
            "r2": "Magenverletzung, Pankreasverletzung, Kolonverletzung",
            "r3": "Primär Ligatur der A. lienalis erleichtert die Präparation, insbesondere bei extremer Splenomegalie."
          }
        ],
        "tablenext" : false,
      },
    ],
    "Thoraxchirurgie": [
      {
        "name": "8.1 Thoraxdrainage-Einlage",
        "list": [
          "Schritt 1:\nPatient in Rückenlage mit der Hand hinter dem Kopf, evtl. bei grosser Mamma Seite etwas anheben mit Kissen. Desinfektion und Abdeckung mit Lochtuch oder besser 4 Tücher.",
          "Schritt 2:\nAufsuchen der 5. Rippe in der vorderen Axillarlinie rechts. Infiltration mit Rapidocain 1% bis in den Pleuraspalt. Alternativ auf Höhe mittlere Axillarlinie Intercostalblockade über mehrere ICR (4-6).",
          "Schritt 3:\nNach genügend lange Zeit für die Wirkung des Lokalanästhetikum, quere Hautinzision über dem 5. ICR, vordere Axillarlinie. Stumpfe Präparation in Richtung kranial oder Dorsal je nach gewünschter Lage. Im ICR wird mit einer geschlossenen Schere die Pleura stumpf eröffnet (Die nicht dominante Hand sichert die geschlossene Schere nahe der Thoraxwand um unkontrolliertes eindringen in den Thorax zu vermeiden). Digitales Austasten",
          "Schritt 4:\nEinführen des Drainageschlauches digital oder mit gebogener Kornzange in Richtung Apex oder nach posterior, je nach gewünschter Lage. Positives Fog sign oder Ergussentleerung.",
          "Schritt 5:\nAnnähen der Drainage mit dickem geflochtenem Faden (Seide oder Mersilene). Vorlegen der U-Naht (Monofiler nicht resorbierbarer Faden 2-0). Anschluss ans Topaz-System mit 10 cmH2O Sog (Bei Anschluss des Sog häufig Hustenreiz, Schmerzen und Subjektive Dyspnoe. Vorher den Patienten informieren). Steriler Wundverband.",
          "Schritt 6:\nRadiologische Kontrolle der Drainagenlage."
        ],
        "table": true,
        "tabledata": [
          {
            "r1": "",
            "r2": "Suffiziente Anästhesie",
            "r3": "Intercostalblock, Zeit nehmen"
          },{
            "r1": "",
            "r2": "Einführen des Schlauches",
            "r3": "Subcutane Tunnelierung so wählen, dass Richtung der Drainage stimmt."
          }
        ],
        "tablenext" : false
      },
      {
        "name": "8.2 Tracheotomie",
        "list": [
          "Schritt 1:\nZugang Querverlaufend 1,0 cm suprajugulär. Der Zugang erfolgt über einen 3-4cm langen waagerechten Hautschnitt. Durchtrennung des Platysma.",
          "Schritt 2:\nSpaltung der kurzen Halsmuskeln in der Mittellinie. Präparation in Richtung auf die Trachea. Schilddrüssenisthmus muss senten durchtrennt werden.",
          "Schritt 3:\nExposition, Identifizierung des 2.-4. Trachealringknorpel (Cave Verwechslung Cricoid mit 1. Ringknorpel!) Positionierung 1-2 Haltenähte am 3. Ringknorpel (Vicryl UR6). Kommunikation mit Anästhesie! Nochmaliges überprüfen der Trachealkanüle und Cuffdichtigkeit.",
          "Schritt 4:\nInzision der Tracheavorderwand (n oder H-förmig, so dass mit den vorgelegten Fäden einen Lappen gemacht werden kann) Eröffnung des Trachealfensters mit Haltefäden. Anästhesie zieht den Tubus zurück.",
          "Schritt 5:\nEinführen der Trachealkanüle (Vorgängig getestet und evtl mit Gleitgel benetzt).\" Cuffen\". Kommunikation mit Anästhesie ob CO2 Return. Haltefaden lang lassen.",
          "Schritt 6:\nHautnaht. Nach Entfernung der Haken legen sich Muskel und prätracheale Faszie wieder vor die Luftröhre, so dass sich eine Naht erübrigt.",
          "Schritt 7:\nDie Hautränder werden mit Einzelknopfnähten adaptiert und die Wunde mit einer geschlitzten Mullkompresse oder einer Metall-Folie abgedeckt. Die Kanüle wird an der Haltevorrichtung an der Haut angenäht und mit einem um den Hals gelegten Bändchen gesichert"
        ],
        "table": true,
        "tabledata": [
          {
            "r1": "",
            "r2": "Schilddrüsenverletzung, Tracheahinterwandverletzung, Gefässverletzung",
            "r3": "Kopf reklinieren.Alles vorbereitet haben, auch eine evtl ErsatzkanüleKommunikation mit Anästhesie"
          }
        ],
        "tablenext" : false,
      },
      {
        "name": "8.3 Thorakoskopie Wedge Resektion",
        "list": [
          "Schritt 1:\nSL, Ausknicken des Patienten, Operateur steht am Bauch des Patienten.",
          "Schritt 2:\nWahl die Zugänge, idR beginnend vom ventralsten (vordere Axillarlinie). Präparation mit EK bis zur Pleura. Einführen eines 12 mm Thoracoport bei nicht ventilierter Lunge. Posteriorer Zugang evtl nur 7,5 mm.",
          "Schritt 3:\nEinführen weiterer Zugänge unter videothorakoskopischer Sicht. Inspektion des Thorax. Identifizierung der Läsion.",
          "Schritt 4:\nMit DeBakey oder 5/10mm Lungenfasszange wird der Resektionsausmass bestimmt (Vorpressen). Wedge Resektion mittels EndoGIA Universal Stapler (idR mit violetten Magazinen 45/60mm).",
          "Schritt 5:\nDas Präparat wird je nach Grösse in einem LapSac (Cook) 5x8 oder 6x9 (Lobektomien) geborgen. Alternativ bei kleinen Wedge-Resektionen kann ein normaler EndoBag gebraucht werden.",
          "Schritt 6:\nKontrolle der Dichtigkeit durch Blähen der Lunge nach Einfüllen von Kochsalzlösung.",
          "Schritt 7:\nEinlage von idR. nur 1 Drainage (Charr 24) durch den vorderen oder mittleren Zugang. Annaht mit Seide und Vorlegen einer U-Naht mit Dermalon 2-0 um die Drainage.",
          "Schritt 8:\nHautnaht Intrakutan. -20cm H2O Sog (bei Emphysem idR. immer 10cmH2O sog).",
        ],
        "table": true,
        "tabledata": [
          {
            "r1": "",
            "r2": "",
            "r3": "Bei schwerem Lungenemphysem werden die Staplerlinien mit Klammernahtverstärkung (SeamGuard ®)"
          }
        ],
        "tablenext" : false,
      },
    ],
    "Notfallchirurgie / Traumatologie": [
      {
        "name": "9.1 Kompartment / Logenspaltung",
        "list": [
          "Schritt 1:\nQuerschnitt: Das oberflächliche dorsale und das tiefe dorsale Kompartment sind bei der Fasziotomie medial der Tibia zu erreichen, die beiden anderen sind durch eine Inzision ventral der Fibula zugänglich.",
          "Schritt 2:\nLateroventrale Spaltung: Von einem ca. 15 cm langen Hautschnitt an der lateralen Seite des Fibulas in Höhe des proximalen Unterschenkeldrittels wird die Faszie dargestellt und oberflächlich quer inzidiert, um das intermuskuläre Septum zu identifizieren. Vor und hinter dem Septum wird die Faszie weit nach proximal und distal gespalten. Vor Spaltung wird empfohlen, die Faszie mit der Schere zu unterfahren, um den Peronealnerv zu identifizieren und schonen zu können.",
          "Schritt 3:\nMediale Spaltung: Die Entlastung der oberflächlichen und tiefen hinteren Kompartimente erfordert einen 15 cm langen Längsschnitt der Haut dorsal der hinteren Kante des Schienbeins in Höhe der distalen Drittkante. Um das intermuskuläre Septum zu identifizieren, wird die Faszie eingeschnitten zuerst transversal, dann in Längsrichtung ventral und dorsal zum Septum."

        ],
        "table": true,
        "tabledata": [
          {
            "r1": "Vena Saphena magna, Nervus saphenus",
            "r2": "Exzision nekrotischer Muskulatur (Muskelvitalität: beurteilt anhand von Konsistenz, Kontraktilität, Kolorit, Kapillarblutung= 4 K).",
            "r3": "Alle Logen sollten gespalten werden."
          },
          {
            "r1": "Bei der präoperativen Diagnose klinisch beurteilen: Schmerzen, Schwellung, passiver Muskeldehnungsschmerz, Sensibilitätsstörungen, motorische Schwäche",
            "r2": "Kompartmentdruckmessung (bei Normotonie: > 20mmHg pathologisch, < 20mmHg normal;",
            "r3": "Die Fasziotomie des Unterschenkels muss alle Kompartments erfassen."
          },
        ],
        "tablenext" : false
      },
      {
        "name": "9.2 Zehenamputation",
        "list": [
          "Schritt 1:\nDie Hautschnitte für Fingeramputationen oder – exartikulationen sowie Amputationen der Hand entsprechen den anatomischen Gegebenheiten. Ziel ist die froschmaulartige Bildung von gut durchbluteten Haut-Muskellappen, die zur Deckung der knöchernen Stümpfe verwendet werden.",
          "Schritt 2:\nBei Amputation im Fingermittelglied ist ein volare Haut-Muskellappen zu bilden, der zur Deckung des Defekts möglichst weit nach distal reichen sollte.",
          "Schritt 3:\nTendoplastische Deckung. Vor dem Gelenkköpfchen werden die Beugesehnen mit den Strecksehnen durch Einzelknopfnähte untereinander verbunden. Derart lässt sich eine gute tendo- und myoplastische Deckung des Stumpfes erzielen.",
          "Schritt 4:\nKutane Stumpfdeckung. Der Stumpf wird durch den volaren Haut-Muskellappen gedeckt. Hierbei sollten die Subkutannähte ohne Spannung erfolgen und die Hautnähte die Haut nur locker adaptieren. Die Nahtreihe darf nicht im Bereich der Greiffläche liegen, d.h. sie sollte eher dorsal plaziert werden, um die volle Sensibilität die Volarfläche zu erhalten."
        ],
        "table": true,
        "tabledata": [
          {
            "r1": "",
            "r2": "",
            "r3": "Die plantaren/palmaren Weichteile sind dicker, besser durchblutet und resistenter gegenüber mechanischen Belastungen und sollten daher für Lappenbildungen bevorzugt werden"
          }
        ],
        "tablenext" : false,
      },
      {
        "name": "9.3 Cistofix Anlage",
        "list": [
          "Schritt 1:\nBlasenpunktion nach Füllen der Blase über einen transurethralen Katheter mit 300 – 500 ml steriler Lösung.",
          "Schritt 2:\nEventuell unter sonografischer Kontrolle Nachweis der Blasenfüllung und des besten Punktionsorts.",
          "Schritt 3:\nNach sicherer Punktion der Blase Aspiration von Urin und Einschleusen eines Plastikkatheters über die Punktionskanüle (Cystofix), bis er sicher in der Blase gelegen ist.",
          "Schritt 4:\nSicherung des Katheters durch Pflaster und Blockerballon entsprechend der Ballonspitze.",
          "Schritt 5:\nDanach Entfernung der Cystofix-Kanüle, die durchAuseinanderbrechen der beiden Hälften vomKatheter gelöst werden kann.t"
        ],
        "table": true,
        "tabledata": [
          {
            "r1": "",
            "r2": "Veränderte Anatomie durch Voroperationen und Narbenbildung.",
            "r3": "Der Einstichort ist 3 – 4 cm oberhalb der Symphyse beigefüllter Blase"
          },
          {
            "r1": "",
            "r2": "",
            "r3": "Verletzung des Katheters durch die scharfen Kanten und die Spitzeder Punktionskanüle."
          },
        ],
        "tablenext" : false,
      },
      {
        "name": "9.4 Achillessehnennaht",
        "list": [
          "Schritt 1:\nLagerung und Hautschnitt: Bauchlagerung. Hautschnitt an der Medialseite der Sehne. Hier müssen die V. saphena parva und N. suralis lateral der Achillesehne sorgfältig geschont werden.",
          "Schritt 2:\nNach Spaltung der Haut werden die Subkutis und die Lamina superficialis der Unterschenkelfaszie gespalten.",
          "Schritt 3:\nDurch Spaltung des Peritendineums und Ausräumung des stets vorhanden Hämatoms lässt sich die Sehne kranial- und kaudal wärts darstellen. Hierbei sind die beiden Sehnenstümpfe aufzusuchen und hinsichtlich fester Nahtlager zu beurteilen.",
          "Schritt 4:\nDie Rupturenden werden mit kräftigem Monofilfaden in Kirchmayr-Kessler-Nahttechnik adaptiert.",
          "Schritt 5:\nMit feinem Monofilfaden erfolgt anschliessend die Feinadaptation der ausgefransten Sehnenenden.",
          "Schritt 6:\nNaht des Peritendineums und der Subkutis sowie Hautnaht.",
          "Schritt 7:\nRuhigstellung für 2 Wochen in einem Unterschenkelgips in Spitzfussstellung (30°). In 2- wöchentlichen Abständen Reduktion der Spitzfussstellung, nach 6 Wochen plantigrade Stellung.",
        ],
        "table": true,
        "tabledata": [
          {
            "r1": "Verletzung N. Suralis",
            "r2": "",
            "r3": "Spitzfussgipsschale (110°) bereits präoperativ anfertigen"
          },
        ],
        "tablenext" : false,
      },
      {
        "name": "9.5 Bursektomie Ellenbogen",
        "list": [
          "Schritt 1:\nRücken oder Bauch; ggf. Armtisch und Blutsperre durch Druckmanschette.",
          "Schritt 2:\nHautschnitt: streckseitig längs verlaufend radial der Olekranonspitze.",
          "Schritt 3:\nNach Freilegung der Subkutis wird die Bursa über dem Olekranon aufgesucht und vollständig vonihrer Umgebung abgelöst.",
          "Schritt 4:\nDas Olekranon ist ggf. daraufhin zu untersuchen, ob ein Olekranonsporn vorliegt. Im positiven Fall ist dieser durch Abmeisselung abzutragen.",
          "Schritt 5:\nNach Aufhebung der Blutsperre wird ausführliche Blutstillung betrieben, ein kleines Redon platziert und die Haut mit Einzelknopfnähten verschlossen.",
          "Schritt 6:\nEs empfiehlt sich eine Oberarmschiene zur Ruhigstellung des Ellenbogengelenks für einige Tage"
        ],
        "table": true,
        "tabledata": [
          {
            "r1": "Nervenverletzung N. ulnaris (verläuft im Sulcus ulnaris.) Gelenkeröffnung. Wundheilungsstörung",
            "r2": "Bei systemischen Entzündungserscheinungen (Fieber, Leukozytose, Lymphangitis/Adenitis) perioperative Antibiotikatherapie.",
            "r3": "Nach einem Trauma, falls erforderlich, Röntgenaufnahme der Weichteile zum Ausschluss eines Fremdkörpers."
          },
        ],
        "tablenext" : false,
      },
      {
        "name": "9.6 Fixateur externe",
        "list": [
          "Schritt 1:\nSetzten der proximalen Schanzschen-Schrauben in das mittlere Drittel der Tibia, bzw proximal der Fraktur. Über einen kleinen Hautschnitt und eine Führungshülse wird mit Bohrern unterschiedlicher Stärke (3,2 mm, 3,6 mm, 4,5 mm) vorgebohrt. Nach Vorbohren erfolgt das manuelle Eindrehen der Schanz-Schrauben.",
          "Schritt 2:\nEinbringen des Steinman-Nagels in den Calcaneus von medial nach lateral unter BV- Kontrolle.",
          "Schritt 3:\nVerbinden der jeweiligen Pins mittels Karbonstangen.",
          "Schritt 4:\nReposition unter BV-Kontrolle und definitive Fixierung",
        ],
        "table": true,
        "tabledata": [
          {
            "r1": "Einbringen der Pins\n- nicht durch seitliche Muskulatur\n- nicht durch Tibiavorderkante\n-icht durch distale Sehnen",
            "r2": "Immer spülen/kühlen während des Bohrens in kortikalem Knochen um thermischer Hitzenekrosen zu vermeiden",
            "r3": ""
          },
        ],
        "tablenext" : false,
      },
      {
        "name": "9.7 Proximaler Femurnagel",
        "list": [
          "Schritt 1:\nOperation in Rückenlage auf dem Extensionstisch und geschlossene Reposition der Fraktur unter Extension.",
          "Schritt 2:\nInzision proximal des Trochanter major und Präparation bis auf die Trochanterspitze.",
          "Schritt 3:\nEinbringen des Führungsdrahtes in den Markraum mittels T-Handgriff. Der optimale Insertionspunkt liegt in a.–p. Projektion auf der Trochanterspitze und im axialen Strahlengang leicht ventral der Schaftachse zum Ausgleich der Antekurvation.",
          "Schritt 4:\nAufbohren der Kortikalis und Markraums.",
          "Schritt 5:\nDer am Zielbügel montierte Nagel wird manuell vorsichtig möglichst tief in das Femur eingebracht. Leicht drehende Handbewegungen unterstützen das Einbringen. Eventuell kann die Insertion durch leichte Schläge mit dem Kunststoffhammer auf die Schutzplatte des Zielbügels unterstützt werden.",
          "Schritt 6:\nEinbringen der Hüftgleitschraube und der Schenkelhalsschraube.",
          "Schritt 7:\nIn der axialen Ebene müssen die Führungsdrähte parallel zur Schenkelhalsachse und möglichst zentral zu liegen kommen.",
          "Schritt 8:\nLängenmessung der Schenkelhalsschraube.",
          "Schritt 9:\nDie distale Verriegelung erfolgt in der Regel mit einem einzigen, statischen Verriegelungsbolzen",
        ],
        "table": true,
        "tabledata": [
          {
            "r1": "",
            "r2": "",
            "r3": "Führungsdraht für Schenkelhalsschraube muss in beiden Röntgenebenen zentral im Schenkelhals und v.a. mittig im Hüftkopf liegen"
          },
        ],
        "tablenext" : false,
      }
    ],
  };

  static var anatomyData = [
    {
      "name":"Ubersicht Anatomie",
      "images":[
        AppImage.anatomie,
        AppImage.anatomie2,
        AppImage.anatomie3,
        AppImage.anatomie4,
        AppImage.anatomie5,
        AppImage.anatomie6,
        AppImage.anatomie7,
        AppImage.anatomie8,
      ]
    },
    {
      "name":"Arterielle BGA",
      "images":[
        AppImage.arterielleBga
      ]
    },
    {
      "name":"Port-a-Cath Implantation V. cephalica",
      "images":[
        AppImage.portaCathImplantationVcephalica
      ]
    },
    {
      "name":"Laparoskopische Appendektomie",
      "images":[
        AppImage.laparoskopischeAppendektomie
      ]
    },
    {
      "name":"Laparoskopische Cholezystektomie",
      "images":[
        AppImage.clipOnDerACysticaDuctusCysticus,
        AppImage.durchtrennungDesDuctusCysticus,
        AppImage.durchtrennterDuctusUndArterie,
        AppImage.gallen,
      ]
    },
    {
      "name":"Proktologie",
      "images":[
        AppImage.ethiconCircularStapler,
        AppImage.hica,
      ]
    },
    {
      "name":"Oesophagus / Magen",
      "images":[
        AppImage.zwerchFellSchenkelRechtSundLinks,
        AppImage.knsr,
      ]
    },
    {
      "name":"Thoraxdrainage-Einlage",
      "images":[
        AppImage.thoraxdrainageEinlage,
      ]
    },
    {
      "name":"Bursektomie Ellenbogen",
      "images":[
        AppImage.busra,
      ]
    }
  ];

  static List<String> chapterList = [
    "Gefasseingriffe",
    "Appendix/ Gallenblase",
    "Abdominalhernien",
    "Proktologie",
    "Dunndarm / Kolon / Rektum",
    "Oesophagus / Magen",
    "Endokrine Chirurgie",
    "Thoraxchirurgie",
    "Notfallchirurgie / Traumatologie"
  ];

 static  List<String> additionalOptList = [
    "Kontaktiere uns",
    "Uber uns",
   "Legal",
   "Datenschutz",
  ];

 static Map<int,dynamic> subchapterList =
 {
   0:[
     "1.1  Arterielle BGA ",
     "1.2 Port-a-Cath Implantation V. cephalica"
   ],
   1:[
     "2.1 Laparoskopische Appendektomie",
     "2.2 Laparoskopische Cholezystektomie",
     "2.3  Lap. Cholezystektomie mit Cholangiographie"
   ],
   2:[
     "3.1 Laparoskopische Hernienplastik TEPP",
     "3.2 Laparoskopische Hernienplastik TAPP",
     "3.3 Umbilicalhernienplastik",
     "3.4 Inguinalhernienplastik nach Lichtenstein"
   ],
   3:[
     "4.1 Mukopexie nach Longo",
     "4.2 Mariskenresektion",
     "4.3 Exzision Sinus Pilonidalis",
   ],
   4:[
     "5.1 Dünndarmsegmentresektion",
     "5.2 Laparoskopische Hemikolektomie rechts",
     "5.3 Laparoskopische Sigmaresektion",
     "5.4 Lap. Rektosigmoidresektion",
   ],
   5:[
     "6.1 Lap. Fundoplicatio",
     "6.2 Lap. Magenbypass (Roux-Y)",
     "6.3 Lap. Sleeve Gastrektomie",
   ],
   6:[
     "7.1 Totale Thyreoidektomie",
     "7.2 Hemithyreoidektomie links / rechts",
     "7.3 Splenektomie",
   ],
   7:[
     "8.1 Thoraxdrainage-Einlage",
     "8.2 Tracheotomie",
     "8.3 Thorakoskopie Wedge Resektion",
   ],
   8:[
     "9.1 Kompartment / Logenspaltung",
     "9.2 Zehenamputation",
     "9.3 Cistofix Anlage",
     "9.4 Achillessehnennaht",
     "9.5 Bursektomie Ellenbogen",
     "9.6 Fixateur externe",
     "9.7 Proximaler Femurnagel",
   ]
 };

}

Map urlNameAddressMap = {
  'legal': 'https://medtronicsustainability.com/kontakt/',
  'datenschutz': 'https://medtronicsustainability.com/datenschutzerklarung/',
  'contactAndSupport': 'https://medtronicsustainability.com/kontakt/',
};





