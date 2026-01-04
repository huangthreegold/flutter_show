// This is a generated file - do not edit.
//
// Generated from central_map_service.proto.

// @dart = 3.3

// ignore_for_file: annotate_overrides, camel_case_types, comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: curly_braces_in_flow_control_structures
// ignore_for_file: deprecated_member_use_from_same_package, library_prefixes
// ignore_for_file: non_constant_identifier_names, prefer_relative_imports

import 'dart:core' as $core;

import 'package:protobuf/protobuf.dart' as $pb;

class Neo4jOperation extends $pb.ProtobufEnum {
  static const Neo4jOperation ClearDuplicateMarkCode =
      Neo4jOperation._(0, _omitEnumNames ? '' : 'ClearDuplicateMarkCode');

  static const $core.List<Neo4jOperation> values = <Neo4jOperation>[
    ClearDuplicateMarkCode,
  ];

  static final $core.List<Neo4jOperation?> _byValue =
      $pb.ProtobufEnum.$_initByValueList(values, 0);
  static Neo4jOperation? valueOf($core.int value) =>
      value < 0 || value >= _byValue.length ? null : _byValue[value];

  const Neo4jOperation._(super.value, super.name);
}

const $core.bool _omitEnumNames =
    $core.bool.fromEnvironment('protobuf.omit_enum_names');
