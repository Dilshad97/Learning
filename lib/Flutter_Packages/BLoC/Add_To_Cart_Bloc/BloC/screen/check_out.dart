import 'package:flutter/material.dart';
import 'package:learning/Flutter_Packages/BLoC/Add_To_Cart_Bloc/BloC/cart_item_bloc.dart';

class Checkout extends StatelessWidget {
  Widget build(BuildContext context) {
    final bloc = CartItemsBloc();

    return Scaffold(
      appBar: AppBar(title: Text('Checkout')),
      body: StreamBuilder(
        stream: bloc.getStream,
        initialData: bloc.allItems,
        builder: (context, snapshot) {
          return Column(
            children: <Widget>[
              /// The [checkoutListBuilder] has to be fixed
              /// in an expanded widget to ensure it
              /// doesn't occupy the whole screen and leaves
              /// room for the the RaisedButton
              Expanded(child: checkoutListBuilder(snapshot)),
              RaisedButton(
                onPressed: () {},
                child: Text("Checkout"),
                color: Theme.of(context).primaryColor,
              ),
              SizedBox(height: 40)
            ],
          );
        },
      ),
    );
  }
}

Widget checkoutListBuilder(snapshot) {
  final bloc = CartItemsBloc();
  return ListView.builder(
    itemCount: snapshot.data["cart items"].length,
    itemBuilder: (BuildContext context, i) {
      final cartList = snapshot.data["cart items"];
      return ListTile(
        title: Text(cartList[i]['name']),
        subtitle: Text("\$${cartList[i]['price']}"),
        trailing: IconButton(
          icon: Icon(Icons.remove_shopping_cart),
          onPressed: () {
            bloc.removeFromCart(cartList[i]);
          },
        ),
        onTap: () {},
      );
    },
  );
}
