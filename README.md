# PagingWithButtonActionsOnly

I'll try to realize paging by tapping button.  
However, I consider the way to prevent paging by swiping.  

ボタンをタップしてページングできるようにしてみます。  
ただし、スワイプによるページングはさせずにボタンタップのみの方法を検討します。

## Sample GIF

![tab_paging_result](https://github.com/user-attachments/assets/0abf5185-71ad-428c-940c-11fd19c9f523)

## Environment

* Xcode 15.2
* iOS 16 and later
* MVVM

## Point of implementation

* ignore drag gesture of Parent View.

Give a child view a drag gesture and  
have it ignore the parent view's drag gesture.  
The child view's gesture takes precedence.  

子ビューにドラッグジェスチャーを付与して    
親ビューのドラッグジェスチャーを無視するようにする。  
(子ビューのジェスチャーが優先される)

## Article

**[SwiftUI] ボタンアクションのみでページングさせる実装を考える**  
[https://zenn.dev/milanista224/articles/paging-with-button-actions-only](https://zenn.dev/milanista224/articles/paging-with-button-actions-only)


## Contact

Please feel free to contact us if you find a bug or have any feedback.  
Suggestions for adding functions and code corrections are also welcome.

```swift
let name = "Takuya Aso" 
let email = "milanista224" + "@" + "icloud.com"
let profession = "iOS Engineer"
let location = "Tokyo"
```
