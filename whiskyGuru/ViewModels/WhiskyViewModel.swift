import Foundation

class WhiskyViewModel: ObservableObject {
    @Published var whiskies: [Whisky] = []
    @Published var searchText: String = ""
    
    var filteredWhiskies: [Whisky] {
        if searchText.isEmpty {
            return whiskies
        } else {
            return whiskies.filter { $0.name.localizedCaseInsensitiveContains(searchText) }
        }
    }
    
    init() {
        // Sample data
        whiskies = [
            Whisky(name: "Macallan 18 Year Old", distillery: "Macallan", age: 18, region: "Speyside", description: "Rich and complex with notes of dried fruits and spices", price: 299.99, imageURL: nil),
            Whisky(name: "Laphroaig 10 Year Old", distillery: "Laphroaig", age: 10, region: "Islay", description: "Intensely smoky with medicinal notes", price: 49.99, imageURL: nil),
            Whisky(name: "Glenfiddich 12 Year Old", distillery: "Glenfiddich", age: 12, region: "Speyside", description: "Fresh and fruity with a hint of oak", price: 39.99, imageURL: nil),
            Whisky(name: "Ardbeg Uigeadail", distillery: "Ardbeg", age: 0, region: "Islay", description: "Rich and smoky with sherry influence", price: 79.99, imageURL: nil),
            Whisky(name: "Balvenie DoubleWood 12", distillery: "Balvenie", age: 12, region: "Speyside", description: "Sweet and complex with honey notes", price: 59.99, imageURL: nil)
        ]
    }
} 