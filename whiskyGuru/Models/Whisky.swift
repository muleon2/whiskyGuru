import Foundation

struct Whisky: Identifiable {
    let id = UUID()
    let name: String
    let distillery: String
    let age: Int
    let region: String
    let description: String
    let price: Double
    let imageURL: String?
} 