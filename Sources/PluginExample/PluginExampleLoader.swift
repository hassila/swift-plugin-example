import PluginExampleAPI

// This is the canonical entry point for a plugin to be loaded
// PluginExampleAPIFactory should be changed to your own factory class
// which is typically defined in the package defining the plugin type protocol
// PluginExample should be changed to the type of this specific plugin type
@_cdecl("_pluginFactory")
public func _pluginFactory() -> UnsafeMutableRawPointer {
  return Unmanaged.passRetained(PluginExampleAPIFactory(PluginExample.self)).toOpaque()
}
