import '../database.dart';

class HistoryTable extends SupabaseTable<HistoryRow> {
  @override
  String get tableName => 'history';

  @override
  HistoryRow createRow(Map<String, dynamic> data) => HistoryRow(data);
}

class HistoryRow extends SupabaseDataRow {
  HistoryRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => HistoryTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);
}
