import SwiftUI

struct FontsView: View {

    private let customFonts: [CustomFont] = [
        CustomFont(name: "title1", font: .themeTitle1),
        CustomFont(name: "title2", font: .themeTitle2),
        CustomFont(name: "title2R", font: .themeTitle2R),
        CustomFont(name: "title3", font: .themeTitle3),
        CustomFont(name: "headline1", font: .themeHeadline1),
        CustomFont(name: "headline2", font: .themeHeadline2),
        CustomFont(name: "body", font: .themeBody),
        CustomFont(name: "subhead1", font: .themeSubhead1),
        CustomFont(name: "subhead1I", font: .themeSubhead1I),
        CustomFont(name: "subhead2", font: .themeSubhead2),
        CustomFont(name: "caption", font: .themeCaption),
        CustomFont(name: "captionSB", font: .themeCaptionSB),
        CustomFont(name: "micro", font: .themeMicro),
        CustomFont(name: "microSB", font: .themeMicroSB),
    ]

    var body: some View {
        List(customFonts, id: \.name) { customFont in
            FontRow(name: customFont.name, font: customFont.font)
        }
    }

}

extension FontsView {

    private struct FontRow: View {
        var name: String
        var font: Font

        var body: some View {
            Text(name)
                    .font(font)
                    .padding(.margin8)
        }
    }

    private struct CustomFont: Hashable {
        let name: String
        let font: Font
    }

}

struct FontsView_Previews: PreviewProvider {

    static var previews: some View {
        FontsView()
    }

}
