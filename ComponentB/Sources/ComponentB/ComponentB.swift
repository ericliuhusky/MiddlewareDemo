import Middleware

public struct ComponentB: ComponentBProtocol {
    public init() {}
    
    public func b() {
        print("ComponentB")
    }
    
    public func c() {
        print("call ComponentA from ComponentB:")
        ComponentAAPI.a()
    }
}
