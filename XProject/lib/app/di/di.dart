import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

import 'di.config.dart';

final getIt = GetIt.instance;

@InjectableInit(
  initializerName: r'$initGetIt', // default
  preferRelativeImports: true, // default
  asExtension: false, // default
)
void configureDependencies() => $initGetIt(getIt);


// @injectable
// @singleton
// @lazySingleton
// @factoryMethod 
// @module
// @Injectable(as: ServiceABC)
//@Singleton(as: ServiceAVC)    
// @LazySingleton(as: Serviceabb)
// @Environment("dev") 
// 