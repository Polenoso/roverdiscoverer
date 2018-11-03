import Foundation

public final class RoverDiscoverer {
    private let arguments: [String]
    public init(arguments: [String] = CommandLine.arguments) {
        self.arguments = arguments
    }
    
    public func run() throws {
        guard arguments.count >= 1 else {
            throw RoverDiscoverer.Error.invalidArguments
        }
        
        let fileArgument = arguments[1]
        
        do {
            //Read configuration from argument
            guard let configuration = try RDFileManager.readFile(from: fileArgument) else { throw RoverDiscoverer.Error.invalidConfig }
            debugPrint(configuration.debugDescription)
            
            //Wrap configuration
            let rover = try RDConfigParser.parseConfiguration(configJson: configuration)
            debugPrint(rover)
            
            //Process movements
            for mov in Rover.movements {
               mov.operate().move(rover)
            }
            
            //Finally, print the final position
            print(rover.getStatus())
            
        } catch let error {
            print(error)
        }
        
        exit(0)
    }
}

extension RoverDiscoverer {
    enum Error : Swift.Error {
        case invalidArguments
        case invalidJson
        case invalidConfig
        case invalidMovement
        case invalidRoverOrigin
    }
}
