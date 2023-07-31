import SwiftUI

struct SymbolGrid: View {

    /*symbols*/
    {
        @State private var symbols = [
            Symbol(name: "tshirt"),
            Symbol(name: "eyes"),
            Symbol(name: "eyebrow"),
            Symbol(name: "eyeglasses"),
            ...
        ]
    }
    /*symbols->done right[x,v,x]*/

    /*isAddingSymbol*/
    @State private var isAddingSymbol = false
    /*isAddingSymbol->done right[]*/

    /*isEditing*/
    @State private var isEditing = false
    /*isEditing->done right[]*/

    /*---All variables above this line---*/

    /*ScrollView with LazyVGrid(Section 4: s2-4)*/
    {
        ScrollView {
            LazyVGrid(columns: /*TODO*/) {
                ForEach()
            }
        }
    }
    ScrollView {
        LazyVGrid(columns: ?) {
            ForEach(symbols) { symbol in 
                NavigationLink(destination: SymbolGridDetail(symbol: symbol)) {
                    Image(systemName: symbol.name)
                        .resizable()
                        .scaledToFit()
                        .symbolRenderingMode(.hierarchical)
                        .foregroundColor(.accentColor)
                        .ignoreSafeArea(.container, edges: .bottom)
                        .cornerRadius(8)
                }
            }
        }
    }
    /*ScrollView with LazyVGrid->done right[x,-,x?,x,x] 
    ? = forgot less than 3 attributes and or their parameters which are provided by xcode*/

    /*toolbar ScrollView attribute(Sec 5: s3*/
    .toolbar {
        ToolbarItem(placement: .navigationBarLeading) {
            Button(isEditing ? "Done" : "Edit") {
                withAnimation(isEditing.toggle())
            }
        }

        ToolbarItem(placement: .navigationBarTrailing) {
            Button {
                isAddingSymbol = true
            } label: {
                Image(systemName: "plus")
            }
        }
        .disabled(isEditing)
    }
    /*toolbar ScrollView attribute->done right[x,x,x,x]*/



}