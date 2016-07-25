//
//  RootViewController.swift
//  switchFooterMenu2
//
//  Created by yuichi.watanabe on 2016/07/25.
//  Copyright © 2016年 yuichi.watanabe. All rights reserved.
//

import UIKit

class RootViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate
{

    // -------------------------------------------------------------------------------------
    // MARK:  - life cycle -
    // -------------------------------------------------------------------------------------
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
    }

    
    // -------------------------------------------------------------------------------------
    // MARK:  - Orientation -
    // -------------------------------------------------------------------------------------
    
    // -------------------------------------------------------------------------------------
    // MARK:  - UICollectionViewDataSource -
    // -------------------------------------------------------------------------------------
    /** numberOfSections */
    func numberOfSectionsInCollectionView(collectionView: UICollectionView) -> Int
    {
        return 1
    }
    /** numberOfItems */
    func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int
    {
        return 10
    }
    /** cellForItem */
    func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell
    {
        let    cell = collectionView.dequeueReusableCellWithReuseIdentifier("theCell",forIndexPath:indexPath) as! RootColllectionViewCell
               cell.testLabel.text = String(indexPath.row);
        return cell
    }
    
    
    // -------------------------------------------------------------------------------------
    // MARK:  - UICollectionViewDelegate -
    // -------------------------------------------------------------------------------------
    /** select */
    func collectionView(collectionView: UICollectionView, didSelectItemAtIndexPath indexPath: NSIndexPath)
    {
        //
    }
    
    
    // -------------------------------------------------------------------------------------
    // MARK:  - @Praivate -
    // -------------------------------------------------------------------------------------

}