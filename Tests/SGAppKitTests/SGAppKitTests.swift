import Testing
@testable import SGAppKit

@Test func iconTests() async throws {
  
  for icon in SGIcon.allCases {
    print(icon)
    #expect(icon.image != nil)
    
  }
  
}

