//
//  HSegmentControlDataSource.swift
//  Pods
//
//  Created by Chang, Hao on 8/30/16.
//
//

import Foundation

public protocol HSegmentControlDataSource: class {
    /**
     Retrun the total number of segments
     */
    func numberOfSegments(_ segmentControl: HSegmentControl) -> Int
    /**
     Return the title of each segment
     */
    func segmentControl(_ segmentControl: HSegmentControl, titleOfIndex index: Int) -> String
    /**
     Return background view of each segment.
     The background view will be set with constraints to fit the size of each segment and will be set to `UIView()` if this method is not implemented.
     */
    func segmentControl(_ segmentControl: HSegmentControl, segmentBackgroundViewOfIndex index: Int) -> UIView
}

public extension HSegmentControlDataSource {
    func segmentControl(_ segmentControl: HSegmentControl, segmentBackgroundViewOfIndex index: Int) -> UIView {
        return UIView()
    }
}
