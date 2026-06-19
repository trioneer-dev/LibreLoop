import Foundation

/// Name of the host app embedding LibreLoop (Loop, Trio, etc.).
/// Reads `CFBundleDisplayName` first, then `CFBundleName`; falls back
/// to "Loop" so labels render sensibly even when the host bundle is odd.
var hostAppName: String {
    let info = Bundle.main.infoDictionary
    if let name = info?["CFBundleDisplayName"] as? String, !name.isEmpty { return name }
    if let name = info?["CFBundleName"] as? String, !name.isEmpty { return name }
    return "Loop"
}
