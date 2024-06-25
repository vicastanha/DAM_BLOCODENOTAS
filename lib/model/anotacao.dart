class Anotacao {
  static const nome_tabela = 'anotacoes';
  static const campo_id = '_id';
  static const campo_titulo = 'titulo';
  static const campo_descricao = 'descricao';
  static const campo_latitude = 'latitude';
  static const campo_longitude = 'longitude';

  int? id;
  String titulo;
  String descricao;
  double? latitude;
  double? longitude;

  Anotacao({
    required this.id,
    required this.titulo,
    required this.descricao,
    this.latitude,
    this.longitude,
  });

  Map<String, dynamic> toMap() => <String, dynamic>{
    campo_id: id,
    campo_titulo: titulo,
    campo_descricao: descricao,
    campo_latitude: latitude,
    campo_longitude: longitude,
  };

  factory Anotacao.fromMap(Map<String, dynamic> map) => Anotacao(
    id: map[campo_id] is int ? map[campo_id] : null,
    titulo: map[campo_titulo] is String ? map[campo_titulo] : '',
    descricao: map[campo_descricao] is String ? map[campo_descricao] : '',
    latitude: map[campo_latitude] is double ? map[campo_latitude] : null,
    longitude: map[campo_longitude] is double ? map[campo_longitude] : null,
  );
}
