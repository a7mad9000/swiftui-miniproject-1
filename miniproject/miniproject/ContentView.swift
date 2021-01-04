//
//  ContentView.swift
//  miniproject
//
//  Created by ahmad alburaimi on 03/01/2021.
//

import SwiftUI

struct ContentView: View {
    var c=1
    var body: some View {
        NavigationView{
            ScrollView{
                LazyVStack(){
                    Text("مرحباً بك ،، يمكنك اختيار الدراجة المناسبة لك من القائمة وأكمل بياناتك للحجز")
                    VStack{
                    List(bikes){ bike in
                        NavigationLink(
                            destination: /*@START_MENU_TOKEN@*/Text("Destination")/*@END_MENU_TOKEN@*/,
                            label: {
                                B_row(bike: bike)       })
                    }.navigationTitle("تأجير الدراجات")
                    }
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
        B_row(bike: bikes[0])
    }
}


struct B_row: View {
    let bike: Bike
    
    var body: some View{
        HStack{
            Text("\(bike.id)")
                .padding().background(Color.init(#colorLiteral(red: 0.2588235438, green: 0.7568627596, blue: 0.9686274529, alpha: 1))).clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                .foregroundColor(.white)
            Image(bike.bImage).resizable().scaledToFit().frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/)
        }
    }
}
