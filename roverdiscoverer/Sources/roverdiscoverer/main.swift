import RoverDiscovererLib

let tool = RoverDiscoverer()

do {
    try tool.run()
} catch let error {
    print(error)
}
