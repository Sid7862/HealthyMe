

import UIKit

class PaddingUILabel: UILabel {

    var topInset:       CGFloat = 0
    var rightInset:     CGFloat = 10
    var bottomInset:    CGFloat = 0
    var leftInset:      CGFloat = 10
    
    override func drawText(in rect: CGRect) {
        var insets: UIEdgeInsets = UIEdgeInsets(top: self.topInset, left: self.leftInset, bottom: self.bottomInset, right: self.rightInset)
        self.setNeedsLayout()
        return super.drawText(in: UIEdgeInsetsInsetRect(rect, insets))
    }

}
