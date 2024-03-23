import 'package:Konet/core/domain/usecase/use_case.dart';
import 'package:Konet/domain/entity/post/post.dart';
import 'package:Konet/domain/repository/post/post_repository.dart';

class InsertPostUseCase extends UseCase<int, Post> {
  final PostRepository _postRepository;

  InsertPostUseCase(this._postRepository);

  @override
  Future<int> call({required params}) {
    return _postRepository.insert(params);
  }
}
