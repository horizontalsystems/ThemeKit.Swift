import SwiftUI
import UIKit
import UIExtensions

extension Color {
    public static let themeGray = Color("Gray", bundle: Bundle.module)
    public static let themeLightGray = Color("LightGray", bundle: Bundle.module)
    public static let themeDark = Color("Dark", bundle: Bundle.module)
    public static let themeDarker = Color("Darker", bundle: Bundle.module)
    public static let themeSteel = Color("Steel", bundle: Bundle.module)
    public static let themeSteelLight = Color("SteelLight", bundle: Bundle.module)
    public static let themeYellow = Color("Yellow", bundle: Bundle.module)
    public static let themeGreen = Color("Green", bundle: Bundle.module)
    public static let themeRed = Color("Red", bundle: Bundle.module)
    public static let themeStronbuy = Color("Stronbuy", bundle: Bundle.module)

    public static let themeGray50 = Color.themeGray.opacity(0.5)
    public static let themeSteel10 = Color.themeSteel.opacity(0.1)
    public static let themeSteel20 = Color.themeSteel.opacity(0.2)
    public static let themeSteel30 = Color.themeSteel.opacity(0.3)
    public static let themeYellow20 = Color.themeYellow.opacity(0.2)
    public static let themeYellow50 = Color.themeYellow.opacity(0.5)
    public static let themeRed50 = Color.themeRed.opacity(0.5)

    public static let themeJacob = Color("Jacob", bundle: Bundle.module)
    public static let themeRemus = Color("Remus", bundle: Bundle.module)
    public static let themeLucian = Color("Lucian", bundle: Bundle.module)
    public static let themeLeah = Color("Leah", bundle: Bundle.module)
    public static let themeAndy = Color("Andy", bundle: Bundle.module)
    public static let themeBlackTenTwenty = Color("BlackTenTwenty", bundle: Bundle.module)
    public static let themeBran = Color("Bran", bundle: Bundle.module)
    public static let themeClaude = Color("Claude", bundle: Bundle.module)
    public static let themeHelsing = Color("Helsing", bundle: Bundle.module)
    public static let themeJeremy = Color("Jeremy", bundle: Bundle.module)
    public static let themeLaguna = Color("Laguna", bundle: Bundle.module)
    public static let themeLawrence = Color("Lawrence", bundle: Bundle.module)
    public static let themeLawrencePressed = Color("LawrencePressed", bundle: Bundle.module)
    public static let themeNina = Color("Nina", bundle: Bundle.module)
    public static let themeRaina = Color("Raina", bundle: Bundle.module)
    public static let themeTyler = Color("Tyler", bundle: Bundle.module)
    public static let themeTyler96 = Color("Tyler96", bundle: Bundle.module)

    public static var themeBackgroundFromGradient: Color { .themeTyler }
    public static var themeBackgroundToGradient: Color { .themeHelsing }
    public static var themeNavigationBarBackground: Color { .themeTyler96 }
}

extension UIColor {
    public static let themeYellowD = UIColor(hex: 0xffa800)
    public static let themeYellowL = UIColor(hex: 0xff8a00)
    public static let themeGreenD = UIColor(hex: 0x05c46b)
    public static let themeGreenL = UIColor(hex: 0x04ad5f)
    public static let themeRedD = UIColor(hex: 0xf43a4f)
    public static let themeRedL = UIColor(hex: 0xff3d43)
    public static let themeBlack = UIColor(hex: 0x000000)
    public static let themeIssykBlue = UIColor(hex: 0x3372FF)
    public static let themeGray = UIColor(hex: 0x808085)
    public static let themeLightGray = UIColor(hex: 0xc8c7cc)
    public static let themeWhite = UIColor(hex: 0xffffff)
    public static let themeSteelDark = UIColor(hex: 0x252933)
    public static let themeSteelLight = UIColor(hex: 0xe1e1e5)
    public static let themeDark = UIColor(hex: 0x13151a)
    public static let themeDark96 = UIColor(hex: 0x13151a, alpha: 0.96)
    public static let themeDarker = UIColor(hex: 0x0f1014)
    public static let themeLight = UIColor(hex: 0xf0f0f0)
    public static let themeLight96 = UIColor(hex: 0xf0f0f0, alpha: 0.96)
    public static let themeBlack10 = UIColor(hex: 0x000000, alpha: 0.1)
    public static let themeBlack20 = UIColor(hex: 0x000000, alpha: 0.2)
    public static let themeBlack50 = UIColor(hex: 0x000000, alpha: 0.5)
    public static let themeWhite50 = UIColor(hex: 0xffffff, alpha: 0.5)
    public static let themeSteel10 = UIColor(hex: 0x73798c, alpha: 0.1)
    public static let themeSteel20 = UIColor(hex: 0x73798c, alpha: 0.2)
    public static let themeSteel30 = UIColor(hex: 0x73798c, alpha: 0.3)
    public static let themeGray50 = UIColor(hex: 0x808085, alpha: 0.5)
    public static let themeYellow50 = UIColor(hex: 0xffa800, alpha: 0.5)
    public static let themeYellow20 = UIColor(hex: 0xffa800, alpha: 0.2)
    public static let themeGreen50 = UIColor(hex: 0x05c46b, alpha: 0.5)
    public static let themeRed50 = UIColor(hex: 0xf43a4f, alpha: 0.5)
    public static let themeLawrencePressedD = UIColor(hex: 0x353842)
    public static let themeLawrencePressedL = UIColor(hex: 0xe3e4e8)
    public static let themeStronbuy = UIColor(hex: 0x1a60ff)
    public static let themeSteelDark10 = UIColor(hex: 0x1c1f27)
    public static let themeSteelLight10 = UIColor(hex: 0xd6d7dd)
    public static let themeLagunaD = UIColor(hex: 0x4a98e9)
    public static let themeLagunaL = UIColor(hex: 0x4692da)
}

extension UIColor {
    public static var themeJacob: UIColor { color(dark: .themeYellowD, light: .themeYellowL) }
    public static var themeRemus: UIColor { color(dark: .themeGreenD, light: .themeGreenL) }
    public static var themeLucian: UIColor { color(dark: .themeRedD, light: .themeRedL) }
    public static var themeLeah: UIColor { color(dark: .themeSteelLight, light: .themeSteelDark) }
    public static var themeJeremy: UIColor { color(dark: .themeSteel20, light: .themeSteelLight) }
    public static var themeElena: UIColor { color(dark: .themeSteel20, light: .themeLightGray) }
    public static var themeLawrence: UIColor { color(dark: .themeSteelDark, light: .themeWhite) }
    public static var themeLawrencePressed: UIColor { color(dark: .themeLawrencePressedD, light: .themeLawrencePressedL) }
    public static var themeClaude: UIColor { color(dark: .themeDark, light: .themeWhite) }
    public static var themeAndy: UIColor { color(dark: .themeBlack50, light: .themeSteel20) }
    public static var themeTyler: UIColor { color(dark: .themeDark, light: .themeLight) }
    public static var themeTyler96: UIColor { color(dark: .themeDark96, light: .themeLight96) }
    public static var themeNina: UIColor { color(dark: .themeWhite50, light: .themeBlack50) }
    public static var themeHelsing: UIColor { color(dark: .themeDark, light: .themeSteelLight) }
    public static var themeCassandra: UIColor { color(dark: .themeDark, light: .themeLightGray) }
    public static var themeRaina: UIColor { color(dark: .themeSteel10, light: .themeWhite50) }
    public static var themeBran: UIColor { color(dark: .themeLightGray, light: .themeDark) }
    public static var themeBlake: UIColor { color(dark: .themeSteelDark10, light: .themeSteelLight10) }
    public static var themeLaguna: UIColor { color(dark: .themeLagunaD, light: .themeLagunaL) }
    public static var themeBlackTenTwenty: UIColor { color(dark: .themeBlack10, light: .themeBlack20) }

    private static func color(dark: UIColor, light: UIColor) -> UIColor {
        UIColor { traits in
            switch ThemeManager.shared.themeMode {
            case .dark: return dark
            case .light: return light
            case .system: return traits.userInterfaceStyle == .dark ? dark : light
            }
        }
    }

}

extension UIColor {
    public static var themeBackgroundFromGradient: UIColor { .themeTyler }
    public static var themeBackgroundToGradient: UIColor { .themeHelsing }

    public static var themeInputFieldTintColor: UIColor { .themeJacob }
    public static var themeNavigationBarBackground: UIColor { UIColor.themeTyler96 }
}
