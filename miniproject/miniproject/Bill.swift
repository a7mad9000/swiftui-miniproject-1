//
//  Bill.swift
//  miniproject
//
//  Created by ahmad alburaimi on 11/01/2021.
//

import SwiftUI

struct Bill: View {
    @State var name : String
    @State var hours : Int
    @State var phone : String
    @State var price : Double
    @State var color = Color.blue
    @State var t = "ادفع الآن"
    
    var body: some View {
        VStack(alignment: .leading) {
            Text("الفاتورة").font(.largeTitle)
            HStack{
                Text("الاسم")
                Spacer()
                Text(name)
            }.padding(.vertical)
            HStack{
                Text("الساعات")
                Spacer()
                Text("\(hours)")
            }.padding(.vertical)
            HStack{
                Text("رقم الهاتف")
                Spacer()
                Text(phone)
            }.padding(.vertical)
            HStack{
                Text("المبلغ")
                Spacer()
                Text("\(price, specifier: "%.2f")")
            }.padding(.vertical)
            Spacer()
            Button(action: {
                t = "تم الدفع"
                color=Color.green
            }){
                Text(t)
                    .padding()
                    .frame(minWidth: 0, idealWidth: 100, maxWidth: .infinity)
                    .foregroundColor(.white)
                    .background(color)
                    .clipShape(RoundedRectangle(cornerRadius: 10))
            }
        }.padding()
    }
}

struct Bill_Previews: PreviewProvider {
    static var previews: some View {
        Bill(name: "aaa", hours: 0, phone: "111", price: 0.00)
    }
}
