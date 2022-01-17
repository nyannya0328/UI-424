//
//  Extencions.swift
//  UI-424
//
//  Created by nyannyan0328 on 2022/01/17.
//

import SwiftUI

extension View{

func popUpNavigation<Content : View>(horizontalPadding : CGFloat,show : Binding<Bool>,@ViewBuilder content : @escaping()->Content) -> some View{
    
    
      return self
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        
        .overlay{
            
            
            if show.wrappedValue{
                GeometryReader{proxy in
                    
                    
                    let size = proxy.size
                    
                    Color.red
                        .ignoresSafeArea()
                    
                    
                    NavigationView{
                        
                        content()
                    }
                    .frame(width: size.width - horizontalPadding, height: size.height / 1.5)
                    .padding(20)
                    .cornerRadius(10)
                    
                }
                
                
                
                
            }
            
          
            
            
            
            
        }
    
    
}
}
