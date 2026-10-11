//
//  EarthuTextStyle.swift
//  Earthu
//
//  Created by Seungjun Lee on 10/8/26.
//

import SwiftUI

/// Figma Text Style 하나를 그대로 옮긴 값.
/// `size`는 디자인 기준값이고, 실제 렌더 크기는 Dynamic Type에 따라 `relativeTo` 기준으로 확대/축소된다.
/// `letterSpacingRatio`는 Figma의 letter-spacing 퍼센트이므로 렌더 크기에 곱해서 쓴다.
///
// DESIGN-GAP: 각 스타일의 Dynamic Type 기준(`relativeTo`)은 디자인 파일에 명시되어 있지 않다.
// 디자인 크기에 가장 가까운 시스템 TextStyle로 매핑했다. (28→title, 24→title2, 20→title3,
// 18→headline, 16→callout, 14→subheadline, 12→caption, 10→caption2)
struct EarthuTextStyle {
    let fontName: String
    let size: CGFloat
    let lineHeightMultiple: CGFloat
    let letterSpacingRatio: CGFloat
    let relativeTo: Font.TextStyle

    var font: Font {
        .custom(fontName, size: size, relativeTo: relativeTo)
    }
}

extension EarthuTextStyle {

    // MARK: - headline

    /// `headline/head1_sb` · 28 / 125% / -2.5%
    static let head1SB = EarthuTextStyle(
        fontName: FontFamily.Pretendard.semiBold.rawValue,
        size: 28, lineHeightMultiple: 1.25, letterSpacingRatio: -0.025, relativeTo: .title
    )
    /// `headline/head2_sb` · 24 / 125% / -2.5%
    static let head2SB = EarthuTextStyle(
        fontName: FontFamily.Pretendard.semiBold.rawValue,
        size: 24, lineHeightMultiple: 1.25, letterSpacingRatio: -0.025, relativeTo: .title2
    )
    /// `headline/head3_b` · 20 Bold / 125% / -2.5%
    static let head3B = EarthuTextStyle(
        fontName: FontFamily.Pretendard.bold.rawValue,
        size: 20, lineHeightMultiple: 1.25, letterSpacingRatio: -0.025, relativeTo: .title3
    )

    // MARK: - title

    /// `title/title1_sb` · 20 / 125% / -2.5%
    static let title1SB = EarthuTextStyle(
        fontName: FontFamily.Pretendard.semiBold.rawValue,
        size: 20, lineHeightMultiple: 1.25, letterSpacingRatio: -0.025, relativeTo: .title3
    )
    /// `title/title2_sb` · 18 / 125% / -2.5%
    static let title2SB = EarthuTextStyle(
        fontName: FontFamily.Pretendard.semiBold.rawValue,
        size: 18, lineHeightMultiple: 1.25, letterSpacingRatio: -0.025, relativeTo: .headline
    )

    // MARK: - label

    /// `label/label1_sb` · 14 / 140% / -2.5%
    static let label1SB = EarthuTextStyle(
        fontName: FontFamily.Pretendard.semiBold.rawValue,
        size: 14, lineHeightMultiple: 1.4, letterSpacingRatio: -0.025, relativeTo: .subheadline
    )
    /// `label/label2_m` · 14 Medium / 140% / -2.5%
    static let label2M = EarthuTextStyle(
        fontName: FontFamily.Pretendard.medium.rawValue,
        size: 14, lineHeightMultiple: 1.4, letterSpacingRatio: -0.025, relativeTo: .subheadline
    )
    /// `label/label3_sb` · 12 / 140% / -1.5%
    static let label3SB = EarthuTextStyle(
        fontName: FontFamily.Pretendard.semiBold.rawValue,
        size: 12, lineHeightMultiple: 1.4, letterSpacingRatio: -0.015, relativeTo: .caption
    )

    // MARK: - body

    /// `body/body1_r` · 18 Regular / 140% / -2.5%
    static let body1R = EarthuTextStyle(
        fontName: FontFamily.Pretendard.regular.rawValue,
        size: 18, lineHeightMultiple: 1.4, letterSpacingRatio: -0.025, relativeTo: .body
    )
    /// `body/body2_r` · 16 Regular / 140% / -2.5%
    static let body2R = EarthuTextStyle(
        fontName: FontFamily.Pretendard.regular.rawValue,
        size: 16, lineHeightMultiple: 1.4, letterSpacingRatio: -0.025, relativeTo: .callout
    )
    /// `body/body3_r` · 14 Regular / 140% / -2.5%
    static let body3R = EarthuTextStyle(
        fontName: FontFamily.Pretendard.regular.rawValue,
        size: 14, lineHeightMultiple: 1.4, letterSpacingRatio: -0.025, relativeTo: .subheadline
    )

    // MARK: - caption

    /// `caption/caption1_m` · 12 Medium / 140% / -1.5%
    static let caption1M = EarthuTextStyle(
        fontName: FontFamily.Pretendard.medium.rawValue,
        size: 12, lineHeightMultiple: 1.4, letterSpacingRatio: -0.015, relativeTo: .caption
    )
    /// `caption/caption2_sb` · 10 / 140% / -1.5%
    static let caption2SB = EarthuTextStyle(
        fontName: FontFamily.Pretendard.semiBold.rawValue,
        size: 10, lineHeightMultiple: 1.4, letterSpacingRatio: -0.015, relativeTo: .caption2
    )

    // MARK: - brand

    /// `Brand / Wordmark` · Galano Grotesque Medium 20 / 125% / -2.5%
    /// EarthUU 워드마크 전용. 일반 UI 텍스트에는 쓰지 않는다.
    static let wordmark = EarthuTextStyle(
        fontName: FontFamily.GalanoGrotesque.medium.rawValue,
        size: 20, lineHeightMultiple: 1.25, letterSpacingRatio: -0.025, relativeTo: .title3
    )
}
