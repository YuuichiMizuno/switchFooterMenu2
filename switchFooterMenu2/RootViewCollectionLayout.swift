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
    
    /** 初めの事前計算 */
    override func prepareLayout()
    {
        
    }
    
    /** 全体サイズ */
    override func collectionViewContentSize() -> CGSize
    {
        //return contentSize
        return CGSize(width: 200, height: 200)
    }
    
    /** 範囲内のセル */
    override func layoutAttributesForElementsInRect(rect: CGRect) -> [UICollectionViewLayoutAttributes]?
    {
        let    layoutAttributes = [UICollectionViewLayoutAttributes]()
        return layoutAttributes
    }
    
    
    // -------------------------------------------------------------------------------------
    // MARK:  - @Private -
    // -------------------------------------------------------------------------------------
    
    
    
}