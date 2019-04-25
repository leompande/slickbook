import 'dart:async';

import 'package:flutter/material.dart';
import 'package:note_book/shared/constants.dart';
import 'package:zefyr/zefyr.dart';

class NoteUpdate extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Row(
            children: <Widget>[Text('${MAIN_TITLE}: ${UPDATE_NOTE_TITLE}')],
          ),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.settings),
              onPressed: () {},
            ),
          ]),
      body: FormEmbeddedScreen(),
    );
  }
}


class FormEmbeddedScreen extends StatefulWidget {
  @override
  _FormEmbeddedScreenState createState() => _FormEmbeddedScreenState();
}

class _FormEmbeddedScreenState extends State<FormEmbeddedScreen> {
  final ZefyrController _controller = ZefyrController(NotusDocument());
  final FocusNode _focusNode = new FocusNode();
  StreamSubscription<NotusChange> _sub;

  @override
  void initState() {
    super.initState();
    _sub = _controller.document.changes.listen((change) {
      print('${change.source}: ${change.hashCode}');
    });

//    // Start listening to changes
//    _controller.addListener((){
//      print("THIS ONE  HERE");
//      print(_controller.getSelectionStyle());
//      print(_controller.document);
//      _controller.
//    });
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    final form = ListView(
      children: <Widget>[
        buildEditor(size),
      ],
    );

    return Scaffold(
      resizeToAvoidBottomPadding: true,
      body: ZefyrScaffold(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: form,
        ),
      ),
    );
  }

  Widget buildEditor(deviceSize) {
    final theme = new ZefyrThemeData(
      toolbarTheme: ZefyrToolbarTheme.fallback(context).copyWith(
        color: Colors.grey.shade800,
        toggleColor: Colors.grey.shade900,
        iconColor: Colors.white,
        disabledIconColor: Colors.grey.shade500,
      ),
    );

    return ZefyrTheme(
      data: theme,
      child: ZefyrField(
        height: deviceSize.height*0.75,
        decoration: new InputDecoration.collapsed(hintText: ''),
        controller: _controller,
        focusNode: _focusNode,
        autofocus: true,
        imageDelegate: new CustomImageDelegate(),
        physics: ClampingScrollPhysics(),
      ),
    );
  }
}


/// Default image delegate only supports [FileImage]s.
class CustomImageDelegate extends ZefyrDefaultImageDelegate {
  @override
  Widget buildImage(BuildContext context, String imageSource) {
    // We use custom "asset" scheme to distinguish asset images from other files.
    if (imageSource.startsWith('asset://')) {
      final asset = new AssetImage(imageSource.replaceFirst('asset://', ''));
      return new Image(image: asset);
    } else {
      return super.buildImage(context, imageSource);
    }
  }
}

