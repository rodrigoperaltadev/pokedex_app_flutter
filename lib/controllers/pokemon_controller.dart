import 'package:get/get.dart';
import 'package:pokedex_coco_version/models/models.dart';
import 'package:pokedex_coco_version/services/services.dart';

class PokemonController extends GetxController {
  @override
  void onInit() {
    super.onInit();
    fetchPokemonList();
  }

  RxList<Pokemon> pokemons = <Pokemon>[].obs;
  RxInt limit = 20.obs;
  RxInt currentOffset = 0.obs;
  RxBool isLoading = false.obs;
  RxBool isError = false.obs;

  get firstFetching {
    return pokemons.isEmpty && isLoading.value;
  }

  fetchPokemonList() async {
    try {
      isError.value = false;
      isLoading.value = true;
      final pokemons = await PokemonService().getPokemons(currentOffset.string);
      this.pokemons.value = [...this.pokemons, ...pokemons];
      currentOffset.value = currentOffset.value + limit.value;
    } catch (e) {
      isError.value = true;
    } finally {
      isLoading.value = false;
    }
  }
}
