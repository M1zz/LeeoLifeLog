//
//  Main.swift
//  LeeoLifeLog
//
//  Created by hyunho lee on 2022/06/19.
//

import SwiftUI

/// 리이오의 라이프 로그를 보여주는 메인 뷰 입니다
///
/// Main뷰는 유저를 입력받아 만들어야 합니다. 유저 정보는 ``User``에 있습니다.
/// ``User/name``은 꼭 실명으로 적어야 합니다.
///
///```swift
/// @State private var leeo: User
///
/// var body: some View {
///     Main(leeo: $leeo)
/// }
///
/// - Note: 메인 뷰는 현재 NavigationView로 되어있습니다.
///
/// ```
/// ## Topics
/// ### 메인 뷰 입니다
///
/// ### Implementing the View
/// - ``body``
struct Main: View {
    ///  입력받은 사용자 정보를 바인딩
    @Binding var user: User
    
    var body: some View {
        Text("Main")
    }
    
    /// 시간을 기반으로 라이프 로그를 가져옵니다.
    func fetchLifeLog(from date: Date) {
        
    }
}

struct Main_Previews: PreviewProvider {
    static var previews: some View {
        Main(user: .constant(User(name: "leeo", age: 404)))
    }
}

class NetworkService {
    
}
