import 'package:get/get.dart';

class MyController extends GetxController {
  final _titulo = 'Curriculum Vitae V2 - ADSO'
      .obs; //definimos una variable tipo string con un observable para verificar cambios dentro de la aplicacion y poder impactar o actualizar algun widget o componente en nustra app
  final _listaExperienciaLaboral = [].obs;
  final _listaEducacionFormal = [].obs;
  final _listaFormacionContinuada = [].obs;

  /// ***********************************************
  void cambiarTitulo(String item) {
    _titulo.value = item;
  }

  /// *******************************************************************
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

  /// ********************************************************************

  void addItemListaEducacionFormal(Map<String, dynamic> item) {
    _listaEducacionFormal.add(item);
  }

  void cambiarListaEducacionFormal(List item) {
    _listaEducacionFormal.value = item;
  }

  void removeItemListaEducacionFormal(int index) {
    _listaEducacionFormal.removeAt(index);
  }

  void editItemListaEducacionFormal(int index, Map itemEdit) {
    _listaEducacionFormal[index] = itemEdit;
  }

  /// ********************************************************************

  void addItemListaFormacionContinuada(Map<String, dynamic> item) {
    _listaFormacionContinuada.add(item);
  }

  void cambiarListaFormacionContinuada(List item) {
    _listaFormacionContinuada.value = item;
  }

  void removeItemListaFormacionContinuada(int index) {
    _listaFormacionContinuada.removeAt(index);
  }

  void editItemListaFormacionContinuada(int index, Map itemEdit) {
    _listaFormacionContinuada[index] = itemEdit;
  }

  String get Titulo => _titulo.value;

  List get ListaExperienciaLab => _listaExperienciaLaboral.value;
  List get ListaEducacionFormal => _listaEducacionFormal.value;
  List get ListaFormacionContinuada => _listaFormacionContinuada.value;
}
