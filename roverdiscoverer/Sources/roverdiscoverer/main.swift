import RoverDiscovererLib

let tool = RoverDiscoverer()

do {
    try tool.run()
} catch {
    print("Oops, something went wrong!")
}
