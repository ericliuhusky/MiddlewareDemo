import Middleware
import ComponentA
import ComponentB

ComponentAAPI = ComponentA()
ComponentBAPI = ComponentB()

print("call ComponentA from Demo:")
ComponentAAPI.a()
print("call ComponentB from Demo:")
ComponentBAPI.b()
ComponentAAPI.c()
ComponentBAPI.c()
