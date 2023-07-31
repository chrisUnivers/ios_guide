import SwiftUI

struct SymbolDetail: View {

    /*symbol*/
    {
        var symbol: Symbol
    }
    /*symbol*/

    /*Image in body View*/
    {
        Image(systemName: symbol.name)
            .resizable()
            .scaledToFit()
            .symbolRenderingMode(.hierarchical)
            .foregroundColor(.accentColor)
    }
    /*Image in body View->done right[v,x]*/

    /*VStack*/
    {
        VStack {
            Text(system.name)
                .font(
                    .system(.largeTitle, design: .rounded)
                )
        }
    }
    /*VStack->done right[x]*/

}