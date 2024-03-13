//
// DO NOT EDIT.
// swift-format-ignore-file
//
// Generated by the protocol buffer compiler.
// Source: opentelemetry/proto/collector/logs/v1/logs_service.proto
//
import GRPC
import NIO
import NIOConcurrencyHelpers
import SwiftProtobuf


/// Service that can be used to push logs between one Application instrumented with
/// OpenTelemetry and an collector, or between an collector and a central collector (in this
/// case logs are sent/received to/from multiple Applications).
///
/// Usage: instantiate `Opentelemetry_Proto_Collector_Logs_V1_LogsServiceClient`, then call methods of this protocol to make API calls.
internal protocol Opentelemetry_Proto_Collector_Logs_V1_LogsServiceClientProtocol: GRPCClient {
  var serviceName: String { get }
  var interceptors: Opentelemetry_Proto_Collector_Logs_V1_LogsServiceClientInterceptorFactoryProtocol? { get }

  func export(
    _ request: Opentelemetry_Proto_Collector_Logs_V1_ExportLogsServiceRequest,
    callOptions: CallOptions?
  ) -> UnaryCall<Opentelemetry_Proto_Collector_Logs_V1_ExportLogsServiceRequest, Opentelemetry_Proto_Collector_Logs_V1_ExportLogsServiceResponse>
}

extension Opentelemetry_Proto_Collector_Logs_V1_LogsServiceClientProtocol {
  internal var serviceName: String {
    return "opentelemetry.proto.collector.logs.v1.LogsService"
  }

  /// For performance reasons, it is recommended to keep this RPC
  /// alive for the entire life of the application.
  ///
  /// - Parameters:
  ///   - request: Request to send to Export.
  ///   - callOptions: Call options.
  /// - Returns: A `UnaryCall` with futures for the metadata, status and response.
  internal func export(
    _ request: Opentelemetry_Proto_Collector_Logs_V1_ExportLogsServiceRequest,
    callOptions: CallOptions? = nil
  ) -> UnaryCall<Opentelemetry_Proto_Collector_Logs_V1_ExportLogsServiceRequest, Opentelemetry_Proto_Collector_Logs_V1_ExportLogsServiceResponse> {
    return self.makeUnaryCall(
      path: Opentelemetry_Proto_Collector_Logs_V1_LogsServiceClientMetadata.Methods.export.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeExportInterceptors() ?? []
    )
  }
}

@available(*, deprecated)
extension Opentelemetry_Proto_Collector_Logs_V1_LogsServiceClient: @unchecked Sendable {}

@available(*, deprecated, renamed: "Opentelemetry_Proto_Collector_Logs_V1_LogsServiceNIOClient")
internal final class Opentelemetry_Proto_Collector_Logs_V1_LogsServiceClient: Opentelemetry_Proto_Collector_Logs_V1_LogsServiceClientProtocol {
  private let lock = Lock()
  private var _defaultCallOptions: CallOptions
  private var _interceptors: Opentelemetry_Proto_Collector_Logs_V1_LogsServiceClientInterceptorFactoryProtocol?
  internal let channel: GRPCChannel
  internal var defaultCallOptions: CallOptions {
    get { self.lock.withLock { return self._defaultCallOptions } }
    set { self.lock.withLockVoid { self._defaultCallOptions = newValue } }
  }
  internal var interceptors: Opentelemetry_Proto_Collector_Logs_V1_LogsServiceClientInterceptorFactoryProtocol? {
    get { self.lock.withLock { return self._interceptors } }
    set { self.lock.withLockVoid { self._interceptors = newValue } }
  }

  /// Creates a client for the opentelemetry.proto.collector.logs.v1.LogsService service.
  ///
  /// - Parameters:
  ///   - channel: `GRPCChannel` to the service host.
  ///   - defaultCallOptions: Options to use for each service call if the user doesn't provide them.
  ///   - interceptors: A factory providing interceptors for each RPC.
  internal init(
    channel: GRPCChannel,
    defaultCallOptions: CallOptions = CallOptions(),
    interceptors: Opentelemetry_Proto_Collector_Logs_V1_LogsServiceClientInterceptorFactoryProtocol? = nil
  ) {
    self.channel = channel
    self._defaultCallOptions = defaultCallOptions
    self._interceptors = interceptors
  }
}

internal struct Opentelemetry_Proto_Collector_Logs_V1_LogsServiceNIOClient: Opentelemetry_Proto_Collector_Logs_V1_LogsServiceClientProtocol {
  internal var channel: GRPCChannel
  internal var defaultCallOptions: CallOptions
  internal var interceptors: Opentelemetry_Proto_Collector_Logs_V1_LogsServiceClientInterceptorFactoryProtocol?

  /// Creates a client for the opentelemetry.proto.collector.logs.v1.LogsService service.
  ///
  /// - Parameters:
  ///   - channel: `GRPCChannel` to the service host.
  ///   - defaultCallOptions: Options to use for each service call if the user doesn't provide them.
  ///   - interceptors: A factory providing interceptors for each RPC.
  internal init(
    channel: GRPCChannel,
    defaultCallOptions: CallOptions = CallOptions(),
    interceptors: Opentelemetry_Proto_Collector_Logs_V1_LogsServiceClientInterceptorFactoryProtocol? = nil
  ) {
    self.channel = channel
    self.defaultCallOptions = defaultCallOptions
    self.interceptors = interceptors
  }
}

/// Service that can be used to push logs between one Application instrumented with
/// OpenTelemetry and an collector, or between an collector and a central collector (in this
/// case logs are sent/received to/from multiple Applications).
@available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
internal protocol Opentelemetry_Proto_Collector_Logs_V1_LogsServiceAsyncClientProtocol: GRPCClient {
  static var serviceDescriptor: GRPCServiceDescriptor { get }
  var interceptors: Opentelemetry_Proto_Collector_Logs_V1_LogsServiceClientInterceptorFactoryProtocol? { get }

  func makeExportCall(
    _ request: Opentelemetry_Proto_Collector_Logs_V1_ExportLogsServiceRequest,
    callOptions: CallOptions?
  ) -> GRPCAsyncUnaryCall<Opentelemetry_Proto_Collector_Logs_V1_ExportLogsServiceRequest, Opentelemetry_Proto_Collector_Logs_V1_ExportLogsServiceResponse>
}

@available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
extension Opentelemetry_Proto_Collector_Logs_V1_LogsServiceAsyncClientProtocol {
  internal static var serviceDescriptor: GRPCServiceDescriptor {
    return Opentelemetry_Proto_Collector_Logs_V1_LogsServiceClientMetadata.serviceDescriptor
  }

  internal var interceptors: Opentelemetry_Proto_Collector_Logs_V1_LogsServiceClientInterceptorFactoryProtocol? {
    return nil
  }

  internal func makeExportCall(
    _ request: Opentelemetry_Proto_Collector_Logs_V1_ExportLogsServiceRequest,
    callOptions: CallOptions? = nil
  ) -> GRPCAsyncUnaryCall<Opentelemetry_Proto_Collector_Logs_V1_ExportLogsServiceRequest, Opentelemetry_Proto_Collector_Logs_V1_ExportLogsServiceResponse> {
    return self.makeAsyncUnaryCall(
      path: Opentelemetry_Proto_Collector_Logs_V1_LogsServiceClientMetadata.Methods.export.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeExportInterceptors() ?? []
    )
  }
}

@available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
extension Opentelemetry_Proto_Collector_Logs_V1_LogsServiceAsyncClientProtocol {
  internal func export(
    _ request: Opentelemetry_Proto_Collector_Logs_V1_ExportLogsServiceRequest,
    callOptions: CallOptions? = nil
  ) async throws -> Opentelemetry_Proto_Collector_Logs_V1_ExportLogsServiceResponse {
    return try await self.performAsyncUnaryCall(
      path: Opentelemetry_Proto_Collector_Logs_V1_LogsServiceClientMetadata.Methods.export.path,
      request: request,
      callOptions: callOptions ?? self.defaultCallOptions,
      interceptors: self.interceptors?.makeExportInterceptors() ?? []
    )
  }
}

@available(macOS 10.15, iOS 13, tvOS 13, watchOS 6, *)
internal struct Opentelemetry_Proto_Collector_Logs_V1_LogsServiceAsyncClient: Opentelemetry_Proto_Collector_Logs_V1_LogsServiceAsyncClientProtocol {
  internal var channel: GRPCChannel
  internal var defaultCallOptions: CallOptions
  internal var interceptors: Opentelemetry_Proto_Collector_Logs_V1_LogsServiceClientInterceptorFactoryProtocol?

  internal init(
    channel: GRPCChannel,
    defaultCallOptions: CallOptions = CallOptions(),
    interceptors: Opentelemetry_Proto_Collector_Logs_V1_LogsServiceClientInterceptorFactoryProtocol? = nil
  ) {
    self.channel = channel
    self.defaultCallOptions = defaultCallOptions
    self.interceptors = interceptors
  }
}

internal protocol Opentelemetry_Proto_Collector_Logs_V1_LogsServiceClientInterceptorFactoryProtocol: Sendable {

  /// - Returns: Interceptors to use when invoking 'export'.
  func makeExportInterceptors() -> [ClientInterceptor<Opentelemetry_Proto_Collector_Logs_V1_ExportLogsServiceRequest, Opentelemetry_Proto_Collector_Logs_V1_ExportLogsServiceResponse>]
}

internal enum Opentelemetry_Proto_Collector_Logs_V1_LogsServiceClientMetadata {
  internal static let serviceDescriptor = GRPCServiceDescriptor(
    name: "LogsService",
    fullName: "opentelemetry.proto.collector.logs.v1.LogsService",
    methods: [
      Opentelemetry_Proto_Collector_Logs_V1_LogsServiceClientMetadata.Methods.export,
    ]
  )

  internal enum Methods {
    internal static let export = GRPCMethodDescriptor(
      name: "Export",
      path: "/opentelemetry.proto.collector.logs.v1.LogsService/Export",
      type: GRPCCallType.unary
    )
  }
}
