import SwiftUI

struct AppColors {
    static let blackColor = Color(.black)
    static let whiteColor = Color(.white)
    static let defaultTextColor = Color(0xff72737C);
    static let defaultTextColorTwo = Color(0xff363848);
    static let secondaryText = Color(0xff0079C1);
    static let redColor = Color(0xffDB1616);
    static let primaryColor = Color(0xff2E67FF);
    static let appBarColor = Color(0xff00457C);
    static let checkDeactive = Color(0xffA9A9A9);
    static let indicatorColor = Color(0xff15A449);
    static let containerBorder = Color(0xffCCCCCC);
    static let unFocusColor = Color(0xff72737C);
//    Color shimmerBaseColor = Colors.grey[300]!;
//    Color shimmerHighlightColor = Colors.grey[100]!;
    
}


extension Color {
    init(_ hexColor: UInt32) {
        self.init(uiColor: .init(
                      red: CGFloat(0xFF & (hexColor >> 0x10)) / 0xFF,
                    green: CGFloat(0xFF & (hexColor >> 0x08)) / 0xFF,
                     blue: CGFloat(0xFF & (hexColor >> 0x00)) / 0xFF,
                    alpha: 1.0))
    }
}
