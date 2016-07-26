//
//  RootViewController.swift
//  switchFooterMenu2
//
//  Created by yuichi.watanabe on 2016/07/25.
//  Copyright © 2016年 yuichi.watanabe. All rights reserved.
//

import UIKit

class RootViewController: UIViewController, UIScrollViewDelegate, UICollectionViewDataSource, UICollectionViewDelegate
{

    
    @IBOutlet weak var collectionView : UICollectionView!           // collection
    
    @IBOutlet weak var pageControl    : UIPageControl!              // pageControl
    
    @IBOutlet      var waitFootView   : UIView!                     // wait menu
    
    @IBOutlet      var selectFootView : UIView!                     // select menu
    
    @IBOutlet      var inputFootView  : UIView!                     // input menu
    
    
    // -------------------------------------------------------------------------------------
    // MARK:  - life cycle -
    // -------------------------------------------------------------------------------------
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        setupCollection()       //
        setupPageConrtoll()     //
    }

    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
    }

    
    // -------------------------------------------------------------------------------------
    // MARK:  - Orientation -
    // -------------------------------------------------------------------------------------
    
    
    // -------------------------------------------------------------------------------------
    // MARK:  - ScrollViewDelegate -
    // -------------------------------------------------------------------------------------
    /** paging */
    func scrollViewDidEndDecelerating( scrollView: UIScrollView )
    {
        let pw = CGRectGetWidth( scrollView.frame )
        let of = collectionView.contentOffset.x
        
        updateCurrentPage(pageWidth: pw, pageOffset: of)    // update page
    }
    
    
    
    
    
    
    
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

    // MARK: setup collection
    /** setup collection */
    func setupCollection()
    {
        //collectionView.pagingEnabled = true // paging
    }
    
    func setupPageConrtoll()
    {
        pageControl.numberOfPages = 10
    }

    
    // MARK:  - update currentPage
    /** update currentPage */
    func updateCurrentPage( pageWidth pw: CGFloat, pageOffset of: CGFloat )
    {
        pageControl.currentPage = Int( of / pw )
    }
    
    
}