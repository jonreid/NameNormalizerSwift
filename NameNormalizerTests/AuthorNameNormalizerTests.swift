@testable import NameNormalizer
import XCTest

class AuthorNameNormalizerTests: XCTestCase {

    func DISABLED_testReturnsEmptyStringWhenEmpty() throws {
        XCTAssertEqual(try normalize(name: ""), "")
    }

    func DISABLED_testReturnsSingleWordName() throws {
        XCTAssertEqual(try normalize(name: "Plato"), "Plato")
    }

    func DISABLED_testSwapsFirstAndLastNames() throws {
        XCTAssertEqual(try normalize(name: "Haruki Murakami"), "Murakami, Haruki")
    }

    func DISABLED_testTrimsLeadingAndTrailingWhitespace() throws {
        XCTAssertEqual(try normalize(name: "  Big Boi   "), "Boi, Big")
    }

    func DISABLED_testInitializesMiddleName() throws {
        XCTAssertEqual(try normalize(name: "Henry David Thoreau"), "Thoreau, Henry D.")
    }

    func DISABLED_testDoesNotInitializeOneLetterMiddleName() throws {
        XCTAssertEqual(try normalize(name: "Harry S Truman"), "Truman, Harry S")
    }

    func DISABLED_testInitializesEachOfMultipleMiddleNames() throws {
        XCTAssertEqual(try normalize(name: "Julia Scarlett Elizabeth Louis-Dreyfus"), "Louis-Dreyfus, Julia S. E.")
    }

    func DISABLED_testAppendsSuffixesToEnd() throws {
        XCTAssertEqual(try normalize(name: "Martin Luther King, Jr."), "King, Martin L., Jr.")
    }

    func DISABLED_testThrowsWhenNameContainsTwoCommas() throws {
        XCTAssertThrowsError(try normalize(name: "Thurston, Howell, III"))
    }
}
