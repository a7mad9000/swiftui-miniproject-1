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
        NavigationView{
            VStack{
                Image(B.bImage).resizable().frame(width: 300, height: 300, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                TextField("اسم المستلم", text: $name)
                TextField("الهاتف", text: $phone)
                Stepper("عدد الساعات \(hour)", value: $hour, in: 1...24)
                Stepper("عدد الدراجات \(num)",value: $num, in: 1...10)
                Spacer()
                
                Text("\(B.pricePerHour * Double(hour) * Double(num), specifier: "%.2f")")
                Text("المبلغ الكلي")
                if hour*num != 0{
                    NavigationLink(
                        destination: Bill(name: name, hours: hour, phone: phone, price:  (B.pricePerHour * Double(hour) * Double(num))),
                        label: {
                            Text("اضغط للمتابعة")
                                .padding()
                                .frame(minWidth: 0, idealWidth: 100, maxWidth: .infinity)
                                .foregroundColor(.white)
                                .background(Color.blue)
                                .clipShape(RoundedRectangle(cornerRadius: 10))
                        })
                }
            }
        }.padding()
    }
}

struct bikeListR_Previews: PreviewProvider {
    static var previews: some View {
        bikeListR(B: bikes[0])
    }
}
