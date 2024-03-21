
import 'package:amazon_api/bloc/amazon_bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../Repository/model_class/project_amazon.dart';

class Amazon extends StatefulWidget {
  const Amazon({super.key});

  @override
  State<Amazon> createState() => _AmazonState();
}

class _AmazonState extends State<Amazon> {

  @override


  late ProjectAmazon data;
  void initState() {
    BlocProvider.of<AmazonBloc>(context).add(FetchAmazon());
    // TODO: implement initState
    super.initState();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<AmazonBloc, AmazonState>(
        builder: (context, state) {
          if (state is AmazonBlocLoading) {
            return Center(
              child: CircularProgressIndicator(),
            );
          }
          if (state is AmazonBlocError) {
            return Center(
              child: Text("Error"),
            );
          }

          if (state is Amaz0nBlocloaded) {
            data = BlocProvider
                .of<AmazonBloc>(context)
                .amazon;
            return ListView.builder(itemCount: data.data?.products!.length,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    width: 350,color: Colors.white,
                    child: Column(children: [
                      Text(data.data!.products![index].asin.toString(),style: TextStyle(color: Colors.green,fontSize: 16,),),
                      Text(data.data!.products![index].productPrice.toString()),
                      Text(data.data!.products![index].productStarRating.toString(),style: TextStyle(fontSize: 15,color: Colors.orange),),
                      Image.network(data.data!.products![index].productPhoto.toString(),width: 400,height: 200,),
                    ],),
                  );
                });
          }else{
            return SizedBox(

            );
          }
        }),
    );
  }
}
