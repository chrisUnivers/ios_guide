/*ScrollView attribute(Sec 5: sX*/
    {
        .navigationTitle("My Symbols")
        .navigationBarTitleDisplayMode(.inline)
        .sheet(isPresented: $isAddingSymbol, onDismiss: addSymbol) {
            SymbolPicker(symbol: $selectedSymbol)
        }
    }
/*ScrollView attributes->done right[]*/
