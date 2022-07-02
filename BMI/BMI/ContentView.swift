//
//  ContentView.swift
//  BMI
//
//  Created by Yousef Almutairy on 02/07/2022.
//

import SwiftUI

struct ContentView: View {
    @State var H = ""
    @State var W = ""
    @State var BMI = 0.0
    @State var condition = ""
    
    var body: some View {
        
        VStack {
            
            Text("ادخل لطول و الوزن")
            
            TextField("الطول", text: $H)
                .padding()
            TextField("الوزن", text: $W)
                .padding()
           
            Button {
                BMI = BMIC(H: Double(H)!, W: Double(W)!)
                if BMI <= 20 {
                    condition = "ضعيف"
                }
                else if BMI <= 25 {
                    condition = "جيد"
                } else {
                    condition = "سمين"
                }
                
            } label: {
                Text(" احسب")
                    .padding()
                    .background(Color.gray)
                    .foregroundColor(Color.white)
                    .clipShape(RoundedRectangle(cornerRadius: 16))
                    
            }
Text("BMI = \(BMI)")
            Text("الحاله = \(condition)")
                }
                }
    
    
    func BMIC(H:Double,W:Double) -> Double {
        let result = W/(H*H)
        
        return result
        
    }
    
    
    
                
                struct ContentView_Previews: PreviewProvider {
                    static var previews: some View {
                        ContentView()
                    }
                }
}
