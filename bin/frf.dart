import 'fake_api_provider.dart';
void main() async {
  final provider = Provider();
  final result = await provider.getList();
  result.forEach((cart){
    print(cart);
  });
}
