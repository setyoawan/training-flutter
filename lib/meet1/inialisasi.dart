import 'package:flutter/material.dart';

class container extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("SFA Meet 02 - Container")),
        body: Center(
          child: ContainerDemo(),
        ),
      ),
    );
  }
}

class ContainerDemo extends StatefulWidget {
  const ContainerDemo({Key? key}) : super(key: key);

  @override
  _ContainerDemoState createState() => _ContainerDemoState();
}

class _ContainerDemoState extends State<ContainerDemo> {
  @override
  Widget build(BuildContext context) {
    var _listContainer = [
      Container(),
      Container(color: Colors.red),
      Container(color: Colors.blue, width: 100, height: 30),
      Container(
        color: Colors.blue,
        width: 100,
        height: 30,
        child: Container(color: Colors.red, width: 100, height: 0),
      ),
      Container(
        color: Colors.blue,
        width: 100,
        height: 10,
        padding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
        child: Container(color: Colors.black, width: 100, height: 10),
      ),
      Container(
        color: Colors.yellow,
        width: 100,
        // height: 10, //mempengaruhi konten child
        padding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
        child: Container(color: Colors.green, width: 100, height: 10),
      ),
      Container(
        color: Colors.red,
        margin: EdgeInsets.all(16),
        padding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
        child: Container(color: Colors.green, width: 100, height: 10),
      ),
      Container(
        constraints: BoxConstraints.expand(
          height:
              Theme.of(context).textTheme.headline4!.fontSize! * 1.1 + 200.0,
        ),
        padding: const EdgeInsets.all(8.0),
        color: Colors.blue[600],
        alignment: Alignment.center,
        child: Text('Flutter',
            style: Theme.of(context)
                .textTheme
                .headline4!
                .copyWith(color: Colors.white)),
        transform: Matrix4.rotationZ(0.1),
      ),
      Container(
        constraints: BoxConstraints.expand(
          height:
              Theme.of(context).textTheme.headline4!.fontSize! * 1.1 + 200.0,
        ),
        padding: const EdgeInsets.all(8.0),
        color: Colors.green[600],
        alignment: Alignment.center,
        child: Text('Academy',
            style: Theme.of(context)
                .textTheme
                .headline4!
                .copyWith(color: Colors.white)),
        transform: Matrix4.rotationZ(-(3 * 3.14 / 180)),
      ),
    ];

    return ListView(
      children: _listContainer,
    );
  }
}

// Text ==============================

class cobaText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("SFA Meet 02 - Text")),
        body: Center(
          child: TypographyDemo(),
        ),
      ),
    );
  }
}

class TypographyDemo extends StatelessWidget {
  const TypographyDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var _listText = [
      Text(
        'Flutter Academy',
        style: Theme.of(context).textTheme.bodyText2?.copyWith(
              color: Colors.red,
            ),
      ),
      Text(
        'Flutter Academy',
        style: Theme.of(context).textTheme.bodyText2?.copyWith(
              fontStyle: FontStyle.normal,
            ),
      ),
      Text(
        'Flutter Academy',
        style: Theme.of(context).textTheme.bodyText2?.copyWith(
              fontWeight: FontWeight.bold,
            ),
      ),
      Text(
        'Flutter Academy',
        style: Theme.of(context).textTheme.bodyText2?.copyWith(
              fontStyle: FontStyle.italic,
            ),
      ),
    ];

    final textTheme = Theme.of(context).textTheme;
    final styleItems = [
      Text(
        'Light 96sp',
        style: textTheme.headline1?.copyWith(
            // color: Colors.pink,
            // fontWeight: FontWeight.bold,
            // fontStyle: FontStyle.italic,
            // decoration: TextDecoration.lineThrough,
            // decoration: TextDecoration.overline,
            // decoration: TextDecoration.combine([
            //   TextDecoration.lineThrough,
            //   TextDecoration.underline,
            // ]),
            ),
      ),
      Text(
        'Light 60sp',
        style: textTheme.headline2,
      ),
      Text(
        'Regular 48sp',
        style: textTheme.headline3,
      ),
      Text(
        'Regular 34sp',
        style: textTheme.headline4,
      ),
      Text(
        'Regular 24sp',
        style: textTheme.headline5,
      ),
      Text(
        'Medium 20sp',
        style: textTheme.headline6,
      ),
      Text(
        'Regular 16sp',
        style: textTheme.subtitle1,
      ),
      Text(
        'Medium 14sp',
        style: textTheme.subtitle2,
      ),
      Text(
        'Regular 16sp',
        style: textTheme.bodyText1,
      ),
      Text(
        'Regular 14sp',
        style: textTheme.bodyText2,
      ),
      Text(
        'MEDIUM (ALL CAPS) 14sp',
        style: textTheme.button,
      ),
      Text(
        'Regular 12sp',
        style: textTheme.caption,
      ),
      Text(
        'REGULAR (ALL CAPS) 10sp',
        style: textTheme.overline,
      ),
      Text(
        List.generate(5, (index) => 'Lorem ipsum dolor si amet').join(' '),
        // textAlign: TextAlign.center,
        // textAlign: TextAlign.right,
        textAlign: TextAlign.justify,
        // overflow: TextOverflow.ellipsis,
        overflow: TextOverflow.fade,
        maxLines: 4,
        style: TextStyle(
          fontFamily: 'TegakBersambung',
          fontSize: 24,
        ),
      ),
      RichText(
        softWrap: true,
        // maxLines: 1,
        textAlign: TextAlign.justify,
        text: TextSpan(
          children: [
            TextSpan(
              text: 'SISI',
              style: TextStyle(color: Colors.red),
            ),
            TextSpan(
              text: ' Flutter ',
              style: TextStyle(color: Colors.green),
            ),
            TextSpan(
              text: 'Academy ',
              style: TextStyle(color: Colors.blue),
            ),
            TextSpan(
              text: List.generate(5, (index) => 'Lorem ipsum dolor si amet')
                  .join(' '),
              style: TextStyle(color: Colors.black),
            ),
          ],
        ),
      ),
      Container(
        padding: EdgeInsets.symmetric(horizontal: 16),
        child: RichText(
          softWrap: true,
          // maxLines: 1,
          textAlign: TextAlign.justify,
          text: TextSpan(
            children: [
              TextSpan(
                text: 'SISI',
                style: TextStyle(color: Colors.red),
              ),
              TextSpan(
                text: ' Flutter ',
                style: TextStyle(color: Colors.green),
              ),
              TextSpan(
                text: 'Academy ',
                style: TextStyle(color: Colors.blue),
              ),
              TextSpan(
                text: List.generate(3, (index) => 'Lorem ipsum dolor si amet')
                    .join(' '),
                style: TextStyle(color: Colors.black),
              ),
            ],
          ),
        ),
      ),
      RichText(
        text: TextSpan(children: [
          TextSpan(text: '9:30 - 2:30', style: TextStyle(color: Colors.black)),
          WidgetSpan(
            child: Transform.translate(
              offset: const Offset(2, -6),
              child: Text(
                '+2',
                //superscript is usually smaller in size
                textScaleFactor: 0.7,
                style: TextStyle(color: Colors.red),
              ),
            ),
          )
        ]),
      ),
      RichText(
        text: TextSpan(children: [
          TextSpan(text: '9:30 - 2:30', style: TextStyle(color: Colors.black)),
          WidgetSpan(
            child: Transform.translate(
              offset: const Offset(2, 0),
              child: Text(
                '+2',
                //superscript is usually smaller in size
                textScaleFactor: 0.7,
                style: TextStyle(color: Colors.red),
              ),
            ),
          ),
        ]),
      )
    ];

    return ListView(children: styleItems);
  }
}

// Image ===============================

class cobaImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("SFA Meet 02 - Image")),
        body: Center(
          child: ImageDemo(),
        ),
      ),
    );
  }
}

class ImageDemo extends StatefulWidget {
  const ImageDemo({Key? key}) : super(key: key);

  @override
  _ImageDemoState createState() => _ImageDemoState();
}

class _ImageDemoState extends State<ImageDemo> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        FlutterLogo(size: 100),
        Center(
          child: Image(
            // image: AssetImage('assets/images/img_catalina.png'),
            image: NetworkImage('https://picsum.photos/300/160'),
          ),
        ),
        CircleAvatar(
          // backgroundImage: AssetImage('assets/images/img_catalina.png'),
          backgroundImage: NetworkImage('https://picsum.photos/300/160'),
          radius: 84,
        ),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 32),
          child: Image.network(
            'https://picsum.photos/300/160',
          ),
          // child: Image.asset(
          //   'assets/images/img_logo_forca.png',
          // ),
        ),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 32),
          child: Image.network(
            'https://pos.forca.id/themes/default/assets/images/Logo_default.png',
            color: Colors.green,
          ),
          // child: Image.asset(
          //   'assets/images/img_logo_forca.png',
          //   color: Colors.green,
          // ),
        ),
      ],
    );
  }
}

// Icon =============================

class cobaIcon extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("SFA Meet 02 - Icon")),
        body: Center(
          child: IconDemo(),
        ),
      ),
    );
  }
}

class IconDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Icon(
          Icons.mail,
        ),
        Icon(
          Icons.call,
          size: 64,
        ),
        Icon(
          Icons.people,
          size: 64,
          color: Colors.green,
        ),
        Icon(
          Icons.call,
          semanticLabel: 'tes',
          size: 64,
          color: Colors.green,
          textDirection: TextDirection.ltr,
        ),
        Icon(
          Icons.call,
          semanticLabel: 'tes',
          size: 64,
          color: Colors.orange,
          textDirection: TextDirection.rtl,
        ),
        /*
        Icon(
          MyIcons.home,
          semanticLabel: 'tes',
          size: 64,
          color: Colors.green,
          textDirection: TextDirection.rtl,
        ),
        Icon(
          MyIcons.home_outline,
          semanticLabel: 'tes',
          size: 64,
          color: Colors.green,
          textDirection: TextDirection.rtl,
        ),
        Icon(
          MyIcons.whatsapp_icon,
          semanticLabel: 'tes',
          size: 64,
          color: Colors.blue,
          textDirection: TextDirection.rtl,
        ),
        */
      ],
    );
  }
}

// Card ============================

class cobaCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("SFA Meet 02 - Card")),
        body: Center(
          child: CardsDemo(),
        ),
      ),
    );
  }
}

enum CardType {
  standard,
  tappable,
  selectable,
}

class TravelDestination {
  const TravelDestination({
    @required this.assetName,
    @required this.assetPackage,
    @required this.title,
    @required this.description,
    @required this.city,
    @required this.location,
    this.cardType = CardType.standard,
  })  : assert(assetName != null),
        assert(assetPackage != null),
        assert(title != null),
        assert(description != null),
        assert(city != null),
        assert(location != null);

  final String? assetName;
  final String? assetPackage;
  final String? title;
  final String? description;
  final String? city;
  final String? location;
  final CardType? cardType;
}

List<TravelDestination> destinations(BuildContext context) => [
      TravelDestination(
        assetName: 'places/india_thanjavur_market.png',
        assetPackage: '_kGalleryAssetsPackage',
        title:
            'GalleryLocalizations.of(context).cardsDemoTravelDestinationTitle1',
        description:
            'GalleryLocalizations.of(context).cardsDemoTravelDestinationDescription1',
        city:
            'GalleryLocalizations.of(context).cardsDemoTravelDestinationCity1',
        location:
            'GalleryLocalizations.of(context).cardsDemoTravelDestinationLocation1',
      ),
      TravelDestination(
        assetName: 'places/india_chettinad_silk_maker.png',
        assetPackage: '_kGalleryAssetsPackage',
        title:
            'GalleryLocalizations.of(context).cardsDemoTravelDestinationTitle2',
        description:
            'GalleryLocalizations.of(context).cardsDemoTravelDestinationDescription2',
        city:
            'GalleryLocalizations.of(context).cardsDemoTravelDestinationCity2',
        location:
            'GalleryLocalizations.of(context).cardsDemoTravelDestinationLocation2',
        cardType: CardType.tappable,
      ),
      TravelDestination(
        assetName: 'places/india_tanjore_thanjavur_temple.png',
        assetPackage: '_kGalleryAssetsPackage',
        title:
            'GalleryLocalizations.of(context).cardsDemoTravelDestinationTitle3',
        description:
            'GalleryLocalizations.of(context).cardsDemoTravelDestinationDescription3',
        city:
            'GalleryLocalizations.of(context).cardsDemoTravelDestinationCity1',
        location:
            'GalleryLocalizations.of(context).cardsDemoTravelDestinationLocation1',
        cardType: CardType.selectable,
      ),
    ];

class CardsDemo extends StatefulWidget {
  const CardsDemo({Key? key}) : super(key: key);

  @override
  _CardsDemoState createState() => _CardsDemoState();
}

class _CardsDemoState extends State<CardsDemo> {
  bool _isSelected = false;

  Widget _sectionTitle({String? title}) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(4, 4, 4, 12),
      child: Align(
        alignment: Alignment.centerLeft,
        child: Text(title ?? 'title',
            style: Theme.of(context).textTheme.subtitle1),
      ),
    );
  }

  Widget _content({TravelDestination? destination}) {
    final theme = Theme.of(context);
    final titleStyle = theme.textTheme.headline5?.copyWith(color: Colors.white);
    final descriptionStyle = theme.textTheme.subtitle1;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 184,
          child: Stack(
            children: [
              Positioned.fill(
                child: Ink.image(
                  image: NetworkImage(
                    'https://picsum.photos/300/160',
                  ),
                  // image: AssetImage(
                  //   'assets/images/img_catalina.png',
                  //   // package: 'destination.assetPackage',
                  // ),
                  fit: BoxFit.cover,
                  child: Container(),
                ),
              ),
              Positioned(
                bottom: 16,
                left: 16,
                right: 16,
                child: FittedBox(
                  fit: BoxFit.scaleDown,
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'Catalina',
                    style: titleStyle,
                  ),
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(16, 16, 16, 0),
          child: DefaultTextStyle(
            softWrap: false,
            overflow: TextOverflow.ellipsis,
            style: descriptionStyle ?? TextStyle(),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: Text(
                    '25 km',
                    style: descriptionStyle?.copyWith(color: Colors.black54),
                  ),
                ),
                Text('Nganjuk'),
                Text('Indonesia'),
              ],
            ),
          ),
        ),
        if (destination?.cardType == CardType.standard)
          ButtonBar(
            alignment: MainAxisAlignment.start,
            children: [
              TextButton(
                onPressed: () {},
                child: Text('Bagikan', semanticsLabel: 'Bagikan'),
              ),
              TextButton(
                onPressed: () {},
                child: Text('Temukan', semanticsLabel: 'Temukan'),
              ),
            ],
          ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

    var _listCard = [
      Card(
        child: Container(
          margin: EdgeInsets.all(16),
          child: Text('Flutter Academy'),
        ),
      ),
      Card(
        margin: EdgeInsets.all(16),
        child: Container(
          margin: EdgeInsets.all(16),
          child: Text('Flutter Academy'),
        ),
      ),
      Card(
        margin: EdgeInsets.all(16),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        child: Container(
          margin: EdgeInsets.all(16),
          child: Text('Flutter Academy'),
        ),
      ),
      Card(
        margin: EdgeInsets.all(16),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.zero),
        child: Container(
          margin: EdgeInsets.all(16),
          child: Text('Flutter Academy'),
        ),
      ),
      Card(
        margin: EdgeInsets.all(16),
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.zero)),
        child: Container(
          margin: EdgeInsets.all(16),
          child: Text('Flutter Academy'),
        ),
      ),
      Card(
        margin: EdgeInsets.all(16),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(top: Radius.circular(20))),
        child: Container(
          margin: EdgeInsets.all(16),
          child: Text('Flutter Academy'),
        ),
      ),
    ];

    var view = ListView(
      padding: const EdgeInsets.only(top: 8, left: 8, right: 8),
      children: [
        _sectionTitle(title: 'Normal'),
        SizedBox(
          height: 360,
          child: Card(
            clipBehavior: Clip.antiAlias,
            child: _content(destination: destinations(context)[0]),
          ),
        ),
        SizedBox(height: 8),
        _sectionTitle(title: 'Dapat diketuk'),
        SizedBox(
          height: 298,
          child: Card(
            child: InkWell(
              onTap: () {},
              splashColor:
                  Theme.of(context).colorScheme.onSurface.withOpacity(0.12),
              highlightColor: Colors.transparent,
              child: _content(destination: destinations(context)[1]),
            ),
          ),
        ),
        SizedBox(height: 8),
        _sectionTitle(title: 'Dapat dipilih (tekan lama)'),
        SizedBox(
          height: 298,
          child: Card(
            clipBehavior: Clip.antiAlias,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30),
            ),
            child: InkWell(
              onLongPress: () {
                setState(() {
                  _isSelected = !_isSelected;
                });
              },
              splashColor: colorScheme.onSurface.withOpacity(0.12),
              highlightColor: Colors.transparent,
              child: Stack(
                children: [
                  Container(
                    color: _isSelected == true
                        ? colorScheme.primary.withOpacity(0.08)
                        : Colors.transparent,
                  ),
                  _content(destination: destinations(context)[2]),
                  Align(
                    alignment: Alignment.topRight,
                    child: Padding(
                      padding: const EdgeInsets.all(8),
                      child: Icon(
                        Icons.check_circle,
                        color: _isSelected == true
                            ? colorScheme.primary
                            : Colors.transparent,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );

    return view;
  }
}
