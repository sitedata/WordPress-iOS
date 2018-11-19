
import XCTest
@testable import WordPress

final class TitleSubtitleHeaderTests: XCTestCase {
    private var header: TitleSubtitleHeader?

    override func setUp() {
        super.setUp()
        header = TitleSubtitleHeader(frame: .zero)
    }

    override func tearDown() {
        header = nil
        super.tearDown()
    }

    func testHeaderContainsTitleLabel() {
        XCTAssertNotNil(header?.titleLabel())
    }

    func testHeaderContainsSubtitleLabel() {
        XCTAssertNotNil(header?.subtitleLabel())
    }

    func testSetTitleSetsTitleLabel() {
        let title = "🦄"
        header?.setTitle(title)

        XCTAssertEqual(header?.titleLabel().text, title)
    }

    func testSetSubtitleSetsSubtitleLabel() {
        let text = "🦄🦄"
        header?.setSubtitle(text)

        XCTAssertEqual(header?.subtitleLabel().text, text)
    }

    func testTitleFont() {
        XCTAssertEqual(header?.titleLabel().font, WPStyleGuide.fontForTextStyle(.title2, fontWeight: .bold))
    }

    func testTitleFontColor() {
        XCTAssertEqual(header?.titleLabel().textColor, WPStyleGuide.darkGrey())
    }

    func testSubtitleFont() {
        XCTAssertEqual(header?.subtitleLabel().font, WPStyleGuide.fontForTextStyle(.subheadline, fontWeight: .regular))
    }

    func testSubtitleFontColor() {
        XCTAssertEqual(header?.subtitleLabel().textColor, WPStyleGuide.greyDarken10())
    }
}
