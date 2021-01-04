//
//  bikeListR.swift
//  miniproject
//
//  Created by ahmad alburaimi on 03/01/2021.
//

import SwiftUI

struct bikeListR: View {
    var B : Bike
    @State var name=""
    @State var phone=""
    @State var hour=0
    @State var num=0

    
    var body: some View {
        VStack{
            Image(B.bImage).resizable().frame(width: 300, height: 300, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            TextField("اسم المستلم", text: $name)
            TextField("الهاتف", text: $phone)
            Stepper("عدد الساعات \(hour)", value: $hour, in: 1...12)
            Stepper("عدد الدراجات \(num)",value: $num, in: 1...10)
            Spacer()
            Text("")
            Text("")
        }.padding()
    }
}

struct bikeListR_Previews: PreviewProvider {
    static var previews: some View {
        bikeListR(B: bikes[0])
    }
}
