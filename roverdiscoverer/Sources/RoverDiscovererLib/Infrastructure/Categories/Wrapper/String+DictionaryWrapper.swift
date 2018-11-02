//
//  String+DictionaryWrapper.swift
//  RoverDiscovererLib
//
//  Created by Aitor Pagán on 02/11/2018.
//

import Foundation

extension String {
    func toJsonDictionary() throws -> [String : Any]? {
        if let data = self.data(using: .utf8) {
            do {
                return try JSONSerialization.jsonObject(with: data, options: .allowFragments) as? [String : Any]
            } catch let error {
                throw error
            }
        }
        return nil
    }
}
