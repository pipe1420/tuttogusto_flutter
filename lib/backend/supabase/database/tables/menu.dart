import '../database.dart';

class MenuTable extends SupabaseTable<MenuRow> {
  @override
  String get tableName => 'menu';

  @override
  MenuRow createRow(Map<String, dynamic> data) => MenuRow(data);
}

class MenuRow extends SupabaseDataRow {
  MenuRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => MenuTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get name => getField<String>('name');
  set name(String? value) => setField<String>('name', value);

  String? get price => getField<String>('price');
  set price(String? value) => setField<String>('price', value);

  String? get image => getField<String>('image');
  set image(String? value) => setField<String>('image', value);

  String? get description => getField<String>('description');
  set description(String? value) => setField<String>('description', value);

  String? get type => getField<String>('type');
  set type(String? value) => setField<String>('type', value);
}
