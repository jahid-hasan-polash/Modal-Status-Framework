//
//  JHModalStatusView.swift
//  JHModalStatusView
//
//  Created by Jahid Hasan Polash on 23/1/18.
//  Copyright © 2018 Jahid Hasan Polash. All rights reserved.
//

import UIKit

public class JHModalStatusView: UIView {

    @IBOutlet private weak var statusImage: UIImageView!
    @IBOutlet private weak var headingLabel: UILabel!
    @IBOutlet private weak var subheadingLabel: UILabel!
    
    let nibName = "JHModalStatusView"
    var contentView: UIView!
    public override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()s
    }
    public required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setupView()
    }
    private func setupView(){
        let bundle = Bundle(for: type(of: self))
        let nib = UINib(nibName: self.nibName, bundle: bundle)
        self.contentView = nib.instantiate(withOwner: self, options: nil).first as! UIView
        addSubview(contentView)
        contentView.center = self.center
        contentView.autoresizingMask = []
        contentView.translatesAutoresizingMaskIntoConstraints = true
        headingLabel.text = ""
        subheadingLabel.text = ""
    }
    // Provide functions to update view
    public func set(image: UIImage) {
        self.statusImage.image = image
    }
    public func set(headline text: String) {
        self.headingLabel.text = text
    }
    public func set(subheading text: String) {
        self.subheadingLabel.text = text
    }
}
