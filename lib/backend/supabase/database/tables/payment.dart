import '../database.dart';

class PaymentTable extends SupabaseTable<PaymentRow> {
  @override
  String get tableName => 'payment';

  @override
  PaymentRow createRow(Map<String, dynamic> data) => PaymentRow(data);
}

class PaymentRow extends SupabaseDataRow {
  PaymentRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => PaymentTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);
}
