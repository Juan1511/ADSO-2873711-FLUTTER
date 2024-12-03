import 'package:get/get.dart';

class MyController extends GetxController {
  final _titulo = 'Curriculum Vitae V2 - ADSO'
      .obs; //definimos una variable tipo string con un observable para verificar cambios dentro de la aplicacion y poder impactar o actualizar algun widget o componente en nustra app
  final _listaExperienciaLaboral = [].obs;

  void cambiarTitulo(String item) {
    _titulo.value = item;
  }

  void addItemListaExperienciaLaboral(Map<String, dynamic> item) {
    _listaExperienciaLaboral.add(item);
  }

  void cambiarListaExperienciaLaboral(List item) {
    _listaExperienciaLaboral.value = item;
  }

  void removeItemListaExperienciaLaboral(int index) {
    _listaExperienciaLaboral.removeAt(index);
  }

  void editItemListaExperienciaLaboral(int index, Map itemEdit) {
    _listaExperienciaLaboral[index] = itemEdit;
  }

  String get Titulo => _titulo.value;
  List get ListaExperienciaLab => _listaExperienciaLaboral.value;
}
