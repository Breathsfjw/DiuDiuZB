//
//  HomeViewController.swift
//  DiuDiuZB
//
//  Created by 范小丢 on 2021/1/18.
//

import UIKit

class HomeViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // 设置UI
        setUI()
    }
}

//MARK: - 设置UI界面
extension HomeViewController{
    private func setUI(){
        // 1、设置导航栏
        setupNavigationBar()
    }
    
    private func setupNavigationBar(){
        //设置左侧Item
        let btn = UIBarButtonItem(imageName: "logo")
//        btn.setImage(UIImage(named: "logo"), for: .normal)
//        btn.sizeToFit()
        navigationItem.leftBarButtonItem = btn 
        
        let size = CGSize(width: 40, height: 40)
//        let historyBtn = UIBarButtonItem.createItem(imageName: "image_my_history", highImageName: "image_my_history_click", size: size)
//        let searchBtn = UIBarButtonItem.createItem(imageName: "btn_search", highImageName: "btn_search_click", size: size)
//        let qrCodeBtn = UIBarButtonItem.createItem(imageName: "Image_scan", highImageName: "Image_scan_click", size: size)
        let historyBtn = UIBarButtonItem(imageName: "image_my_history", highImageName: "btn_search_click", size: size)
        let searchBtn = UIBarButtonItem(imageName: "btn_search", highImageName: "btn_search_click", size: size)
        let qrCodeBtn = UIBarButtonItem(imageName: "Image_scan", highImageName: "Image_scan_click", size: size)
        navigationItem.rightBarButtonItems = [historyBtn, searchBtn, qrCodeBtn]
    }
}
