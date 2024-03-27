import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mb_app/bloc/cart_bloc.dart';
import 'package:mb_app/model/cart_item.dart';
import 'package:provider/provider.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder<List<CartItem>>(
        stream: Provider.of<CartBloc>(context, listen: false).cartItemStream,
        builder: (context, snapshot) {
          if (!snapshot.hasData || snapshot.data!.isEmpty) {
            return const Center(
              child: Text("Your cart is empty"),
            );
          } else {
            final cartItems = snapshot.data!;
            return ListView.builder(
              itemCount: cartItems.length,
              itemBuilder: (context, index) {
                return Dismissible(
                  key: Key(cartItems[index].id.toString()),
                  onDismissed: (direction) {
                    Provider.of<CartBloc>(context, listen: false).removeCart(cartItems[index] as int);
                  },
                  background: Container(
                    color: Colors.red,
                    alignment: Alignment.centerRight,
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: const Icon(
                      Icons.delete,
                      color: Colors.white,
                    ),
                  ),
                  child: ListTile(
                    contentPadding: const EdgeInsets.symmetric(vertical: 8),
                    leading: SizedBox(
                      width: 100,
                      height: 100,
                      child: Image.network(
                        cartItems[index].thumbnail,
                        fit: BoxFit.cover,
                      ),
                    ),
                    title: Text(cartItems[index].title),
                  ),
                );
              },
            );
          }
        },
      ),
    );
  }
}
