import Middleware

public struct ComponentA: ComponentAProtocol {
    public init() {}
    
    public func a() {
        print("CopmonentA")
    }
    
    public func c() {
        print("call ComponentB from ComponentA:")
        ComponentBAPI.b()
    }
}
