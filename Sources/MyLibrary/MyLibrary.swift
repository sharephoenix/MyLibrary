#if canImport(Dispatch)
import Dispatch
fileprivate var knownTypesQueue =
    DispatchQueue(label: "org.swift.protobuf.typeRegistry",
                  attributes: .concurrent)
#endif

public struct MyLibrary {
    public private(set) var text = "Hello, World!"

    public static func main(args: [String]) {

    }

    public init() {
    }

    dynamic public func test() {
        #if TEST
        let contacts = CNContactsUserDefaults.shared().countryCode
        print("test--:\(contacts)")
        #endif
        print("test-end")
    }

    dynamic static public func testA() {
        print("original testA")
    }
}

