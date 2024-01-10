//
//  ContentView.swift
//  PhoneBook
//
//  Created by Iris GalGal on 1/9/24.
//

import SwiftUI

struct CompanyView: View {
    @State var companies = [Company]()
    var dataService = DataService()
    
    var body: some View {
        NavigationStack {
            VStack{
                Text("List Companies")
                    .font(.title)
                List(companies) {item in
                    NavigationLink {
                        DepartmentView(departments: item.departments)
                    } label: {
                        Text(item.companyName)
                    }
                }
                
            }
            
        }
        .ignoresSafeArea()
        .onAppear(perform: {
            companies = dataService.getFile()
        })
    }
}

#Preview {
    CompanyView()
}
