// The MIT License (MIT)
//
// https://github.com/DevYeom/Coral

import LineSorter
import SwiftUI

struct LineSorterExampleView: View {

    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("Hello, world!")
        }
        .padding()
        .onAppear {
            LineSorter.hello()
        }
    }

}

struct LineSorterExampleView_Previews: PreviewProvider {

    static var previews: some View {
        LineSorterExampleView()
    }

}
