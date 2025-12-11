//
//  Generated code. Do not modify.
//  source: central_map_service.proto
//
// @dart = 2.12

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_final_fields
// ignore_for_file: unnecessary_import, unnecessary_this, unused_import

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class Neo4jOperation extends $pb.ProtobufEnum {
  static const Neo4jOperation ClearDuplicateMarkCode = Neo4jOperation._(0, _omitEnumNames ? '' : 'ClearDuplicateMarkCode');

  static const $core.List<Neo4jOperation> values = <Neo4jOperation> [
    ClearDuplicateMarkCode,
  ];

  static final $core.Map<$core.int, Neo4jOperation> _byValue = $pb.ProtobufEnum.initByValue(values);
  static Neo4jOperation? valueOf($core.int value) => _byValue[value];

  const Neo4jOperation._($core.int v, $core.String n) : super(v, n);
}


const _omitEnumNames = $core.bool.fromEnvironment('protobuf.omit_enum_names');
