import XCTest

#if !os(macOS)
public func allTests() -> [XCTestCaseEntry] {
    return [
        testCase(roverdiscovererTests.allTests),
        testCase(RDFileManagerTests.allTests)
    ]
}
#endif
