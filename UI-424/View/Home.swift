//
//  Home.swift
//  UI-424
//
//  Created by nyannyan0328 on 2022/01/17.
//

import SwiftUI

struct Home: View {
    @State var show : Bool = false
    var body: some View {
        NavigationView{
            
            
            Button("Toch ME"){
                
                
                withAnimation{
                    
                    show.toggle()
                }
                
                
                
            }
            .navigationTitle("Custom PopUps")
            .navigationBarTitleDisplayMode(.inline)
            .popUpNavigation(horizontalPadding: 40, show: $show) {
                
                
                List{
                    
                    
                    ForEach(tasks){task in
                        
                        NavigationLink {
                            
                            Text(task.taskTitle)
                                .navigationBarTitle(task.taskTitle)
                                
                            
                        } label: {
                            
                            
                            Text(task.taskDescription)
                                .navigationBarTitle("Next")
                                .navigationBarTitleDisplayMode(.inline)
                            
                            
                        }

                        
                        
                    }
                }
                
                .toolbar {
                    
                    ToolbarItem(placement: .navigationBarTrailing) {
                        
                        Button {
                            
                        } label: {
                            
                            Image(systemName: "plus")
                                .font(.caption)
                        }

                    }
                    
                    ToolbarItem(placement: .navigationBarLeading) {
                        
                        Button {
                            
                            show.toggle()
                            
                        } label: {
                            
                          Text("Close")
                                .font(.caption)
                        }

                    }
                }
                
                
                
            }
        }
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}
