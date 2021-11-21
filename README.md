# 🍇🍹 전남친토스트를 먹고 있는 우리는... - 온답아요...

### 🍹 서비스 소개 : 전남친 토스트 그리워 하지말고, 깔끔하게 잊어먹자!


<br>


## 🔥✨🎉 Team 온답하라 iOS 🔥✨🎉

| [@heerucan](https://github.com/heerucan) | [@jins0704](https://github.com/jins0704) | [@kimseawater](https://github.com/hyesuuou) |
| :---: | :---: | :---: |
|<img width="170" alt="스크린샷 2021-06-19 오후 9 23 57" src="https://user-images.githubusercontent.com/63235947/142727626-0272d99c-b107-4564-8707-1f6f9e764d6e.png">| <img width="207" src="https://user-images.githubusercontent.com/63235947/142727674-586262eb-a406-414d-91bd-7462d6885908.png"> |<img width="170" src="https://user-images.githubusercontent.com/63235947/142727730-a040deca-3f39-405e-9888-438f2b7db7d7.png">|
|`온보딩, 이름입력뷰, 완성뷰`|`단계뷰`|`커뮤니티뷰`|
|구현정도 100|구현정도 100|구현정도 100|
|전남친 토스트의 이름을 입력하여 서버에 이름을 등록했고, 모든 단계의 뷰가 끝나면 완성뷰를 보여줍니다. Moya라이브러리를 사용해 서버와 통신했습니다. 하단 탭바를 커스텀했습니다.|단계별로 질문들을 보여주고, 답변을 보낼 수 있습니다. 하나의 뷰컨을 재사용하여 각 단계의 데이터를 보여줍니다. Snapkit을 기반으로 Codebase로 뷰를 구성하였습니다.|각 단계에서 중단한 사람들이 올린 이야기를 단계별로 확인할 수 있습니다. CollectionView를 이용하여 상단 커스텀탭바를 구현하였고 단계에 따라 다른 데이터를 서버에서 받아왔습니다.|
	

<br>

## 🍹 Project

|구현유무|구현내용|
|:-:|:-|
|⭕️|모든 뷰의 레이아웃 잡혀있는가?|
|⭕️|팀원 모두 프로젝트에 참여했는가?|
|⭕️|서버 연결하는 코드와 데이터 받는 코드 사용했는가?|
|⭕️|화면 전환, UI들이 정상적으로 작동하는가?|


<br>

## 🍹🍹 Code Convention

<aside>


🔥 [스타일쉐어](https://github.com/StyleShare/swift-style-guide)의 스위스트 스타일 가이드를 따릅니다.
       
</aside>

<details>

<summary> 💬 💬 💬 </summary>
<div markdown="1">

## **코드 레이아웃**

### **들여쓰기 및 띄어쓰기**

- 콜론(`:`)을 쓸 때에는 콜론의 오른쪽에만 공백을 둡니다.
    
    `let names: [String: String]?`
    
- 연산자 오버로딩 함수 정의에서는 연산자와 괄호 사이에 한 칸 띄어씁니다.
    
    `func ** (lhs: Int, rhs: Int)`
    

### **빈 줄**

- 빈 줄에는 공백이 포함되지 않도록 합니다.
- 모든 파일은 빈 줄로 끝나도록 합니다.
- **MARK 구문 위와 아래에는 공백이 필요합니다.**
    
    주석 순서
    
    ```swift
    // MARK: - UIComponenets
    
    // MARK: - Properties
    /// 지역 변수..
    
    // MARK: - Initializer
    
    // MARK: - LifeCycle
    
    // MARK: - Actions
    
    // MARK: - Methods
    
    // MARK: - Protocols
    
    // MARK: - extension
    ```

    

### **임포트**

모듈 임포트는 알파벳 순으로 정렬합니다. 내장 프레임워크를 먼저 임포트하고, 빈 줄로 구분하여 서드파티 프레임워크를 임포트합니다.

`import UIKit

import SwiftyColor
import SwiftyImage
import Then
import URLNavigator`

## **네이밍**

### **클래스**

- 클래스 이름에는 **UpperCamelCase**를 사용합니다.
- ~~클래스 이름에는 접두사를 붙이지 않습니다.~~
- 클래스 명은 축약어를 지양합니다.

### **함수**

- 함수 이름에는 **lowerCamelCase**를 사용합니다.
- 함수 이름 앞에는 되도록이면 `get`을 붙이지 않습니다.
    
    **좋은 예:**
    
    `func name(for user: User) -> String?`
    
    **나쁜 예:**
    
    `func getName(for user: User) -> String?`
    
- Action 함수의 네이밍은 '주어 + 동사 + 목적어' 형태를 사용합니다.
    - Tap(눌렀다 뗌)*은 `UIControlEvents`의 `.touchUpInside`에 대응하고, *Press(누름)*는 `.touchDown`에 대응합니다.
    - *will~*은 특정 행위가 일어나기 직전이고, *did~*는 특정 행위가 일어난 직후입니다.
    - *should~*는 일반적으로 `Bool`을 반환하는 함수에 사용됩니다.
    
    **좋은 예:**
    
    `func backButtonDidTap() {
      // ...
    }`
    
    **나쁜 예:**
    
    `func back() {
      // ...
    }
    
    func pressBack() {
      // ...
    }`
    
    ### 버튼 터치 메소드 명
    
    - touchUp
    - clicked
    - didTap

### **변수**

- 변수 이름에는 **lowerCamelCase**를 사용합니다.

### **상수**

- 상수 이름에는 **lowerCamelCase**를 사용합니다.
    
    **좋은 예:**
    
    `let maximumNumberOfLines = 3`
    
    **나쁜 예:**
    
    `let kMaximumNumberOfLines = 3
    let MAX_LINES = 3`
    

### **열거형**

- enum의 각 case에는 **lowerCamelCase**를 사용합니다.
    
    **좋은 예:**
    
    `enum Result {
      case .success
      case .failure
    }`
    
    **나쁜 예:**
    
    `enum Result {
      case .Success
      case .Failure
    }`
    

### **약어**

- 약어로 시작하는 경우 소문자로 표기하고, 그 외의 경우에는 항상 대문자로 표기합니다.
    
    **좋은 예:**
    
    ```
      let user**ID**: Int?
      let **html**: String?
      let website**URL**: URL?
      let **url**String: String?
    ```
    
    **나쁜 예:**
    
    ```
      let userId: Int?
      let HTML: String?
      let websiteUrl: NSURL?
      let URLString: String?
    
    ```
    

### **Delegate**

- Delegate 메서드는 프로토콜명으로 네임스페이스를 구분합니다.
    
    **좋은 예:**
    
    `protocol UserCellDelegate {
      func userCellDidSetProfileImage(_ cell: UserCell)
      func userCell(_ cell: UserCell, didTapFollowButtonWith user: User)
    }`
    
    **나쁜 예:**
    
    `protocol UserCellDelegate {
      func didSetProfileImage()
      func followPressed(user: User)
    
      // `UserCell`이라는 클래스가 존재할 경우 컴파일 에러 발생
      func UserCell(_ cell: UserCell, didTapFollowButtonWith user: User)
    }`
    

## **클로저**

- 파라미터와 리턴 타입이 없는 Closure 정의시에는 `**() -> Void**`를 사용합니다.
    
    **좋은 예:**
    
    `let completionBlock: (() -> Void)?`
    
    **나쁜 예:**
    
    `let completionBlock: (() -> ())?
    let completionBlock: ((Void) -> (Void))?`
    
- Closure 정의시 파라미터에는 괄호를 사용하지 않습니다.
    
    **좋은 예:**
    
    `{ **operation, responseObject** in
      // doSomething()
    }`
    
    **나쁜 예:**
    
    `{ (operation, responseObject) in
      // doSomething()
    }`
    
- Closure 정의시 가능한 경우 타입 정의를 생략합니다.
    
    **좋은 예:**
    
    `...,
    completion: { finished in
      // doSomething()
    }`
    
    **나쁜 예:**
    
    `...,
    completion: { (finished: Bool) -> Void in
      // doSomething()
    }`
    
- Closure 호출 시 또 다른 유일한 Closure를 마지막 파라미터로 받는 경우, 파라미터 이름을 생략합니다.
    
    **좋은 예:**
    
    `UIView.animate(withDuration: 0.5) {
      // doSomething()
    }`
    
    **나쁜 예:**
    
    `UIView.animate(withDuration: 0.5, animations: { () -> Void in
      // doSomething()
    })`
    

## **클래스와 구조체**

- 클래스와 구조체 내부에서는 `**self**`를 명시적으로 사용합니다.
- 구조체를 생성할 때에는 Swift 구조체 생성자를 사용합니다.
    
    **좋은 예:**
    
    `let frame = CGRect(x: 0, y: 0, width: 100, height: 100)`
    
    **나쁜 예:**
    
    `let frame = CGRectMake(0, 0, 100, 100)`
    

## **타입**

- `Array<T>`와 `Dictionary<T: U>` 보다는 `**[T]**`, `**[T: U]**`를 사용합니다.
    
    **좋은 예:**
    
    `var messages: [String]?
    var names: [Int: String]?`
    
    **나쁜 예:**
    
    `var messages: Array<String>?
    var names: Dictionary<Int, String>?`
    
- generic 사용 시 타입은 `<>` 로 사용합니다.

## **주석**

- `///`를 사용해서 문서화에 사용되는 주석을 남깁니다.
    
    `/// 사용자 프로필을 그려주는 뷰
    class ProfileView: UIView {
    
      /// 사용자 닉네임을 그려주는 라벨
      var nameLabel: UILabel!
    }`
    
- `// MARK:`를 사용해서 연관된 코드를 구분짓습니다.

## **프로그래밍 권장사항**

- 가능하다면 변수를 정의할 때 함께 초기화하도록 합니다. [Then](https://github.com/devxoul/Then)을 사용하면 초기화와 함께 속성을 지정할 수 있습니다.
    
    `let label = UILabel().then {
      $0.textAlignment = .center
      $0.textColor = .black
      $0.text = "Hello, World!"
    }`
    
- 상수를 정의할 때에는 `enum`를 만들어 비슷한 상수끼리 모아둡니다. 재사용성과 유지보수 측면에서 큰 향상을 가져옵니다. `struct` 대신 `enum`을 사용하는 이유는, 생성자가 제공되지 않는 자료형을 사용하기 위해서입니다. [CGFloatLiteral](https://github.com/devxoul/CGFloatLiteral)과 [SwiftyColor](https://github.com/devxoul/SwiftyColor)를 사용해서 코드를 단순화시킵니다.
    
    `final class ProfileViewController: UIViewController {
    
      private enum Metric {
        static let profileImageViewLeft = 10.f
        static let profileImageViewRight = 10.f
        static let nameLabelTopBottom = 8.f
        static let bioLabelTop = 6.f
      }
    
      private enum Font {
        static let nameLabel = UIFont.boldSystemFont(ofSize: 14)
        static let bioLabel = UIFont.boldSystemFont(ofSize: 12)
      }
    
      private enum Color {
        static let nameLabelText = 0x000000.color
        static let bioLabelText = 0x333333.color ~ 70%
      }
    
    }`
    
    이렇게 선언된 상수들은 다음과 같이 사용될 수 있습니다.
    
    `self.profileImageView.frame.origin.x = Metric.profileImageViewLeft
    self.nameLabel.font = Font.nameLabel
    self.nameLabel.textColor = Color.nameLabelText`
    
- 프로토콜을 적용할 때에는 extension을 만들어서 관련된 메서드를 모아둡니다.
    
    **좋은 예**:
    
    ```swift
    // MARK: - UITableViewDataSource
    
    extension MyViewController: UITableViewDataSource {
      // ...
    }
    
    // MARK: - UITableViewDelegate
    
    extension MyViewController: UITableViewDelegate {
      // ...
    }
    ```
    
    **나쁜 예**:
    
    c**lass** MyViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
      // ...
    }
    
    ```
    **class** MyViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
      // ...
   
    ```

</div>
</details>

<br>
<br>

## 🍹🍹🍹 Git Convention

### Git Flow

```
1. Issue를 생성한다.
2. 개인 Branch를 생성하고 작업합니다.
3. Add - Commit - Push - Pull Request 의 과정을 거친다.
5. Pull Request를 통해 Default Branch로 merge 한다.
6. 종료된 Issue와 Pull Request를 관리한다.
```

### Commit Message Convention


`[#이슈번호]추가한 기능 설명`


### Branch

- `main`

- `<각자이름>`

- 각자 이름을 사용한 브랜치를 사용해서 하나의 브랜치만 사용해서 작업합니다.


<br>
<br>

## 🍹🍹🍹🍹 Foldering

<details>

<summary> 💬 💬 💬 </summary>
<div markdown="1">

<br>

```
   🗂 Client-iOS
    	 │
	 │
	 |── 📂 Configuration
    	 │        │
	 │        |── 📁 Base
	 │        |── 📁 Constant
	 │        |── 📁 Extension
	 │        └── 📁 Protocol
    	 │
	 │── 📂 Network
	 │        |── 📁 Model
	 │        |── 📁 Service
	 │        └── 📁 Handler
         │    
         │
	 │── 📂 Source
	 │        |── 📁 View1
	 │        |── 📁 View2
	 │        └── 📁 View3
	 │                  │
	 │                  └── 📁 Cell
         │
         │
   	 |
	 |── AppDelegate.swift 
	 |── SceneDelegate.swift     
         |
         |── LaunchScreen.storyboard
         |── Assets.xcassets
         └── Info.plist           

		
```

</div>
</details>

<br><br>	

## 시연영상

![ezgif com-gif-maker](https://user-images.githubusercontent.com/68391767/142744763-d09ebe87-4aba-4af7-81f4-a3fb3cbcd6fd.gif)


	
