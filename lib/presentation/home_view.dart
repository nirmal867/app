import 'package:dashboard_app/data/data_sources/office_remote_data_source.dart';
import 'package:dashboard_app/data/repositories/officeRepositoryImpl.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:http/http.dart' as http;

import 'cubit/dashboard_cubit.dart';
import 'widgets/widgets.dart';

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    final titleHeight = 100.0;
    final bodyHeight = screenHeight - 100.0;
    return Scaffold(
      // backgroundColor: Color.fromARGB(255, 35, 40, 50),
      body: Container(
        height: screenHeight,
        width: screenWidth,
        child: Column(
          children: [
            Flexible(
                flex: 5,
                child: BlocProvider(
                  create: (context) => DashboardCubit(OfficeRepositoryImp(
                      OfficeRemoteDataSource(http.Client())))
                    ..fetchOffice(),
                  child: Header(),
                )),
            Flexible(flex: 15, child: Body()),
            Flexible(flex: 1, child: Footer())
          ],
        ),
      ),
    );
  }
}
