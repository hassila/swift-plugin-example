import PluginExampleAPI
import PluginManagerExampleAPI

// This plugin example returns structs that implement the API
public struct PluginExample : PluginExampleAPI {

  var api : PluginManagerExampleAPI? = nil
  
  public init() {
  }
  
  /// Set the hosting application API instance which we can call
  public mutating func setPluginManagerExampleAPI(_ pluginAPI: PluginManagerExampleAPI)
  {
      api = pluginAPI
  }
}

extension PluginExample {
  public func name() -> String {
    // If we have an API set for the hosting app, call it and return that as our name
    if let a = api {
      return a.name()
    }
    return "failed to use hosting applicaiton api"
  }
}
