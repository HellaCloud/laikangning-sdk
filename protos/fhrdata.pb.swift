// DO NOT EDIT.
// swift-format-ignore-file
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: fhrdata.proto
//
// For information on using the generated types, please see the documentation:
//   https://github.com/apple/swift-protobuf/

import Foundation
import SwiftProtobuf

// If the compiler emits an error on this type, it is because this file
// was generated by a version of the `protoc` Swift plug-in that is
// incompatible with the version of SwiftProtobuf to which you are linking.
// Please ensure that you are building against the same version of the API
// that was used to generate this file.
fileprivate struct _GeneratedWithProtocGenSwiftVersion: SwiftProtobuf.ProtobufAPIVersionCheck {
  struct _2: SwiftProtobuf.ProtobufAPIVersion_2 {}
  typealias Version = _2
}

/// 协议内容封装
struct LknFhrData {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  var type: LknFhrData.StreamType {
    get {return _storage._type}
    set {_uniqueStorage()._type = newValue}
  }

  var data: LknFhrData.FhrData {
    get {return _storage._data ?? LknFhrData.FhrData()}
    set {_uniqueStorage()._data = newValue}
  }
  /// Returns true if `data` has been explicitly set.
  var hasData: Bool {return _storage._data != nil}
  /// Clears the value of `data`. Subsequent reads from it will return its default value.
  mutating func clearData() {_uniqueStorage()._data = nil}

  var error: LknFhrData.ErrorData {
    get {return _storage._error ?? LknFhrData.ErrorData()}
    set {_uniqueStorage()._error = newValue}
  }
  /// Returns true if `error` has been explicitly set.
  var hasError: Bool {return _storage._error != nil}
  /// Clears the value of `error`. Subsequent reads from it will return its default value.
  mutating func clearError() {_uniqueStorage()._error = nil}

  var send: LknFhrData.SendData {
    get {return _storage._send ?? LknFhrData.SendData()}
    set {_uniqueStorage()._send = newValue}
  }
  /// Returns true if `send` has been explicitly set.
  var hasSend: Bool {return _storage._send != nil}
  /// Clears the value of `send`. Subsequent reads from it will return its default value.
  mutating func clearSend() {_uniqueStorage()._send = nil}

  var unknownFields = SwiftProtobuf.UnknownStorage()

  enum StreamType: SwiftProtobuf.Enum {
    typealias RawValue = Int
    case fhrData // = 0
    case fhrError // = 1
    case fhrSend // = 2
    case UNRECOGNIZED(Int)

    init() {
      self = .fhrData
    }

    init?(rawValue: Int) {
      switch rawValue {
      case 0: self = .fhrData
      case 1: self = .fhrError
      case 2: self = .fhrSend
      default: self = .UNRECOGNIZED(rawValue)
      }
    }

    var rawValue: Int {
      switch self {
      case .fhrData: return 0
      case .fhrError: return 1
      case .fhrSend: return 2
      case .UNRECOGNIZED(let i): return i
      }
    }

  }

  struct FhrData {
    // SwiftProtobuf.Message conformance is added in an extension below. See the
    // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
    // methods supported on all messages.

    var fhr1: Int32 = 0

    var fhr2: Int32 = 0

    var toco: Data = Data()

    var afm: Data = Data()

    var fhrSignal: Data = Data()

    var afmFlag: Data = Data()

    var fmFlag: Data = Data()

    var tocoFlag: Data = Data()

    var docFlag: Data = Data()

    var devicePower: Data = Data()

    var isHaveFhr1: Data = Data()

    var isHaveFhr2: Data = Data()

    var isHaveToco: Data = Data()

    var isHaveAfm: Data = Data()

    var unknownFields = SwiftProtobuf.UnknownStorage()

    init() {}
  }

  /// 胎儿心跳错误数据
  struct ErrorData {
    // SwiftProtobuf.Message conformance is added in an extension below. See the
    // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
    // methods supported on all messages.

    var bytesData: Data = Data()

    var unknownFields = SwiftProtobuf.UnknownStorage()

    init() {}
  }

  /// 胎儿心跳错误数据
  struct SendData {
    // SwiftProtobuf.Message conformance is added in an extension below. See the
    // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
    // methods supported on all messages.

    var bytesData: Data = Data()

    var unknownFields = SwiftProtobuf.UnknownStorage()

    init() {}
  }

  init() {}

  fileprivate var _storage = _StorageClass.defaultInstance
}

#if swift(>=4.2)

extension LknFhrData.StreamType: CaseIterable {
  // The compiler won't synthesize support with the UNRECOGNIZED case.
  static var allCases: [LknFhrData.StreamType] = [
    .fhrData,
    .fhrError,
    .fhrSend,
  ]
}

#endif  // swift(>=4.2)

/// 放置数据
struct LknPutData {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  var data: Data = Data()

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}
}

/// 开启记录声音
struct LknRecordWave {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  var path: String = String()

  var fileName: String = String()

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}
}

/// 发送胎监复位
struct LknTocoReset {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  var value: UInt32 = 0

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}
}

/// 调整音量
struct LknFhrVolume {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  var value: UInt32 = 0

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}
}

#if swift(>=5.5) && canImport(_Concurrency)
extension LknFhrData: @unchecked Sendable {}
extension LknFhrData.StreamType: @unchecked Sendable {}
extension LknFhrData.FhrData: @unchecked Sendable {}
extension LknFhrData.ErrorData: @unchecked Sendable {}
extension LknFhrData.SendData: @unchecked Sendable {}
extension LknPutData: @unchecked Sendable {}
extension LknRecordWave: @unchecked Sendable {}
extension LknTocoReset: @unchecked Sendable {}
extension LknFhrVolume: @unchecked Sendable {}
#endif  // swift(>=5.5) && canImport(_Concurrency)

// MARK: - Code below here is support for the SwiftProtobuf runtime.

extension LknFhrData: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = "LknFhrData"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "type"),
    2: .same(proto: "data"),
    3: .same(proto: "error"),
    4: .same(proto: "send"),
  ]

  fileprivate class _StorageClass {
    var _type: LknFhrData.StreamType = .fhrData
    var _data: LknFhrData.FhrData? = nil
    var _error: LknFhrData.ErrorData? = nil
    var _send: LknFhrData.SendData? = nil

    static let defaultInstance = _StorageClass()

    private init() {}

    init(copying source: _StorageClass) {
      _type = source._type
      _data = source._data
      _error = source._error
      _send = source._send
    }
  }

  fileprivate mutating func _uniqueStorage() -> _StorageClass {
    if !isKnownUniquelyReferenced(&_storage) {
      _storage = _StorageClass(copying: _storage)
    }
    return _storage
  }

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    _ = _uniqueStorage()
    try withExtendedLifetime(_storage) { (_storage: _StorageClass) in
      while let fieldNumber = try decoder.nextFieldNumber() {
        // The use of inline closures is to circumvent an issue where the compiler
        // allocates stack space for every case branch when no optimizations are
        // enabled. https://github.com/apple/swift-protobuf/issues/1034
        switch fieldNumber {
        case 1: try { try decoder.decodeSingularEnumField(value: &_storage._type) }()
        case 2: try { try decoder.decodeSingularMessageField(value: &_storage._data) }()
        case 3: try { try decoder.decodeSingularMessageField(value: &_storage._error) }()
        case 4: try { try decoder.decodeSingularMessageField(value: &_storage._send) }()
        default: break
        }
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    try withExtendedLifetime(_storage) { (_storage: _StorageClass) in
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every if/case branch local when no optimizations
      // are enabled. https://github.com/apple/swift-protobuf/issues/1034 and
      // https://github.com/apple/swift-protobuf/issues/1182
      if _storage._type != .fhrData {
        try visitor.visitSingularEnumField(value: _storage._type, fieldNumber: 1)
      }
      try { if let v = _storage._data {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 2)
      } }()
      try { if let v = _storage._error {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 3)
      } }()
      try { if let v = _storage._send {
        try visitor.visitSingularMessageField(value: v, fieldNumber: 4)
      } }()
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: LknFhrData, rhs: LknFhrData) -> Bool {
    if lhs._storage !== rhs._storage {
      let storagesAreEqual: Bool = withExtendedLifetime((lhs._storage, rhs._storage)) { (_args: (_StorageClass, _StorageClass)) in
        let _storage = _args.0
        let rhs_storage = _args.1
        if _storage._type != rhs_storage._type {return false}
        if _storage._data != rhs_storage._data {return false}
        if _storage._error != rhs_storage._error {return false}
        if _storage._send != rhs_storage._send {return false}
        return true
      }
      if !storagesAreEqual {return false}
    }
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension LknFhrData.StreamType: SwiftProtobuf._ProtoNameProviding {
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    0: .same(proto: "FHR_DATA"),
    1: .same(proto: "FHR_ERROR"),
    2: .same(proto: "FHR_SEND"),
  ]
}

extension LknFhrData.FhrData: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = LknFhrData.protoMessageName + ".FhrData"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "fhr1"),
    2: .same(proto: "fhr2"),
    3: .same(proto: "toco"),
    4: .same(proto: "afm"),
    5: .same(proto: "fhrSignal"),
    6: .same(proto: "afmFlag"),
    7: .same(proto: "fmFlag"),
    8: .same(proto: "tocoFlag"),
    9: .same(proto: "docFlag"),
    10: .same(proto: "devicePower"),
    11: .same(proto: "isHaveFhr1"),
    12: .same(proto: "isHaveFhr2"),
    13: .same(proto: "isHaveToco"),
    14: .same(proto: "isHaveAfm"),
  ]

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularInt32Field(value: &self.fhr1) }()
      case 2: try { try decoder.decodeSingularInt32Field(value: &self.fhr2) }()
      case 3: try { try decoder.decodeSingularBytesField(value: &self.toco) }()
      case 4: try { try decoder.decodeSingularBytesField(value: &self.afm) }()
      case 5: try { try decoder.decodeSingularBytesField(value: &self.fhrSignal) }()
      case 6: try { try decoder.decodeSingularBytesField(value: &self.afmFlag) }()
      case 7: try { try decoder.decodeSingularBytesField(value: &self.fmFlag) }()
      case 8: try { try decoder.decodeSingularBytesField(value: &self.tocoFlag) }()
      case 9: try { try decoder.decodeSingularBytesField(value: &self.docFlag) }()
      case 10: try { try decoder.decodeSingularBytesField(value: &self.devicePower) }()
      case 11: try { try decoder.decodeSingularBytesField(value: &self.isHaveFhr1) }()
      case 12: try { try decoder.decodeSingularBytesField(value: &self.isHaveFhr2) }()
      case 13: try { try decoder.decodeSingularBytesField(value: &self.isHaveToco) }()
      case 14: try { try decoder.decodeSingularBytesField(value: &self.isHaveAfm) }()
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if self.fhr1 != 0 {
      try visitor.visitSingularInt32Field(value: self.fhr1, fieldNumber: 1)
    }
    if self.fhr2 != 0 {
      try visitor.visitSingularInt32Field(value: self.fhr2, fieldNumber: 2)
    }
    if !self.toco.isEmpty {
      try visitor.visitSingularBytesField(value: self.toco, fieldNumber: 3)
    }
    if !self.afm.isEmpty {
      try visitor.visitSingularBytesField(value: self.afm, fieldNumber: 4)
    }
    if !self.fhrSignal.isEmpty {
      try visitor.visitSingularBytesField(value: self.fhrSignal, fieldNumber: 5)
    }
    if !self.afmFlag.isEmpty {
      try visitor.visitSingularBytesField(value: self.afmFlag, fieldNumber: 6)
    }
    if !self.fmFlag.isEmpty {
      try visitor.visitSingularBytesField(value: self.fmFlag, fieldNumber: 7)
    }
    if !self.tocoFlag.isEmpty {
      try visitor.visitSingularBytesField(value: self.tocoFlag, fieldNumber: 8)
    }
    if !self.docFlag.isEmpty {
      try visitor.visitSingularBytesField(value: self.docFlag, fieldNumber: 9)
    }
    if !self.devicePower.isEmpty {
      try visitor.visitSingularBytesField(value: self.devicePower, fieldNumber: 10)
    }
    if !self.isHaveFhr1.isEmpty {
      try visitor.visitSingularBytesField(value: self.isHaveFhr1, fieldNumber: 11)
    }
    if !self.isHaveFhr2.isEmpty {
      try visitor.visitSingularBytesField(value: self.isHaveFhr2, fieldNumber: 12)
    }
    if !self.isHaveToco.isEmpty {
      try visitor.visitSingularBytesField(value: self.isHaveToco, fieldNumber: 13)
    }
    if !self.isHaveAfm.isEmpty {
      try visitor.visitSingularBytesField(value: self.isHaveAfm, fieldNumber: 14)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: LknFhrData.FhrData, rhs: LknFhrData.FhrData) -> Bool {
    if lhs.fhr1 != rhs.fhr1 {return false}
    if lhs.fhr2 != rhs.fhr2 {return false}
    if lhs.toco != rhs.toco {return false}
    if lhs.afm != rhs.afm {return false}
    if lhs.fhrSignal != rhs.fhrSignal {return false}
    if lhs.afmFlag != rhs.afmFlag {return false}
    if lhs.fmFlag != rhs.fmFlag {return false}
    if lhs.tocoFlag != rhs.tocoFlag {return false}
    if lhs.docFlag != rhs.docFlag {return false}
    if lhs.devicePower != rhs.devicePower {return false}
    if lhs.isHaveFhr1 != rhs.isHaveFhr1 {return false}
    if lhs.isHaveFhr2 != rhs.isHaveFhr2 {return false}
    if lhs.isHaveToco != rhs.isHaveToco {return false}
    if lhs.isHaveAfm != rhs.isHaveAfm {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension LknFhrData.ErrorData: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = LknFhrData.protoMessageName + ".ErrorData"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "bytesData"),
  ]

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularBytesField(value: &self.bytesData) }()
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.bytesData.isEmpty {
      try visitor.visitSingularBytesField(value: self.bytesData, fieldNumber: 1)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: LknFhrData.ErrorData, rhs: LknFhrData.ErrorData) -> Bool {
    if lhs.bytesData != rhs.bytesData {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension LknFhrData.SendData: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = LknFhrData.protoMessageName + ".SendData"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "bytesData"),
  ]

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularBytesField(value: &self.bytesData) }()
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.bytesData.isEmpty {
      try visitor.visitSingularBytesField(value: self.bytesData, fieldNumber: 1)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: LknFhrData.SendData, rhs: LknFhrData.SendData) -> Bool {
    if lhs.bytesData != rhs.bytesData {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension LknPutData: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = "LknPutData"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "data"),
  ]

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularBytesField(value: &self.data) }()
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.data.isEmpty {
      try visitor.visitSingularBytesField(value: self.data, fieldNumber: 1)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: LknPutData, rhs: LknPutData) -> Bool {
    if lhs.data != rhs.data {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension LknRecordWave: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = "LknRecordWave"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "path"),
    2: .same(proto: "fileName"),
  ]

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularStringField(value: &self.path) }()
      case 2: try { try decoder.decodeSingularStringField(value: &self.fileName) }()
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.path.isEmpty {
      try visitor.visitSingularStringField(value: self.path, fieldNumber: 1)
    }
    if !self.fileName.isEmpty {
      try visitor.visitSingularStringField(value: self.fileName, fieldNumber: 2)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: LknRecordWave, rhs: LknRecordWave) -> Bool {
    if lhs.path != rhs.path {return false}
    if lhs.fileName != rhs.fileName {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension LknTocoReset: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = "LknTocoReset"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "value"),
  ]

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularUInt32Field(value: &self.value) }()
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if self.value != 0 {
      try visitor.visitSingularUInt32Field(value: self.value, fieldNumber: 1)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: LknTocoReset, rhs: LknTocoReset) -> Bool {
    if lhs.value != rhs.value {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension LknFhrVolume: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = "LknFhrVolume"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "value"),
  ]

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularUInt32Field(value: &self.value) }()
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if self.value != 0 {
      try visitor.visitSingularUInt32Field(value: self.value, fieldNumber: 1)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: LknFhrVolume, rhs: LknFhrVolume) -> Bool {
    if lhs.value != rhs.value {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}