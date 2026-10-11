//
//  View+TextStyle.swift
//  Earthu
//
//  Created by Seungjun Lee on 10/8/26.
//

import SwiftUI

extension View {
    /// Figma Text Style을 그대로 적용한다. 서체·크기뿐 아니라 line-height와 letter-spacing까지 함께 맞춘다.
    ///
    /// SwiftUI의 `lineSpacing`은 줄 사이 여백만 더하므로, Figma의 line-height 박스와 높이를 맞추려면
    /// 남는 여백의 절반을 위아래 패딩으로 보정해야 한다. 그래서 이 modifier는 세로 패딩을 추가한다.
    /// 텍스트에만 붙이고, 바깥 레이아웃 간격은 별도로 잡는다.
    func textStyle(_ style: EarthuTextStyle) -> some View {
        modifier(EarthuTextStyleModifier(style: style))
    }
}

private struct EarthuTextStyleModifier: ViewModifier {
    let style: EarthuTextStyle

    @Environment(\.dynamicTypeSize) private var dynamicTypeSize

    func body(content: Content) -> some View {
        // Font.custom(_:size:relativeTo:)와 같은 배율로 line-height·letter-spacing도 함께 키운다.
        let traits = UITraitCollection(preferredContentSizeCategory: dynamicTypeSize.uiContentSizeCategory)
        let scaledSize = UIFontMetrics(forTextStyle: style.relativeTo.uiTextStyle)
            .scaledValue(for: style.size, compatibleWith: traits)
        let lineHeight = scaledSize * style.lineHeightMultiple
        let renderedLineHeight = (UIFont(name: style.fontName, size: scaledSize) ?? .systemFont(ofSize: scaledSize)).lineHeight
        let extraLineSpacing = max(0, lineHeight - renderedLineHeight)

        content
            .font(style.font)
            .tracking(scaledSize * style.letterSpacingRatio)
            .lineSpacing(extraLineSpacing)
            .padding(.vertical, extraLineSpacing / 2)
    }
}

private extension Font.TextStyle {
    var uiTextStyle: UIFont.TextStyle {
        switch self {
        case .largeTitle: .largeTitle
        case .title: .title1
        case .title2: .title2
        case .title3: .title3
        case .headline: .headline
        case .subheadline: .subheadline
        case .body: .body
        case .callout: .callout
        case .footnote: .footnote
        case .caption: .caption1
        case .caption2: .caption2
        @unknown default: .body
        }
    }
}

private extension DynamicTypeSize {
    var uiContentSizeCategory: UIContentSizeCategory {
        switch self {
        case .xSmall: .extraSmall
        case .small: .small
        case .medium: .medium
        case .large: .large
        case .xLarge: .extraLarge
        case .xxLarge: .extraExtraLarge
        case .xxxLarge: .extraExtraExtraLarge
        case .accessibility1: .accessibilityMedium
        case .accessibility2: .accessibilityLarge
        case .accessibility3: .accessibilityExtraLarge
        case .accessibility4: .accessibilityExtraExtraLarge
        case .accessibility5: .accessibilityExtraExtraExtraLarge
        @unknown default: .large
        }
    }
}
