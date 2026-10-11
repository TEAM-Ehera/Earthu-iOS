//
//  Color+Primitive.swift
//  Earthu
//
//  Created by Seungjun Lee on 10/8/26.
//

import SwiftUI

extension Color {
    /// Figma `Primitive (Color)` 팔레트. Asset Catalog의 `Colors` 폴더와 1:1 대응한다.
    /// 화면 코드에서는 직접 쓰지 않고 Semantic 토큰(`Color+Semantic.swift`)을 쓴다.
    enum Primitive {
        static let globalBlack = Color("globalBlack", bundle: .main) // #000000
        static let globalWhite = Color("globalWhite", bundle: .main) // #FFFFFF

        static let neutral950 = Color("neutral950", bundle: .main) // #1A1A1A
        static let neutral900 = Color("neutral900", bundle: .main) // #333333
        static let neutral800 = Color("neutral800", bundle: .main) // #4D4D4D
        static let neutral700 = Color("neutral700", bundle: .main) // #666666
        static let neutral600 = Color("neutral600", bundle: .main) // #808080
        static let neutral500 = Color("neutral500", bundle: .main) // #999999
        static let neutral400 = Color("neutral400", bundle: .main) // #B3B3B3
        static let neutral300 = Color("neutral300", bundle: .main) // #CCCCCC
        static let neutral200 = Color("neutral200", bundle: .main) // #DBDBDB
        static let neutral100 = Color("neutral100", bundle: .main) // #F5F5F5
        static let neutral50 = Color("neutral50", bundle: .main) // #FCFCFC

        static let orange900 = Color("orange900", bundle: .main) // #230901
        static let orange800 = Color("orange800", bundle: .main) // #541503
        static let orange700 = Color("orange700", bundle: .main) // #852205
        static let orange600 = Color("orange600", bundle: .main) // #B62E06
        static let orange500 = Color("orange500", bundle: .main) // #E93B08
        static let orange400 = Color("orange400", bundle: .main) // #F8592B
        static let orange300 = Color("orange300", bundle: .main) // #F9805C
        static let orange200 = Color("orange200", bundle: .main) // #FBA68E
        static let orange100 = Color("orange100", bundle: .main) // #FDCDBF
        static let orange50 = Color("orange50", bundle: .main) // #FFF3F0

        static let red900 = Color("red900", bundle: .main) // #200404
        static let red700 = Color("red700", bundle: .main) // #7C0E0E
        static let red500 = Color("red500", bundle: .main) // #D91818
        static let red300 = Color("red300", bundle: .main) // #EE6767
        static let red100 = Color("red100", bundle: .main) // #F8C3C3

        static let blue900 = Color("blue900", bundle: .main) // #040E20
        static let blue700 = Color("blue700", bundle: .main) // #0E387C
        static let blue500 = Color("blue500", bundle: .main) // #1862D9
        static let blue300 = Color("blue300", bundle: .main) // #689BEE
        static let blue100 = Color("blue100", bundle: .main) // #C3D8F8

        static let green900 = Color("green900", bundle: .main) // #082B11
        static let green700 = Color("green700", bundle: .main) // #188133
        static let green500 = Color("green500", bundle: .main) // #29D654
        static let green300 = Color("green300", bundle: .main) // #7EE799
        static let green100 = Color("green100", bundle: .main) // #D4F7DD
    }
}
