import TemplateKit
import XCTest

class TemplateByteScannerTests: XCTestCase {
    func testString() {
        let string = "hello"
        let inputData = string.data(using: .utf8)!
        let scanner = TemplateByteScanner(data: inputData, file: "")
        let scannedData = Data((0..<inputData.count).compactMap({ scanner.peek(by: $0) }))
        XCTAssertEqual(scannedData, inputData)
    }
}
