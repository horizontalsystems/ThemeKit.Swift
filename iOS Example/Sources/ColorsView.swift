import SwiftUI
import ThemeKit

struct ColorsView: View {
    @State private var currentMode = ThemeManager.shared.themeMode.rawValue
    @State private var themeModeIterator = 0

    private let customColors: [CustomColor] = [
        CustomColor(name: "Gray", color: .themeGray),
        CustomColor(name: "LightGray", color: .themeLightGray),
        CustomColor(name: "Dark", color: .themeDark),
        CustomColor(name: "Darker", color: .themeDarker),
        CustomColor(name: "Steel", color: .themeSteel),
        CustomColor(name: "SteelLight", color: .themeSteelLight),
        CustomColor(name: "Yellow", color: .themeYellow),
        CustomColor(name: "Green", color: .themeGreen),
        CustomColor(name: "Red", color: .themeRed),
        CustomColor(name: "Stronbuy", color: .themeStronbuy),
        CustomColor(name: "Gray50", color: .themeGray50),
        CustomColor(name: "Steel10", color: .themeSteel10),
        CustomColor(name: "Steel20", color: .themeSteel20),
        CustomColor(name: "Steel30", color: .themeSteel30),
        CustomColor(name: "Yellow20", color: .themeYellow20),
        CustomColor(name: "Yellow50", color: .themeYellow50),
        CustomColor(name: "Red50", color: .themeRed50),
        CustomColor(name: "Jacob", color: .themeJacob),
        CustomColor(name: "Remus", color: .themeRemus),
        CustomColor(name: "Lucian", color: .themeLucian),
        CustomColor(name: "Leah", color: .themeLeah),
        CustomColor(name: "Andy", color: .themeAndy),
        CustomColor(name: "BlackTenTwenty", color: .themeBlackTenTwenty),
        CustomColor(name: "Bran", color: .themeBran),
        CustomColor(name: "Claude", color: .themeClaude),
        CustomColor(name: "Helsing", color: .themeHelsing),
        CustomColor(name: "Jeremy", color: .themeJeremy),
        CustomColor(name: "Laguna", color: .themeLaguna),
        CustomColor(name: "Lawrence", color: .themeLawrence),
        CustomColor(name: "LawrencePressed", color: .themeLawrencePressed),
        CustomColor(name: "Nina", color: .themeNina),
        CustomColor(name: "Raina", color: .themeRaina),
        CustomColor(name: "Tyler", color: .themeTyler),
        CustomColor(name: "Tyler96", color: .themeTyler96),
    ]

    var body: some View {
        List(customColors, id: \.name) { customColor in
            ColorRow(name: customColor.name, color: customColor.color)
        }
                .toolbar {
                    Button(currentMode) {
                        onTapToggle()
                    }
                }
    }

    private func onTapToggle() {
        themeModeIterator += 1
        if themeModeIterator > 2 {
            themeModeIterator = 0
        }

        if themeModeIterator == 0 {
            ThemeManager.shared.themeMode = .system
            UIApplication.shared.windows.first(where: \.isKeyWindow)?.overrideUserInterfaceStyle = .unspecified
        }
        if themeModeIterator == 1 {
            ThemeManager.shared.themeMode = .dark
            UIApplication.shared.windows.first(where: \.isKeyWindow)?.overrideUserInterfaceStyle = .dark
        }
        if themeModeIterator == 2 {
            ThemeManager.shared.themeMode = .light
            UIApplication.shared.windows.first(where: \.isKeyWindow)?.overrideUserInterfaceStyle = .light
        }

        currentMode = ThemeManager.shared.themeMode.rawValue
    }

}

extension ColorsView {

    private struct ColorRow: View {
        var name: String
        var color: Color

        var body: some View {
            HStack {
                RoundedRectangle(cornerRadius: .cornerRadius8, style: .continuous)
                        .strokeBorder(.black, lineWidth: 1)
                        .background(RoundedRectangle(cornerRadius: .cornerRadius8, style: .continuous).fill(color))
                        .frame(width: 60)
                        .padding(.margin8)
                Text(name)
                        .padding(.margin8)
            }
        }
    }

    private struct CustomColor: Hashable {
        let name: String
        let color: Color
    }

}

struct ColorsView_Previews: PreviewProvider {

    static var previews: some View {
        ColorsView()
    }

}
