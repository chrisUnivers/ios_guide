import SwiftUI

struct ContentView: View {



/*ColumnLayout*/
{
    let columnLayout = Array(repeating: GridItem(), count: 3)
}
/*ColumnLayout*/

/*selectedColor*/
{
    @State private var selectedColor = Color.gray
}
@State private var selectedColor = Color.gray
/*selectedColor*/


/*allColors*/ 
{
    let allColors: [Color] = [
        .pink,
        .red,
        .orange,
        .yellow,
        .green,
        .mint,
        .teal,
        .cyan,
        .indigo,
        .purple,
        .brown,
        .gray
    ]
    
}
/*allColors*/ 

/*Body View*/ 
{
    var body: some View {
        /*VStack*/
        {
            VStack {
                Text("Some text above the grid")
                    .font(.body)
                    .fontWeight(.semibold)
                    .foregroundColor(selectedColor)
                    .padding(10)
            }
            .padding(10)
        }
        /*VStack*/
    }
}
/*Body View*/ 

/*VStack*/
{
    VStack {
        Text("Selected Color")
        /*Not necessarly to remember Text 
        attributes as one can look them up and
        Xcode makes suggestions.
        */
                .font(.body)
                .fontWeight(.semibold)
                .foregroundColor(selectedColor)
                .padding(10)
    }
}
/*VStack*/    
    
/*ScrollView*/
{
    ScrollView {

        /*Attributes*/
        .padding(10)
    }
    ScrollView {
    
    }
}
/*ScrollView*/

/*LazyVGrid*/
{
    LazyVGrid(column: columnLayout) {
        ForEach(allColors, id: \.description) { color in 
            Button {
                selectedColor = color
            } label: {
                RoundedRectangle(cornerRadius: 4.0)
                    .aspectRatio(1.0, contentMode: ContentMode.fit)
                    .foregroundColor(color)
            }
            /*Button Attributes*/
            .buttonStyle(.plain)
        }
        /*LazyVGrid Attributes*/
    }
    .padding(10)
}
/*LazyVGrid*/

/*ForEach inside the LazyVGrid*/
{
    ForEach(allColors, \.description) {color in 
        /*Putting the button here for convenience*/
        Button {
            selectedColor = color
        } label: {
            RoundedRectangle(cornerRadius: 4.0)
                .aspectRatio(1.0, contentMode: ContentMode.fit)
                .foregroundColor(color)
        }
        .buttonStyle(plain)
    }
}

}
