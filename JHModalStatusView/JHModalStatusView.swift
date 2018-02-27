//
//  JHModalStatusView.swift
//  JHModalStatusView
//
//  Created by Jahid Hasan Polash on 23/1/18.
//  Copyright © 2018 Jahid Hasan Polash. All rights reserved.
//

import UIKit

class JHModalStatusView: UIView {

    @IBOutlet private weak var statusImage: UIImageView!
    @IBOutlet private weak var headingLabel: UILabel!
    @IBOutlet private weak var subheadingLabel: UILabel!
    
    let nibName = "JHModalStatusView"
    var contentView: UIView!
    public override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
    }
    public required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setupView()
    }
    private func setupView(){
        
    }
}
