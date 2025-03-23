import SwiftUI

struct WhiskyRowView: View {
    let whisky: Whisky
    
    var body: some View {
        VStack(alignment: .leading, spacing: 8) {
            Text(whisky.name)
                .font(.headline)
            
            HStack {
                Text(whisky.distillery)
                    .font(.subheadline)
                    .foregroundColor(.secondary)
                
                Spacer()
                
                Text("\(whisky.age) Year")
                    .font(.subheadline)
                    .foregroundColor(.secondary)
            }
            
            Text(whisky.region)
                .font(.caption)
                .foregroundColor(.blue)
            
            Text("$\(String(format: "%.2f", whisky.price))")
                .font(.subheadline)
                .foregroundColor(.green)
        }
        .padding(.vertical, 8)
    }
} 