# 中间件最小Demo

## 快速开始

1. `cd MiddlewareDemo/Demo`
2. `swift run`
3. 运行输出
```
call ComponentA from Demo:
CopmonentA
call ComponentB from Demo:
ComponentB
call ComponentB from ComponentA:
ComponentB
call ComponentA from ComponentB:
CopmonentA
```

## 目录结构

```
├─ Demo // 主工程
│  ├─ Sources/Demo
│  │  └─ main.swift
│  └─ Package.swift
├─ ComponentA // 组件A
├─ ComponentB // 组件B
└─ Middleware // 中间件
```

## 中间件Step-by-Step

### 1. 约定协议

```swift
public protocol ComponentAProtocol {
    func a()
    func c()
}
```

### 2. 开放接口

```swift
public var ComponentAAPI: ComponentAProtocol!
```

### 3. 组件实现

```swift
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
```

### 4. 接口赋值（仅需一次）

```swift
ComponentAAPI = ComponentA()
```

### 5. 接口调用

```swift
ComponentAAPI.a()
ComponentBAPI.b()
```
