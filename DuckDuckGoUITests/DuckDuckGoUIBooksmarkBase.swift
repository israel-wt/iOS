import XCTest

class DuckDuckGoUIBooksmarkBase: DuckDuckGoUITestBase {
    
    var bookmarkNav = XCUIApplication().navigationBars["Bookmarks"]
    var tables = XCUIApplication().tables
    
//    func homescreenready
    
    func openBookmarksTab() {
        app.toolbars["Toolbar"].buttons["Bookmarks"].tap()
    }
    
    func validateBooksmarksScreen() {
        XCTAssert(bookmarkNav.staticTexts["Bookmarks"].exists)
        XCTAssert(tables.staticTexts["Favorites"].exists)
        XCTAssert(tables.staticTexts["Bookmarks"].exists)
    }
    
    func closeBookmarksTab() {
        bookmarkNav.buttons["Done"].tap()
    }

}
    
