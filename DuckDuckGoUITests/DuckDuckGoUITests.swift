import XCTest

class DuckDuckGoUITests: DuckDuckGoUIBooksmarkBase {
    // Add tests here
    
    func testBookmarksScreen() {
        openBookmarksTab()
        validateBooksmarksScreen()
    }
    
    func testCloseBoomarksScreen() {
        testBookmarksScreen()
        closeBookmarksTab()
        XCTAssertFalse(bookmarkNav.staticTexts["Bookmarks"].waitForExistence(timeout: 7))
    }
}
