//
//  EmployeeView.swift
//  PhoneBook
//
//  Created by Iris GalGal on 1/10/24.
//

import SwiftUI

struct EmployeeView: View {
    var employees: [Employee]
    
    var body: some View {
        VStack{
            List(employees){ employe in
                HStack{
                    Text(employe.name)
                        .font(.title)
                    Spacer()
                    Text(employe.position)
                        .font(.subheadline)
                }
                VStack{
                        Button(action: {
                            if let url = URL(string: "tel:\(employe.phone.replacingOccurrences(of: " ", with: ""))"){
                                if UIApplication.shared.canOpenURL(url){
                                    UIApplication.shared.open(url)
                                }
                            }
                        }, label: {
                            HStack{
                                Image(systemName: "phone.circle")
                                Text(employe.phone.replacingOccurrences(of: " ", with: ""))
                            }
                        })
                    }
                    VStack{
                        Button(action: {
                            if let url = URL(string: "mailto:\(employe.email)"){
                                if UIApplication.shared.canOpenURL(url){
                                    UIApplication.shared.open(url)
                                }
                            }
                        }, label: {
                            HStack{
                                Image(systemName: "mail")
                                Text(employe.email)
                            }
                        })
                }
            }
        }
    }
}

#Preview {
    EmployeeView(employees: [Employee(name: "John Smith", position: "HR Manager", email: "john.smith@abccorp.com", phone: "+1 (123) 456-7890"), Employee(name: "Emily Davis", position: "HR Specialist", email: "emily.davis@abccorp.com", phone: "+1 (234) 567-8901")])
}
