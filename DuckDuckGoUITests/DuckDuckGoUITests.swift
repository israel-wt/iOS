import XCTest

class DuckDuckGoUITests: DuckDuckGoUITestBase {
    //Add tests here
    
    func testBookmarksScreen () {
        app.toolbars["Toolbar"].buttons["Bookmarks"].tap()
    }
}
