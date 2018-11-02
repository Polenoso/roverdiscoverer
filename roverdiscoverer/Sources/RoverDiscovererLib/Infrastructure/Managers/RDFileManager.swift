//
//  RDFileManager.swift
//  RoverDiscovererLib
//
//  Created by Aitor Pagán on 02/11/2018.
//

import Foundation

public final class RDFileManager {
    public static func readFile(from path:String?) throws -> Dictionary<String,Any>? {
        guard let jsonPath = path,
            jsonPath.split(separator: ".").last?.lowercased() == "json" else { throw RDFileManager.Error.invalidPath }
        
        do {
            let currentDirectoryURL = URL(fileURLWithPath: FileManager.default.currentDirectoryPath)
            let url = URL(fileURLWithPath: jsonPath, relativeTo: currentDirectoryURL)
            let content = try String(contentsOf: url, encoding: .utf8)
            return try content.toJsonDictionary()
        } catch let error{
            throw error
        }

    }
}

extension RDFileManager {
    public enum Error : Swift.Error {
        case invalidPath
        case readingError
    }
}
