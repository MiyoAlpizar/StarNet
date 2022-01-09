//
//  QuestionForCell.swift
//  StarNet
//
//  Created by Miyo on 08/01/22.
//
import Foundation
import UIKit

struct QuestionForCell {
    let question: String
    var responses: [QuestionResponseForCell]
}

struct QuestionResponseForCell {
    let data: String
    let value: Double
    let color: UIColor
}

