import SwiftUI
import PlaygroundTester

@main
struct SwiftTestDrivenApp: App {
    init() {
         PlaygroundTester.PlaygroundTesterConfiguration.isTesting = true
    }
    var body: some Scene {
        WindowGroup {
            PlaygroundTester.PlaygroundTesterWrapperView {
                // YourContentView()
            }
        }
    }
}
