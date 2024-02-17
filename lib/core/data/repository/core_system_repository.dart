import 'package:alabs_flutter_core/core/data/dataSource/secure_data_source.dart';
import 'package:injectable/injectable.dart';

@injectable
class CoreSystemRepository {
  CoreSystemRepository(this._dataSource);

  final SecureDataSource _dataSource;

  void setLanguageCode(String code) => _dataSource.saveLanguageCode(code);

  String getLanguageCode() => _dataSource.getLanguageCode();
}