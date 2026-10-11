//
//  FontFamily.swift
//  Earthu
//
//  Created by Seungjun Lee on 10/8/26.
//

import SwiftUI

/// 번들에 등록된 커스텀 폰트의 PostScript 이름.
/// `Info.plist`의 `UIAppFonts` 항목과 1:1로 대응한다.
enum FontFamily {
    /// 본문/UI 전반에 사용하는 국문 폰트.
    enum Pretendard: String {
        case thin = "Pretendard-Thin"
        case extraLight = "Pretendard-ExtraLight"
        case light = "Pretendard-Light"
        case regular = "Pretendard-Regular"
        case medium = "Pretendard-Medium"
        case semiBold = "Pretendard-SemiBold"
        case bold = "Pretendard-Bold"
        case extraBold = "Pretendard-ExtraBold"
        case black = "Pretendard-Black"
    }

    /// 로고/영문 디스플레이용 폰트.
    enum GalanoGrotesque: String {
        case medium = "GalanoGrotesque-Medium"
    }
}
