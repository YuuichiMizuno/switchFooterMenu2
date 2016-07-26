//
//  RootViewCollectionLayout.swift
//  switchFooterMenu2
//
//  Created by yuichi.watanabe on 2016/07/25.
//  Copyright © 2016年 yuichi.watanabe. All rights reserved.
//

import UIKit

class RootViewCollectionLayout : UICollectionViewFlowLayout
{
    // params
    
    let itemAmount = 10 
    
    
    let headerInset   : UIEdgeInsets = UIEdgeInsetsMake( 20,  0,  0,  0)
    let sectionsInset : UIEdgeInsets = UIEdgeInsetsMake(  0, 30,  0, 30)
    let footerInset   : UIEdgeInsets = UIEdgeInsetsMake( 20,  0,  0,  0)
    
    let headerHeight            : CGFloat =  0
    let itemHeight              : CGFloat = 78
    let minimumColumnSpacing    : CGFloat = 12
    let minimumInterItemSpacing : CGFloat = 12
    let footerHeight            : CGFloat = 0
    
    
    
    
    // arrays
    
    
    // -------------------------------------------------------------------------------------
    // MARK:  - life cycle -
    // -------------------------------------------------------------------------------------
    
    /** 事前レイアウト計算 */
    override func prepareLayout()
    {
        super.prepareLayout()
    }
    
    /** コンテンツ全体サイズ */
    override func collectionViewContentSize() -> CGSize
    {
        super.collectionViewContentSize()
        
        var    contentsSize : CGSize = (self.collectionView?.frame.size)!
               contentsSize.width    = contentsSize.width * CGFloat(itemAmount) // scroll landscape
        return contentsSize
    }
    
    /** 範囲内のセル */
    override func layoutAttributesForElementsInRect(rect: CGRect) -> [UICollectionViewLayoutAttributes]?
    {
        super.layoutAttributesForElementsInRect(rect)
        
        let frameSize : CGSize = (self.collectionView?.frame.size)!
        
        var attributes = [UICollectionViewLayoutAttributes]()
        for i in 0 ..< itemAmount
        {
            let attr = UICollectionViewLayoutAttributes(forCellWithIndexPath: NSIndexPath(forRow: i, inSection: 0) )
                attr.frame = CGRectMake( frameSize.width * CGFloat(i), 0, frameSize.height, frameSize.width ) // scroll landscape
            attributes.append( attr )
        }
        return attributes
    }
    
    
    // -------------------------------------------------------------------------------------
    // MARK:  - @Private -
    // -------------------------------------------------------------------------------------
    
    
    
}





























