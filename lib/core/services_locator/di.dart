import 'package:e_commerce/app/featcures/auth/data/datasource.dart';
import 'package:e_commerce/app/featcures/auth/data/repository.dart';
import 'package:e_commerce/app/featcures/auth/domain/repository.dart';
import 'package:e_commerce/app/featcures/auth/domain/usecase.dart';
import 'package:e_commerce/app/featcures/auth/presentation/bloc/login_bloc.dart';
import 'package:get_it/get_it.dart';

GetIt sl = GetIt.instance;

class ServicesLocator {
  void init() {
    // bloc
    
    sl.registerFactory<AuthBloc>(() => AuthBloc(loginUseCase: sl()));
    // Repository
    sl.registerLazySingleton<AuthBaseRepository>(
        () => AuthRepository(authBaseDataSource: sl()));
    // dataSource
    sl.registerLazySingleton<AuthBaseDataSource>(() => AuthRemoteDataSource());
    // Usecase
    sl.registerLazySingleton(() => LoginUseCase(authBaseRepository: sl()));
  }
}
