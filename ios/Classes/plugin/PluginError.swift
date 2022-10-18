enum PluginError: Error {

    case unknown(Error)
    case internalInconsistency(details: String?)
    case unsupportedMethodCall(method: String)
    case invalidMethodCall(method: String, details: String?)
    case notInitialized
    case connectionLost

    var asFlutterError: FlutterError {
        switch self {
        case .unknown(let error as NSError):
            return makeFlutterError(code: "\(error.domain):\(error.code)", message: error.localizedDescription, details: error.userInfo)
        case .internalInconsistency(let details):
            let extra = details.map {
                " (\($0))"
            } ?? ""
            return makeFlutterError(message: "internal inconsistency" + extra)
        case .unsupportedMethodCall(let method):
            return makeFlutterError(message: "the method \"\(method)\" is not supported")
        case .invalidMethodCall(let method, let details):
            let extra = details.map {
                " (\($0))"
            } ?? ""
            return makeFlutterError(message: "invalid \"\(method)\" method call" + extra)
        case .notInitialized:
            return makeFlutterError(message: "not initialized")
        case .connectionLost:
            return makeFlutterError(message: "connection lost")
        }
    }

    private func makeFlutterError(code: String? = nil, message: String?, details: Any? = nil) -> FlutterError {
        FlutterError(code: code ?? "\(self)", message: message, details: details)
    }
}