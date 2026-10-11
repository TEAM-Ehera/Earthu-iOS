//
//  Color+Semantic.swift
//  Earthu
//
//  Created by Seungjun Lee on 10/8/26.
//

import SwiftUI

/// Figma `Alias Token`. UI 코드에서는 이 토큰만 사용한다.
/// 각 토큰이 참조하는 Primitive는 Figma와 1:1로 일치시킨다.
///
// DESIGN-GAP: 다크 모드 값이 디자인 파일에 정의되어 있지 않다. 모든 Color Set은 Universal 단일 값이다.
extension Color {

    // MARK: - background

    /// 화면 기본 배경
    static let backgroundBg = Primitive.neutral100
    /// 카드·시트 등 올라온 면
    static let backgroundSurface = Primitive.globalWhite
    /// 브랜드 강조 배경
    static let backgroundBrand = Primitive.orange500
    /// 브랜드 강조의 약한 배경
    static let backgroundBrandSubtle = Primitive.orange50
    /// 반전 배경
    static let backgroundInverse = Primitive.neutral950

    // MARK: - action / primary

    static let actionPrimaryDefault900 = Primitive.orange900
    static let actionPrimaryDefault800 = Primitive.orange800
    static let actionPrimaryDefault700 = Primitive.orange700
    static let actionPrimaryDefault600 = Primitive.orange600
    /// 기본 액션(버튼) 색
    static let actionPrimaryDefault = Primitive.orange500
    static let actionPrimaryDefault400 = Primitive.orange400
    static let actionPrimaryDefault300 = Primitive.orange300
    static let actionPrimaryDefault200 = Primitive.orange200
    static let actionPrimaryDefault100 = Primitive.orange100
    static let actionPrimaryDefault50 = Primitive.orange50
    static let actionPrimaryDisabled = Primitive.neutral200

    // MARK: - text

    /// 본문·제목 기본 텍스트
    static let textPrimary = Primitive.neutral950
    /// 보조 텍스트
    static let textSecondary = Primitive.neutral800
    /// 3차 텍스트
    static let textTertiary = Primitive.neutral500
    static let textDisabled = Primitive.neutral500
    /// 브랜드 배경 위 텍스트
    static let textOnBrand = Primitive.globalWhite
    static let textAccent = Primitive.orange500
    static let textSub = Primitive.orange300

    // MARK: - icon

    static let iconDefault = Primitive.neutral950
    static let iconDisabled = Primitive.neutral500
    static let iconOnBrand = Primitive.globalWhite
    static let iconAccent = Primitive.orange500
    static let iconSub = Primitive.neutral900

    // MARK: - feedback

    static let feedbackError = Primitive.red500
    static let feedbackSuccess = Primitive.green500

    // MARK: - status

    static let statusPositive = Primitive.green500
    static let statusNeutral = Primitive.neutral600
    static let statusNegative = Primitive.red500

    // MARK: - border

    static let borderDefault = Primitive.neutral200
    static let borderSubtle = Primitive.neutral100
    static let borderFocus = Primitive.orange500
    static let borderSub = Primitive.orange300
}
