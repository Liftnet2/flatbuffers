// automatically generated by the FlatBuffers compiler, do not modify
// ignore_for_file: unused_import, unused_field, unused_element, unused_local_variable, constant_identifier_names

library keyword_test;

import 'dart:typed_data' show Uint8List;
import 'package:flat_buffers/flat_buffers.dart' as fb;

enum Abc {
  $void(0),
  where(1),
  stackalloc(2);

  final int value;
  const Abc(this.value);

  factory Abc.fromValue(int value) {
    switch (value) {
      case 0:
        return Abc.$void;
      case 1:
        return Abc.where;
      case 2:
        return Abc.stackalloc;
      default:
        throw StateError('Invalid value $value for bit flag enum');
    }
  }

  static Abc? _createOrNull(int? value) =>
      value == null ? null : Abc.fromValue(value);

  static const int minValue = 0;
  static const int maxValue = 2;
  static const fb.Reader<Abc> reader = _AbcReader();
}

class _AbcReader extends fb.Reader<Abc> {
  const _AbcReader();

  @override
  int get size => 4;

  @override
  Abc read(fb.BufferContext bc, int offset) =>
      Abc.fromValue(const fb.Int32Reader().read(bc, offset));
}

enum Public {
  NONE(0);

  final int value;
  const Public(this.value);

  factory Public.fromValue(int value) {
    switch (value) {
      case 0:
        return Public.NONE;
      default:
        throw StateError('Invalid value $value for bit flag enum');
    }
  }

  static Public? _createOrNull(int? value) =>
      value == null ? null : Public.fromValue(value);

  static const int minValue = 0;
  static const int maxValue = 0;
  static const fb.Reader<Public> reader = _PublicReader();
}

class _PublicReader extends fb.Reader<Public> {
  const _PublicReader();

  @override
  int get size => 4;

  @override
  Public read(fb.BufferContext bc, int offset) =>
      Public.fromValue(const fb.Int32Reader().read(bc, offset));
}

enum KeywordsInUnionTypeId {
  NONE(0),
  $static(1),
  internal(2);

  final int value;
  const KeywordsInUnionTypeId(this.value);

  factory KeywordsInUnionTypeId.fromValue(int value) {
    switch (value) {
      case 0:
        return KeywordsInUnionTypeId.NONE;
      case 1:
        return KeywordsInUnionTypeId.$static;
      case 2:
        return KeywordsInUnionTypeId.internal;
      default:
        throw StateError('Invalid value $value for bit flag enum');
    }
  }

  static KeywordsInUnionTypeId? _createOrNull(int? value) =>
      value == null ? null : KeywordsInUnionTypeId.fromValue(value);

  static const int minValue = 0;
  static const int maxValue = 2;
  static const fb.Reader<KeywordsInUnionTypeId> reader =
      _KeywordsInUnionTypeIdReader();
}

class _KeywordsInUnionTypeIdReader extends fb.Reader<KeywordsInUnionTypeId> {
  const _KeywordsInUnionTypeIdReader();

  @override
  int get size => 1;

  @override
  KeywordsInUnionTypeId read(fb.BufferContext bc, int offset) =>
      KeywordsInUnionTypeId.fromValue(const fb.Uint8Reader().read(bc, offset));
}

class KeywordsInTable {
  KeywordsInTable._(this._bc, this._bcOffset);
  factory KeywordsInTable(List<int> bytes) {
    final rootRef = fb.BufferContext.fromBytes(bytes);
    return reader.read(rootRef, 0);
  }

  static const fb.Reader<KeywordsInTable> reader = _KeywordsInTableReader();

  final fb.BufferContext _bc;
  final int _bcOffset;

  Abc get $is =>
      Abc.fromValue(const fb.Int32Reader().vTableGet(_bc, _bcOffset, 4, 0));
  Public get private =>
      Public.fromValue(const fb.Int32Reader().vTableGet(_bc, _bcOffset, 6, 0));
  int get type => const fb.Int32Reader().vTableGet(_bc, _bcOffset, 8, 0);
  bool get $default =>
      const fb.BoolReader().vTableGet(_bc, _bcOffset, 10, false);

  @override
  String toString() {
    return 'KeywordsInTable{\$is: ${$is}, private: $private, type: $type, \$default: ${$default}}';
  }

  KeywordsInTableT unpack() => KeywordsInTableT(
      $is: $is, private: private, type: type, $default: $default);

  static int pack(fb.Builder fbBuilder, KeywordsInTableT? object) {
    if (object == null) return 0;
    return object.pack(fbBuilder);
  }
}

class KeywordsInTableT implements fb.Packable {
  Abc $is;
  Public private;
  int type;
  bool $default;

  KeywordsInTableT(
      {this.$is = Abc.$void,
      this.private = Public.NONE,
      this.type = 0,
      this.$default = false});

  @override
  int pack(fb.Builder fbBuilder) {
    fbBuilder.startTable(4);
    fbBuilder.addInt32(0, $is.value);
    fbBuilder.addInt32(1, private.value);
    fbBuilder.addInt32(2, type);
    fbBuilder.addBool(3, $default);
    return fbBuilder.endTable();
  }

  @override
  String toString() {
    return 'KeywordsInTableT{\$is: ${$is}, private: $private, type: $type, \$default: ${$default}}';
  }
}

class _KeywordsInTableReader extends fb.TableReader<KeywordsInTable> {
  const _KeywordsInTableReader();

  @override
  KeywordsInTable createObject(fb.BufferContext bc, int offset) =>
      KeywordsInTable._(bc, offset);
}

class KeywordsInTableBuilder {
  KeywordsInTableBuilder(this.fbBuilder);

  final fb.Builder fbBuilder;

  void begin() {
    fbBuilder.startTable(4);
  }

  int addIs(Abc? $is) {
    fbBuilder.addInt32(0, $is?.value);
    return fbBuilder.offset;
  }

  int addPrivate(Public? private) {
    fbBuilder.addInt32(1, private?.value);
    return fbBuilder.offset;
  }

  int addType(int? type) {
    fbBuilder.addInt32(2, type);
    return fbBuilder.offset;
  }

  int addDefault(bool? $default) {
    fbBuilder.addBool(3, $default);
    return fbBuilder.offset;
  }

  int finish() {
    return fbBuilder.endTable();
  }
}

class KeywordsInTableObjectBuilder extends fb.ObjectBuilder {
  final Abc? _$is;
  final Public? _private;
  final int? _type;
  final bool? _$default;

  KeywordsInTableObjectBuilder({
    Abc? $is,
    Public? private,
    int? type,
    bool? $default,
  })  : _$is = $is,
        _private = private,
        _type = type,
        _$default = $default;

  /// Finish building, and store into the [fbBuilder].
  @override
  int finish(fb.Builder fbBuilder) {
    fbBuilder.startTable(4);
    fbBuilder.addInt32(0, _$is?.value);
    fbBuilder.addInt32(1, _private?.value);
    fbBuilder.addInt32(2, _type);
    fbBuilder.addBool(3, _$default);
    return fbBuilder.endTable();
  }

  /// Convenience method to serialize to byte list.
  @override
  Uint8List toBytes([String? fileIdentifier]) {
    final fbBuilder = fb.Builder(deduplicateTables: false);
    fbBuilder.finish(finish(fbBuilder), fileIdentifier);
    return fbBuilder.buffer;
  }
}

class Table2 {
  Table2._(this._bc, this._bcOffset);
  factory Table2(List<int> bytes) {
    final rootRef = fb.BufferContext.fromBytes(bytes);
    return reader.read(rootRef, 0);
  }

  static const fb.Reader<Table2> reader = _Table2Reader();

  final fb.BufferContext _bc;
  final int _bcOffset;

  KeywordsInUnionTypeId? get typeType => KeywordsInUnionTypeId._createOrNull(
      const fb.Uint8Reader().vTableGetNullable(_bc, _bcOffset, 4));
  dynamic get type {
    switch (typeType?.value) {
      case 1:
        return KeywordsInTable.reader.vTableGetNullable(_bc, _bcOffset, 6);
      case 2:
        return KeywordsInTable.reader.vTableGetNullable(_bc, _bcOffset, 6);
      default:
        return null;
    }
  }

  @override
  String toString() {
    return 'Table2{typeType: $typeType, type: $type}';
  }

  Table2T unpack() => Table2T(typeType: typeType, type: type);

  static int pack(fb.Builder fbBuilder, Table2T? object) {
    if (object == null) return 0;
    return object.pack(fbBuilder);
  }
}

class Table2T implements fb.Packable {
  KeywordsInUnionTypeId? typeType;
  dynamic type;

  Table2T({this.typeType, this.type});

  @override
  int pack(fb.Builder fbBuilder) {
    final int? typeOffset = type?.pack(fbBuilder);
    fbBuilder.startTable(2);
    fbBuilder.addUint8(0, typeType?.value);
    fbBuilder.addOffset(1, typeOffset);
    return fbBuilder.endTable();
  }

  @override
  String toString() {
    return 'Table2T{typeType: $typeType, type: $type}';
  }
}

class _Table2Reader extends fb.TableReader<Table2> {
  const _Table2Reader();

  @override
  Table2 createObject(fb.BufferContext bc, int offset) => Table2._(bc, offset);
}

class Table2Builder {
  Table2Builder(this.fbBuilder);

  final fb.Builder fbBuilder;

  void begin() {
    fbBuilder.startTable(2);
  }

  int addTypeType(KeywordsInUnionTypeId? typeType) {
    fbBuilder.addUint8(0, typeType?.value);
    return fbBuilder.offset;
  }

  int addTypeOffset(int? offset) {
    fbBuilder.addOffset(1, offset);
    return fbBuilder.offset;
  }

  int finish() {
    return fbBuilder.endTable();
  }
}

class Table2ObjectBuilder extends fb.ObjectBuilder {
  final KeywordsInUnionTypeId? _typeType;
  final dynamic _type;

  Table2ObjectBuilder({
    KeywordsInUnionTypeId? typeType,
    dynamic type,
  })  : _typeType = typeType,
        _type = type;

  /// Finish building, and store into the [fbBuilder].
  @override
  int finish(fb.Builder fbBuilder) {
    final int? typeOffset = _type?.getOrCreateOffset(fbBuilder);
    fbBuilder.startTable(2);
    fbBuilder.addUint8(0, _typeType?.value);
    fbBuilder.addOffset(1, typeOffset);
    return fbBuilder.endTable();
  }

  /// Convenience method to serialize to byte list.
  @override
  Uint8List toBytes([String? fileIdentifier]) {
    final fbBuilder = fb.Builder(deduplicateTables: false);
    fbBuilder.finish(finish(fbBuilder), fileIdentifier);
    return fbBuilder.buffer;
  }
}
