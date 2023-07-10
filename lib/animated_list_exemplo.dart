import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    home: AnimatedListExemplo(),
  ));
}

class AnimatedListExemplo extends StatefulWidget {
  const AnimatedListExemplo({super.key});

  @override
  _AnimatedListExemploState createState() => _AnimatedListExemploState();
}

class _AnimatedListExemploState extends State<AnimatedListExemplo> {
  final List<String> _listItems = [];
  final GlobalKey<AnimatedListState> _listKey = GlobalKey<AnimatedListState>();

  void _addItem() {
    //Adiciona e avisa que o item foi adicionado
    final int newIndex = _listItems.length;
    _listItems.add('Item $newIndex');
    _listKey.currentState?.insertItem(newIndex);
  }

  void _removeItem(int index) {
    //Remove e avisa que o item foi Removido
    _listKey.currentState?.removeItem(
      index,
      (context, animation) => const SizedBox.shrink(),
      duration: Duration(milliseconds: 500),
    );
    setState(() {
      _listItems.removeAt(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Animated List Example'),
      ),
      body: AnimatedList(
        key: _listKey,
        initialItemCount: _listItems.length,
        itemBuilder: (context, index, animation) {
          return _buildItem(_listItems[index], animation, index);
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _addItem,
        child: const Icon(Icons.add),
      ),
    );
  }

  Widget _buildItem(String item, Animation<double> animation, int index) {
    return SizeTransition(
      sizeFactor: animation,
      child: ListTile(
        title: Text(item),
        trailing: IconButton(
          icon: const Icon(Icons.delete),
          onPressed: () => _removeItem(index),
        ),
      ),
    );
  }
}
