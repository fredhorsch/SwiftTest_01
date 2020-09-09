//
//  Extensions.swift
//  Test_01
//
//  Created by Frederic Horsch on 08.09.20.
//

import Foundation


extension Date
{
    func toString( dateFormat format  : String ) -> String
    {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = format
        return dateFormatter.string(from: self)
    }

}
