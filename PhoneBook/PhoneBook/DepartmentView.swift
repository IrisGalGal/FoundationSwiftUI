//
//  DepartmentView.swift
//  PhoneBook
//
//  Created by Iris GalGal on 1/10/24.
//

import SwiftUI

struct DepartmentView: View {
    var departments: [Department]
    var body: some View {
        VStack{
            Text("Deparments")
            List(departments){ department in
                NavigationLink {
                    EmployeeView(employees: department.employees)
                } label: {
                    Text(department.departmentName)
                }
            }
        }
    }
}

#Preview {
    DepartmentView(departments: [Department(departmentName: "HR", employees: [Employee]()), Department(departmentName: "OR", employees: [Employee]())])
}
