//___FILEHEADER___

// View
import SwiftUI

struct ___FILEBASENAMEASIDENTIFIER___View: View {
    @State private var oo = ___FILEBASENAMEASIDENTIFIER___OO()
    
    var body: some View {
        List(oo.data) { datum in
            Text(datum.name)
        }
        .task {
            oo.fetch()
        }
    }
}

#Preview {
    ___FILEBASENAMEASIDENTIFIER___View()
}

// Observable Object
import Observation
import SwiftUI

@Observable
class ___FILEBASENAMEASIDENTIFIER___OO {
    var data: [___FILEBASENAMEASIDENTIFIER___DO] = []
    
    func fetch() {
        data = [___FILEBASENAMEASIDENTIFIER___DO(name: "Datum 1"),
                ___FILEBASENAMEASIDENTIFIER___DO(name: "Datum 2"),
                ___FILEBASENAMEASIDENTIFIER___DO(name: "Datum 3")]
    }
}

// Data Object
import Foundation

struct ___FILEBASENAMEASIDENTIFIER___DO: Identifiable {
    let id = UUID()
    var name: String
}
