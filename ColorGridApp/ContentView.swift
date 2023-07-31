import SwiftUI

struct ContentView: View {

    /*ColumnLayout*/
    let columnLayout = Array(repeating: GridItem(), count: 3)
    
    @State private var selectedColor = Color.gray

    /*allColors*/ 
    let allColors: [Color] = [
        .pink,
        .red,
        .orange,
        .yellow,
        .green,
        .mint,
        .teal,
        .cyan,
        .blue,
        .indigo,
        .purple,
        .brown,
        .gray
    ]

    /*Body View*/ 
    
    var body: some View {

    }

    /*VStack*/ 
    
    VStack {
        Text("Selected Color")
                .font(.body)
                .fontWeight(.semibold)
                .foregroundColor(selectedColor)
                .padding(10)
    }
    

    /*ScrollView*/
    ScrollView {

    }
    .padding(10)

    /*LazyVGrid*/
    
    LazyVGrid(column: columnLayout) {
        ForEach(allColors, id: \.description) { color in 
            Button {
                selectedColor = color
            } label: {
                RoundedRectangle(cornerRadius: 4.0)
                    .aspectRation(1.0, contentMode: ContentMode.fit)
                    .foregroundColor(color)
            }
            .buttonStyle(.plain)
        }
    }

}