import SwiftUI
import UIKit
import UIExtensions

extension Color {
    public static let themeDark = Color("Dark", bundle: Bundle.module)
    public static let themeDark96 = Color.themeDark.opacity(0.5)
    public static let themeCarbon = Color("Carbon", bundle: Bundle.module)
    public static let themeSmoke = Color("Smoke", bundle: Bundle.module)

    public static let themeGray = Color("Gray", bundle: Bundle.module)
    public static let themeGray50 = Color.themeGray.opacity(0.5)

    public static let themeSteel = Color("Steel", bundle: Bundle.module)
    public static let themeSteel10 = Color.themeSteel.opacity(0.1)
    public static let themeSteel20 = Color.themeSteel.opacity(0.2)
    public static let themeSteel30 = Color.themeSteel.opacity(0.3)

    public static let themeLight = Color("Light", bundle: Bundle.module)
    public static let themeBright = Color("Bright", bundle: Bundle.module)
    public static let themeYellow = Color("YellowD", bundle: Bundle.module) // todo: check usage
    public static let themeYellow20 = Color.themeYellow.opacity(0.2)
    public static let themeYellow50 = Color.themeYellow.opacity(0.5)

    public static let themeGreen = Color("GreenD", bundle: Bundle.module)

    public static let themeRed = Color("RedD", bundle: Bundle.module)
    public static let themeRed50 = Color.themeRed.opacity(0.5)
    
    public static let themeOrange = Color("Orange", bundle: Bundle.module)

    public static let themeTyler = Color("Tyler", bundle: Bundle.module)
    public static let themeTyler96 = Color("Tyler96", bundle: Bundle.module)

    public static let themeLawrence = Color("Lawrence", bundle: Bundle.module)
    public static let themeLawrencePressed = Color("LawrencePressed", bundle: Bundle.module)

    public static let themeBlade = Color("Blade", bundle: Bundle.module)
    public static let themeAndy = Color("Andy", bundle: Bundle.module)
    public static let themeLeah = Color("Leah", bundle: Bundle.module)

    public static let themeJacob = Color("Jacob", bundle: Bundle.module)
    public static let themeRemus = Color("Remus", bundle: Bundle.module)
    public static let themeLucian = Color("Lucian", bundle: Bundle.module)
    
    public static var themeBackgroundFromGradient: Color { .themeTyler }
    public static var themeBackgroundToGradient: Color { .themeTyler }  // todo: Check color
    public static var themeNavigationBarBackground: Color { .themeTyler96 }
    
    public var pressed: Color {
        self.opacity(0.5)
    }
}

extension UIColor {
    public static let themeBlack = UIColor(hex: 0x000000)
    public static let themeBlack10 = UIColor(hex: 0x000000, alpha: 0.1)
    public static let themeBlack20 = UIColor(hex: 0x000000, alpha: 0.2)
    public static let themeBlack50 = UIColor(hex: 0x000000, alpha: 0.5)

    public static let themeDark = UIColor(hex: 0x151515)
    public static let themeDark96 = UIColor(hex: 0x151515, alpha: 0.96)
    public static let themeCarbon = UIColor(hex: 0x232323)
    public static let themeSmoke = UIColor(hex: 0x4b4b4b)
    public static let themeGray = UIColor(hex: 0x808085)
    public static let themeGray50 = UIColor(hex: 0x808085, alpha: 0.5)

    public static let themeSteel = UIColor(hex: 0xb3b3b3)
    public static let themeSteel10 = UIColor(hex: 0xb3b3b3, alpha: 0.1)
    public static let themeSteel20 = UIColor(hex: 0xb3b3b3, alpha: 0.2)
    public static let themeSteel30 = UIColor(hex: 0xb3b3b3, alpha: 0.3)

    public static let themeLight = UIColor(hex: 0xdfdfdf)
    public static let themeLight96 = UIColor(hex: 0xdfdfdf, alpha: 0.96)
    public static let themeBright = UIColor(hex: 0xededed)
    public static let themeWhite = UIColor(hex: 0xffffff)
    public static let themeWhite50 = UIColor(hex: 0xffffff, alpha: 0.5)

    public static let themeGreenD = UIColor(hex: 0x0ac18e)
    public static let themeGreenL = UIColor(hex: 0x0aa177)
    public static let themeYellowD = UIColor(hex: 0xffb700)
    public static let themeYellowL = UIColor(hex: 0xff9d00)
    public static let themeRedD = UIColor(hex: 0xff1539)
    public static let themeRedL = UIColor(hex: 0xff1500)
    public static let themeOrange = UIColor(hex: 0xfe4a11)
    public static let themeSunset = UIColor(hex: 0xff2c00)

//    public static let themeIssykBlue = UIColor(hex: 0x3372FF)
//    public static let themeLightGray = UIColor(hex: 0xc8c7cc)
//    public static let themeSteelDark = UIColor(hex: 0x252933)
//    public static let themeSteelLight = UIColor(hex: 0xe1e1e5)
//    public static let themeDarker = UIColor(hex: 0x0f1014)
//    public static let themeYellow50 = UIColor(hex: 0xffa800, alpha: 0.5)
//    public static let themeYellow20 = UIColor(hex: 0xffa800, alpha: 0.2)
//    public static let themeGreen50 = UIColor(hex: 0x05c46b, alpha: 0.5)
//    public static let themeRed50 = UIColor(hex: 0xf43a4f, alpha: 0.5)
//    public static let themeLawrencePressedD = UIColor(hex: 0x353842)
//    public static let themeLawrencePressedL = UIColor(hex: 0xe3e4e8)
//    public static let themeStronbuy = UIColor(hex: 0x1a60ff)
//    public static let themeSteelDark10 = UIColor(hex: 0x1c1f27)
//    public static let themeSteelLight10 = UIColor(hex: 0xd6d7dd)
//    public static let themeLagunaD = UIColor(hex: 0x4a98e9)
//    public static let themeLagunaL = UIColor(hex: 0x4692da)
}

extension UIColor {
    public static var themeTyler: UIColor { color(dark: .themeBlack, light: .themeBright) }
    public static var themeTyler96: UIColor { color(dark: .themeDark96, light: .themeLight96) }

    public static var themeLawrence: UIColor { color(dark: .themeDark, light: .themeWhite) }
    public static var themeBlade: UIColor { color(dark: .themeCarbon, light: .themeLight) }
    public static var themeAndy: UIColor { color(dark: .themeSmoke, light: .themeSteel) }
    public static var themeLeah: UIColor { color(dark: .themeBright, light: .themeDark) }

    public static var themeJacob: UIColor { color(dark: .themeYellowD, light: .themeYellowL) }
    public static var themeRemus: UIColor { color(dark: .themeGreenD, light: .themeGreenL) }
    public static var themeLucian: UIColor { color(dark: .themeRedD, light: .themeRedL) }
//    public static var themeJeremy: UIColor { color(dark: .themeSteel20, light: .themeSteelLight) }
//    public static var themeElena: UIColor { color(dark: .themeSteel20, light: .themeLightGray) }
//    public static var themeLawrencePressed: UIColor { color(dark: .themeLawrencePressedD, light: .themeLawrencePressedL) }
//    public static var themeNina: UIColor { color(dark: .themeWhite50, light: .themeBlack50) }
//    public static var themeHelsing: UIColor { color(dark: .themeDark, light: .themeSteelLight) }
//    public static var themeCassandra: UIColor { color(dark: .themeDark, light: .themeLightGray) }
//    public static var themeRaina: UIColor { color(dark: .themeSteel10, light: .themeWhite50) }
//    public static var themeBlake: UIColor { color(dark: .themeSteelDark10, light: .themeSteelLight10) }
//    public static var themeLaguna: UIColor { color(dark: .themeLagunaD, light: .themeLagunaL) }
//    public static var themeBlackTenTwenty: UIColor { color(dark: .themeBlack10, light: .themeBlack20) }

    private static func color(dark: UIColor, light: UIColor) -> UIColor {
        UIColor { traits in
            switch ThemeManager.shared.themeMode {
            case .dark: return dark
            case .light: return light
            case .system: return traits.userInterfaceStyle == .dark ? dark : light
            }
        }
    }

    public var pressed: UIColor {
        self.withAlphaComponent(0.5)
    }
}

extension UIColor {
    public static var themeBackgroundFromGradient: UIColor { .themeTyler }
    public static var themeBackgroundToGradient: UIColor { .themeTyler }    // todo: Check Color (Helsing)

    public static var themeInputFieldTintColor: UIColor { .themeJacob }
    public static var themeNavigationBarBackground: UIColor { UIColor.themeTyler }
    public static var themeTabBarBackground: UIColor { UIColor.themeBlade }
}

