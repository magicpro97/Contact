import '../sources/cache/cached_box.dart';
import 'base_repository.dart';

abstract class TokenRepository extends BaseRepository {
  final CachedBox _cachedBox;

  TokenRepository(this._cachedBox);

  Future<void> saveToken(String token);

  String getToken();
}

class TokenRepositoryImpl extends TokenRepository {
  TokenRepositoryImpl(CachedBox cachedBox) : super(cachedBox);

  @override
  String getToken() => _cachedBox.getToken();

  @override
  Future<void> saveToken(String token) => _cachedBox.saveToken(token);
}
