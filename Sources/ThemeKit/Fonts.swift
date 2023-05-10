import SwiftUI
import UIKit

extension Font {
    public static let themeTitle1: Font = .system(size: 40, weight: .bold)
    public static let themeTitle2: Font = .system(size: 34, weight: .bold)
    public static let themeTitle2R: Font = .system(size: 34, weight: .regular)
    public static let themeTitle3: Font = .system(size: 22, weight: .bold)
    public static let themeHeadline1: Font = .system(size: 22, weight: .semibold)
    public static let themeHeadline2: Font = .system(size: 17, weight: .semibold)
    public static let themeBody: Font = .system(size: 17, weight: .regular)
    public static let themeSubhead1: Font = .system(size: 14, weight: .medium)
    public static let themeSubhead1I: Font = .system(size: 14, weight: .medium).italic()
    public static let themeSubhead2: Font = .system(size: 14, weight: .regular)
    public static let themeCaption: Font = .system(size: 12, weight: .regular)
    public static let themeCaptionSB: Font = .system(size: 12, weight: .semibold)
    public static let themeMicro: Font = .system(size: 10, weight: .regular)
    public static let themeMicroSB: Font = .system(size: 10, weight: .semibold)
}

extension UIFont {
    public static let title1: UIFont = .systemFont(ofSize: 40, weight: .bold)
    public static let title2: UIFont = .systemFont(ofSize: 34, weight: .bold)
    public static let title2R: UIFont = .systemFont(ofSize: 34, weight: .regular)
    public static let title3: UIFont = .systemFont(ofSize: 22, weight: .bold)
    public static let headline1: UIFont = .systemFont(ofSize: 22, weight: .semibold)
    public static let headline2: UIFont = .systemFont(ofSize: 17, weight: .semibold)
    public static let body: UIFont = .systemFont(ofSize: 17, weight: .regular)
    public static let subhead1: UIFont = .systemFont(ofSize: 14, weight: .medium)
    public static let subhead1I: UIFont = UIFont.systemFont(ofSize: 14, weight: .medium).with(traits: .traitItalic)
    public static let subhead2: UIFont = .systemFont(ofSize: 14, weight: .regular)
    public static let caption: UIFont = .systemFont(ofSize: 12, weight: .regular)
    public static let captionSB: UIFont = .systemFont(ofSize: 12, weight: .semibold)
    public static let micro: UIFont = .systemFont(ofSize: 10, weight: .regular)
    public static let microSB: UIFont = .systemFont(ofSize: 10, weight: .semibold)
}
