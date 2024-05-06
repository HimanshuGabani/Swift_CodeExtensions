//
//  UITextField+Toolbar.swift
//  ""
//
//  Created by Himanshu on 15/06/2022.
//

import Foundation
import UIKit

extension UITextField {
    func addToolbar(withCustomToolbarIcons customToolbarIcons: [UIBarButtonItem]? = nil) {
        let toolbar = UIToolbar(frame: .init(origin: .zero, size: .init(width: frame.size.width, height: 44.0)))

        let flexibleSpaceItem = UIBarButtonItem(barButtonSystemItem: .flexibleSpace, target: nil, action: nil)
        let doneItem = UIBarButtonItem(barButtonSystemItem: .done, target: self, action: #selector(resignFirstResponder))

        var toolbarItems = [flexibleSpaceItem]
        if let customToolbarIcons = customToolbarIcons {
            toolbarItems += customToolbarIcons
        }
        toolbarItems.append(doneItem)
        
        toolbar.items = toolbarItems

        inputAccessoryView = toolbar
    }
}
