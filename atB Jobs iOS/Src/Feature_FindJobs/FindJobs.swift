import SwiftUI

struct SearchJobsView: View {
    @State private var textFieldInput: String = ""
    @State var showButtomSheet = false
    @State var showButtomSheetJobType = false
    @State var showButtomSheetPostedDate = false
    @State var showButtomSheetSalary = false
    
    @State private var selectedOption = "Option 1"
        let options = ["Option 1", "Option 2", "Option 3", "Option 4"]
    var body: some View {
        VStack{
            VStack {
                HStack {
                    TextField("Find Jobs", text: $textFieldInput)
                    Image(systemName: "magnifyingglass")
                        .resizable()
                        .frame(width: 24, height: 24)
                    
                }
                .padding([.top,.leading,.trailing],
                         10).background(Color(AppColors.whiteColor)).cornerRadius(10).padding([.leading, .trailing], 15)
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack{
                        Button(action: {
                            showButtomSheet = true
                        }) {
                            Image(systemName:"desktopcomputer").font(.system(size: 15)).foregroundColor(Color(AppColors.appBarColor)).frame(width: 35,height: 35).background(AppColors.whiteColor).cornerRadius(8).sheet(isPresented: $showButtomSheet){
                                ShowBottomSheet().presentationDetents([.height(600)])
                            }
                        }
                        Button(action: {
                            showButtomSheetJobType = true
                        }) {
                            HStack{
                                Text("Job Type").font(.system(size: 16)).foregroundColor(Color(AppColors.unFocusColor))
                                Image(systemName:"chevron.down").foregroundColor(Color(AppColors.unFocusColor))
                            }.padding(8).background(Color(AppColors.whiteColor)).cornerRadius(10)
                                .padding(.leading, 15).sheet(isPresented: $showButtomSheetJobType){
                                    JobTypeSheet().presentationDetents([.height(400)])
                                }
                        }
                        Button(action: {
                            showButtomSheetPostedDate = true
                        }) {
                            HStack{
                                Text("Posted date").font(.system(size: 16)).foregroundColor(Color(AppColors.unFocusColor))
                                Image(systemName:"chevron.down").foregroundColor(Color(AppColors.unFocusColor))
                            }.padding(8).background(Color(AppColors.whiteColor)).cornerRadius(10)
                                .padding(.leading, 15).sheet(isPresented: $showButtomSheetPostedDate){
                                    PostedDateSheet().presentationDetents([.height(400)])
                                }
                        }
                        Button(action: {
                            showButtomSheetSalary = true
                        }) {
                            HStack{
                                Text("Salary").font(.system(size: 16)).foregroundColor(Color(AppColors.unFocusColor))
                                Image(systemName:"chevron.down").foregroundColor(Color(AppColors.unFocusColor))
                            }.padding(8).background(Color(AppColors.whiteColor)).cornerRadius(10)
                                .padding(.leading, 15).sheet(isPresented: $showButtomSheetSalary){
                                    SalarySheet().presentationDetents([.height(500)])
                                }
                        }
                    }.padding([.leading, .top, .bottom], 10)
                }
                .frame(maxWidth: .infinity).padding([ .bottom], 10)  // Set specific width and height
                .background(Color(AppColors.appBarColor))
            }.padding(.top, 15).background(Color(AppColors.appBarColor))
            ScrollView{
                VStack{
                    
                    HStack{
                        Text("Browse")
                            .font(.system(size: 16)).fontWeight(.semibold).foregroundColor(Color(AppColors.blackColor))
                        Text("12350")
                            .font(.system(size: 16)).fontWeight(.semibold).foregroundColor(Color(AppColors.secondaryText))
                        Text("jobs")
                            .font(.system(size: 16)).fontWeight(.semibold).foregroundColor(Color(AppColors.blackColor))
                    }
                    VStack{
                        
                        JobBody()
                        JobBody()
                        JobBody()
                        JobBody()
                        Spacer()
                    }.padding()
                }
            }
        }
    }
}
//struct SearchJobsView_Previews: PreviewProvider {
//    static var previews: some View {
//        SearchJobsView()
//    }
//}
struct Top:View {
    var body: some View {
        ZStack(alignment: .top){
            VStack{
                HStack{
                }.frame(width: 100, height: 5).background(Color(AppColors.blackColor))
                HStack{
                    Image("salary_range")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 20, height: 20)
                        .padding(7)
                        .background(AppColors.secondaryText.opacity(0.1))
                        .cornerRadius(20)
                    Text("Filter").font(.system(size: 14)).fontWeight(.bold).padding(.leading,10).foregroundColor(Color(AppColors.secondaryText))
                    Spacer()
                    HStack{
                        Text("Clear Filter")
                        Image("salary_range")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 15, height: 15)
                            .padding(7)
                            .background(AppColors.secondaryText.opacity(0.1))
                            .cornerRadius(20)
                    }.padding(EdgeInsets(top: 10, leading: 15, bottom: 10, trailing: 15)).overlay(RoundedRectangle(cornerRadius: 30).stroke(Color.black, lineWidth:0.5))
                }.padding().background(Color(AppColors.whiteColor)).background(RoundedRectangle(cornerRadius: 8)
                    .shadow(color: Color.black.opacity(0.2), radius: 3, x: 0, y: 5))
            }
        }
    }
}
struct Bottom:View {
    var body: some View {
        ZStack(alignment: .bottom){
            HStack{
                Text("Show 18488 jobs").font(.system(size: 16)).fontWeight(.bold)
                Spacer()
                Text("Apply Filter").padding(EdgeInsets(top: 15, leading: 40, bottom: 15, trailing: 40)).font(.system(size: 16)).fontWeight(.bold)
                    .background(Color(AppColors.secondaryText))
                    .foregroundColor(.white)
                    .cornerRadius(15)
            }.frame(maxWidth: .infinity).padding().background(Color(AppColors.whiteColor)).background(RoundedRectangle(cornerRadius: 8)
                .shadow(color: Color.black.opacity(0.2), radius: 3, x: 5, y: -5))
        }
    }
}
struct JobType:View {
    let data = ["Hourly", "Weekly", "Monthly", "four", "Yearly", "P. base"]

    var body: some View {
        let columns = [
            GridItem(.flexible()),
            GridItem(.flexible()),
            GridItem(.flexible())
        ]
        Text("Job Type").font(.system(size: 16)).fontWeight(.bold).foregroundColor(Color(AppColors.blackColor)).frame(maxWidth: .infinity, alignment: .leading).padding(.leading,15)
        LazyVGrid(columns: columns, spacing: 20) {
            ForEach(data, id: \.self) { item in
                Button(action: {
                    print("\(item) tapped")
                }) {
                    Text(item).font(.system(size: 16)).fontWeight(.bold).foregroundColor(Color(AppColors.secondaryText)).padding(EdgeInsets(top: 10, leading: 15, bottom: 10, trailing: 15)).overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.black, lineWidth:1))
                }
            }
        }.padding()
    }
}

struct PostedDate:View {
    let data = ["Today", "Last 3 Days", "Last Week", "Last 2 Weeks", "Anytime"]

    var body: some View {
        let columns = [
            GridItem(.flexible()),
            GridItem(.flexible()),
            GridItem(.flexible())
        ]
        Text("Posted Date").font(.system(size: 16)).fontWeight(.bold).foregroundColor(Color(AppColors.blackColor)).frame(maxWidth: .infinity, alignment: .leading).padding(.leading,15)
        LazyVGrid(columns: columns, spacing: 20) {
            ForEach(data, id: \.self) { item in
                Button(action: {
                    print("\(item) tapped")
                }) {
                    Text(item).font(.system(size: 16)).fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/).foregroundColor(Color(AppColors.secondaryText)).padding(EdgeInsets(top: 10, leading: 15, bottom: 10, trailing: 15)).overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.black, lineWidth:1))
                }
            }
        }.padding()
    }
}
struct Salary:View {
    let data = ["Today", "Last 3 Days", "Last Week", "Last 2 Weeks", "Anytime"]

    var body: some View {
        let columns = [
            GridItem(.flexible()),
            GridItem(.flexible()),
            GridItem(.flexible())
        ]
        Text("Salary type").font(.system(size: 16)).fontWeight(.bold).foregroundColor(Color(AppColors.blackColor)).frame(maxWidth: .infinity, alignment: .leading).padding(.leading,15)
        LazyVGrid(columns: columns, spacing: 20) {
            ForEach(data, id: \.self) { item in
                Button(action: {
                    print("\(item) tapped")
                }) {
                    Text(item).font(.system(size: 16)).fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/).foregroundColor(Color(AppColors.secondaryText)).padding(EdgeInsets(top: 10, leading: 15, bottom: 10, trailing: 15)).overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.black, lineWidth:1))
                }
            }
        }
        .padding()
    }
}

struct SalaryRange:View {
    @State private var minSelectedOption = "20k"
    @State private var maxSelectedOption = "100k"
        let minRangeOptions = ["0k","20k","35k", "60k", "100k","200k"]
        let maxRangeOptions = ["20k","35k", "60k", "100k","200k", "200k++"]
    var body: some View {
    
        HStack{
            Picker("Select an option", selection: $minSelectedOption) {
                ForEach(minRangeOptions, id: \.self) {
                    Text($0)
                }
            }
            .pickerStyle(MenuPickerStyle())
            .padding([.leading], 15)
            
            Picker("Select an option", selection: $maxSelectedOption) {
                ForEach(maxRangeOptions, id: \.self) {
                    Text($0)
                }
            }
            .pickerStyle(MenuPickerStyle())
            .padding([.trailing], 15)
        }
    }
}

struct ShowBottomSheet:View {
    @State private var text: String = ""
    @State private var isChecked = false
    let data = ["Hourly", "Weekly", "Monthly", "four", "Yearly", "P. base"]

    @State private var minSelectedOption = "20k"
    @State private var maxSelectedOption = "100k"
        let minRangeOptions = ["0k","20k","35k", "60k", "100k","200k"]
        let maxRangeOptions = ["20k","35k", "60k", "100k","200k", "200k++"]
    
    
    @State var value = ""
        var placeholder = "Select Client"
        var dropDownList = ["PSO", "PFA", "AIR", "HOT"]

    var body: some View {
        let columns = [
            GridItem(.flexible()),
            GridItem(.flexible()),
            GridItem(.flexible())
        ]
        Top()
        VStack{
            ScrollView{
                VStack{
                    HStack{
                        TextField("Company name", text: $text).frame(maxWidth: .infinity, alignment: .leading)
                        Spacer()
                        if !text.isEmpty {
                            Button(action: {
                                text = ""
                            }) {
                                Image(systemName: "xmark.circle.fill")
                                    .foregroundColor(.gray)
                            }
                        }
                    }.padding(EdgeInsets(top: 15, leading: 0,bottom: 15, trailing: 15)).overlay(
                        RoundedRectangle(cornerRadius: 8)
                            .stroke(Color.gray, lineWidth: 1)).padding(10).frame(maxWidth: .infinity, alignment: .leading)
                    
                    HStack {
                        
                        TextField("Location", text: $text)
                        if !text.isEmpty {
                            Button(action: {
                                text = ""
                            }) {
                                Image(systemName: "xmark.circle.fill")
                                    .foregroundColor(.gray)
                            }
                        }}.padding(EdgeInsets(top: 15, leading: 15, bottom: 15, trailing: 15)).overlay(
                            RoundedRectangle(cornerRadius: 8)
                                .stroke(Color.gray, lineWidth: 1)) .padding(10)
                    HStack {
                        TextField("Job tile", text: $text)
                        if !text.isEmpty {
                            Button(action: {
                                text = ""
                            }) {
                                Image(systemName: "xmark.circle.fill")
                                    .foregroundColor(.gray)
                            }
                        }}.padding(EdgeInsets(top: 15, leading: 15, bottom: 15, trailing: 15)).overlay(
                            RoundedRectangle(cornerRadius: 8)
                                .stroke(Color.gray, lineWidth: 1)) .padding(10)
                    Divider().background(Color(AppColors.unFocusColor)).padding(EdgeInsets(top: 15, leading: 15, bottom: 5, trailing: 15))
                    HStack{
                        Toggle(isOn: $isChecked) {
                            //Text("I agree to the terms and conditions")
                        }
                        .toggleStyle(CheckboxToggleStyle())
                        Text("Live jobs")
                        Spacer()
                        Toggle(isOn: $isChecked) {
                            //Text("I agree to the terms and conditions")
                        }
                        .toggleStyle(CheckboxToggleStyle())
                        Text("High paid")
                    }.padding()
                    
                    Divider().background(Color(AppColors.unFocusColor)).padding(EdgeInsets(top: 2, leading: 15, bottom: 5, trailing: 15))
                    Salary()
                    Divider().background(Color(AppColors.unFocusColor)).padding(EdgeInsets(top: 2, leading: 15, bottom: 5, trailing: 15))
                    SalaryRange()
                    Divider().background(Color(AppColors.unFocusColor)).padding(EdgeInsets(top: 2, leading: 15, bottom: 5, trailing: 15))
                    HStack{
                        Toggle(isOn: $isChecked) {
                            //Text("I agree to the terms and conditions")
                        }
                        .toggleStyle(CheckboxToggleStyle())
                        
                        Text("Negotiable")
                    }
                    Divider().background(Color(AppColors.unFocusColor)).padding(EdgeInsets(top: 2, leading: 15, bottom: 5, trailing: 15))
                    Text("Experiance").font(.system(size: 16)).fontWeight(.bold).foregroundColor(Color(AppColors.blackColor)).frame(maxWidth: .infinity, alignment: .leading).padding(.leading,15)
                    Menu {
                        ForEach(dropDownList, id: \.self){ client in
                            Button(client) {
                                self.value = client
                            }
                        }
                    } label: {
                        HStack {
                            Text(value.isEmpty ? placeholder : value)
                            Spacer()
                            Image(systemName: "chevron.down")
                                .foregroundColor(Color.orange)
                                .font(Font.system(size: 20, weight: .bold))
                            
                        }.padding(EdgeInsets(top: 15, leading: 15, bottom: 15, trailing: 15)).frame(maxWidth: .infinity, maxHeight: 50).overlay(
                            RoundedRectangle(cornerRadius: 8)
                                .stroke(Color.gray, lineWidth: 1)).padding([.leading, .trailing, .bottom], 10)
                    }
                    Text("Skill").font(.system(size: 16)).fontWeight(.bold).foregroundColor(Color(AppColors.blackColor)).frame(maxWidth: .infinity, alignment: .leading).padding(.leading,15)
                    Menu {
                        ForEach(dropDownList, id: \.self){ client in
                            Button(client) {
                                self.value = client
                            }
                        }
                    } label: {
                        HStack {
                            Text(value.isEmpty ? placeholder : value)
                            Spacer()
                            Image(systemName: "chevron.down")
                                .foregroundColor(Color.orange)
                                .font(Font.system(size: 20, weight: .bold))
                            
                        }.padding(EdgeInsets(top: 15, leading: 15, bottom: 15, trailing: 15)).frame(maxWidth: .infinity, maxHeight: 50).overlay(
                            RoundedRectangle(cornerRadius: 8)
                                .stroke(Color.gray, lineWidth: 1)).padding([.leading, .trailing, .bottom], 10)
                    }
                    Text("Qualification").font(.system(size: 16)).fontWeight(.bold).foregroundColor(Color(AppColors.blackColor)).frame(maxWidth: .infinity, alignment: .leading).padding(.leading,15)
                    Menu {
                        ForEach(dropDownList, id: \.self){ client in
                            Button(client) {
                                self.value = client
                            }
                        }
                    } label: {
                        HStack {
                            Text(value.isEmpty ? placeholder : value)
                            Spacer()
                            Image(systemName: "chevron.down")
                                .foregroundColor(Color.orange)
                                .font(Font.system(size: 20, weight: .bold))
                            
                        }.padding(EdgeInsets(top: 15, leading: 15, bottom: 15, trailing: 15)).frame(maxWidth: .infinity, maxHeight: 50).overlay(
                            RoundedRectangle(cornerRadius: 8)
                                .stroke(Color.gray, lineWidth: 1)).padding([.leading, .trailing, .bottom], 10)
                    }
                    Text("Department").font(.system(size: 16)).fontWeight(.bold).foregroundColor(Color(AppColors.blackColor)).frame(maxWidth: .infinity, alignment: .leading).padding(.leading,15)
                    Menu {
                        ForEach(dropDownList, id: \.self){ client in
                            Button(client) {
                                self.value = client
                            }
                        }
                    } label: {
                        HStack {
                            Text(value.isEmpty ? placeholder : value)
                            Spacer()
                            Image(systemName: "chevron.down")
                                .foregroundColor(Color.orange)
                                .font(Font.system(size: 20, weight: .bold))
                            
                        }.padding(EdgeInsets(top: 15, leading: 15, bottom: 15, trailing: 15)).frame(maxWidth: .infinity, maxHeight: 50).overlay(
                            RoundedRectangle(cornerRadius: 8)
                                .stroke(Color.gray, lineWidth: 1)).padding([.leading, .trailing, .bottom], 10)
                    }
                    Text("Industry").font(.system(size: 16)).fontWeight(.bold).foregroundColor(Color(AppColors.blackColor)).frame(maxWidth: .infinity, alignment: .leading).padding(.leading,15)
                    Menu {
                        ForEach(dropDownList, id: \.self){ client in
                            Button(client) {
                                self.value = client
                            }
                        }
                    } label: {
                        HStack {
                            Text(value.isEmpty ? placeholder : value)
                            Spacer()
                            Image(systemName: "chevron.down")
                                .foregroundColor(Color.orange)
                                .font(Font.system(size: 20, weight: .bold))
                            
                        }.padding(EdgeInsets(top: 15, leading: 15, bottom: 15, trailing: 15)).frame(maxWidth: .infinity, maxHeight: 50).overlay(
                            RoundedRectangle(cornerRadius: 8)
                                .stroke(Color.gray, lineWidth: 1)).padding([.leading, .trailing, .bottom], 10)
                    }
                    Text("Position").font(.system(size: 16)).fontWeight(.bold).foregroundColor(Color(AppColors.blackColor)).frame(maxWidth: .infinity, alignment: .leading).padding(.leading,15)
                    Menu {
                        ForEach(dropDownList, id: \.self){ client in
                            Button(client) {
                                self.value = client
                            }
                        }
                    } label: {
                        HStack {
                            Text(value.isEmpty ? placeholder : value)
                            Spacer()
                            Image(systemName: "chevron.down")
                                .foregroundColor(Color.orange)
                                .font(Font.system(size: 20, weight: .bold))
                            
                        }.padding(EdgeInsets(top: 15, leading: 15, bottom: 15, trailing: 15)).frame(maxWidth: .infinity, maxHeight: 50).overlay(
                            RoundedRectangle(cornerRadius: 8)
                                .stroke(Color.gray, lineWidth: 1)).padding([.leading, .trailing, .bottom], 10)
                    }
                   PostedDate()
                    Divider().background(Color(AppColors.unFocusColor)).padding(EdgeInsets(top: 2, leading: 15, bottom: 5, trailing: 15))
                   JobType()
                    Divider().background(Color(AppColors.unFocusColor)).padding(EdgeInsets(top: 2, leading: 15, bottom: 5, trailing: 15))
                    Text("Job Level").font(.system(size: 16)).fontWeight(.bold).foregroundColor(Color(AppColors.blackColor)).frame(maxWidth: .infinity, alignment: .leading).padding(.leading,15)
                    LazyVGrid(columns: columns, spacing: 20) {
                        ForEach(data, id: \.self) { item in
                            Button(action: {
                                print("\(item) tapped")
                            }) {
                                Text(item).font(.system(size: 16)).fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/).foregroundColor(Color(AppColors.secondaryText)).padding(EdgeInsets(top: 10, leading: 15, bottom: 10, trailing: 15)).overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.black, lineWidth:1))
                            }
                        }
                    }.padding()
                    Divider().background(Color(AppColors.unFocusColor)).padding(EdgeInsets(top: 2, leading: 15, bottom: 5, trailing: 15))
                    Text("Gender").font(.system(size: 16)).fontWeight(.bold).foregroundColor(Color(AppColors.blackColor)).frame(maxWidth: .infinity, alignment: .leading).padding(.leading,15)
                    LazyVGrid(columns: columns, spacing: 20) {
                        ForEach(data, id: \.self) { item in
                            Button(action: {
                                print("\(item) tapped")
                            }) {
                                Text(item).font(.system(size: 16)).fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/).foregroundColor(Color(AppColors.secondaryText)).padding(EdgeInsets(top: 10, leading: 15, bottom: 10, trailing: 15)).overlay(RoundedRectangle(cornerRadius: 10).stroke(Color.black, lineWidth:1))
                            }
                        }
                    }.padding()
                    Divider().background(Color(AppColors.unFocusColor)).padding(EdgeInsets(top: 2, leading: 15, bottom: 5, trailing: 15))
                    
                    Text("Search job by benifit").frame(maxWidth: .infinity).padding().font(.system(size: 16)).fontWeight(.bold)
                        .background(Color(AppColors.secondaryText))
                        .foregroundColor(.white)
                        .cornerRadius(15).padding([.leading, .trailing], 30)
                    Spacer()
                }
            }
            Bottom()
        }
    }
    
    struct CheckboxToggleStyle: ToggleStyle {
        func makeBody(configuration: Configuration) -> some View {
            Button(action: {
                configuration.isOn.toggle()
            }) {
                HStack {
                    Image(systemName: configuration.isOn ? "checkmark.square" : "square")
                        .foregroundColor(configuration.isOn ? .blue : .gray)
                    configuration.label
                }
            }.buttonStyle(PlainButtonStyle())
        }
        
    }
    
}


struct JobTypeSheet:View {
    var body: some View {
        Top()
        VStack{
            ScrollView{
                
                Spacer()
                JobType()
                Spacer()
                
            }
        }
        Bottom()
    }
}
struct PostedDateSheet:View {
    var body: some View {
        Top()
        VStack{
            ScrollView{
                
                Spacer()
                JobType()
                Spacer()
                
            }
        }
        Bottom()
    }
}

struct SalarySheet:View {
    var body: some View {
        Top()
        VStack{
            ScrollView{
                
                Spacer()
                Salary()
                SalaryRange()
                Spacer()
                
            }
        }
        Bottom()
    }
}

