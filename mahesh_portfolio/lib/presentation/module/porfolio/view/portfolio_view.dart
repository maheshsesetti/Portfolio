import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mahesh_portfolio/const/lang/eng_lang.dart';
import 'package:mahesh_portfolio/presentation/module/porfolio/bloc/portfolio_bloc.dart';
import 'package:mahesh_portfolio/presentation/module/porfolio/bloc/portfolio_state.dart';


class PortfolioView extends StatelessWidget {
  const PortfolioView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(AppLang.appTitle),
        ),
        body: BlocConsumer<PortfolioBloc, PortfolioState>(
            buildWhen: (ctx, state) {
          return state is PortfolioInitial || state is PortfolioLoaded;
        }, builder: (ctx, state) {
          if (state is PortfolioInitial) {
            return const Center(child: Text("PortfolioInitial"));
          } else if (state is PortfolioLoaded) {
            return const Center(child: Text("PortfolioLoaded"));
          } else {
            return const Text("some thing went wrong");
          }
        }, listenWhen: (ctx, state) {
          return state is PortfolioInitial || state is PortfolioLoaded;
        }, listener: (ctx, state) {
          if (state is PortfolioInitial) {
            ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
              content: Text("Sending Message PortfolioInitial"),
            ));
          } else if (state is PortfolioLoaded) {
            ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
              content: Text("Sending Message PortfolioLoaded"),
            ));
          }
        }));
  }
}
