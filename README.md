# snapshots
A starter project for snapshot testing

# To copy paste:
```
FB_REFERENCE_IMAGE_DIR
$(SOURCE_ROOT)/$(PROJECT_NAME)SnapshotTests/ReferenceImages
IMAGE_DIFF_DIR
$(SOURCE_ROOT)/$(PROJECT_NAME)SnapshotTests/FailureDiffs
```
```
target "SnapshotsSnapshotTests" do
  use_frameworks!
  pod 'iOSSnapshotTestCase'
end
```
```
import FBSnapshotTestCase
@testable import Snapshots
```
```
class CardViewTests: FBSnapshotTestCase {
```
```
func testSingleLineCardView() {
    // Given
    let sut = CardView()

    // When
    sut.label.text = "Single line”

    // Then
    FBSnapshotVerifyView(sut)
}
```
```
override func setUp() {
    super.setUp()
    recordMode = true
}
```