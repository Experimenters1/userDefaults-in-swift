//
//  ViewController.swift
//  test
//
//  Created by Huy vu on 17/8/24.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        // Gọi các hàm để lưu và truy xuất dữ liệu
        saveUserSettings()
        
        removeData(forKey: "numbers")
        
        loadUserSettings()
        
        // Xóa toàn bộ dữ liệu UserDefaults
        clearUserDefaults()
        
        loadUserSettings()

    }
    
    // Lưu trữ giá trị vào UserDefaults
    func saveUserSettings() {
        let defaults = UserDefaults.standard
        defaults.set("DarkMode", forKey: "theme")
        defaults.set(true, forKey: "isLoggedIn")
        defaults.set(2,forKey: "Int")
        defaults.set([1, 2, 3], forKey: "numbers")
    }
    
    // Truy xuất giá trị từ UserDefaults
    func loadUserSettings() {
        let defaults = UserDefaults.standard
        if let theme = defaults.string(forKey: "theme") {
            print("Theme: \(theme)")
        }
        let isLoggedIn = defaults.bool(forKey: "isLoggedIn")
        print("Is Logged In: \(isLoggedIn)")
        
        let intValue = defaults.integer(forKey: "Int")
        print(intValue)
        
        let array = defaults.array(forKey: "numbers")
        print(array ?? 0)
    }
    
    //Xóa dữ liệu cho một khóa cụ thể
    func removeData(forKey key: String) {
        let defaults = UserDefaults.standard
        defaults.removeObject(forKey: key)
    }
    
    //Xóa tất cả dữ liệu trong UserDefaults
    func clearUserDefaults() {
        let defaults = UserDefaults.standard
        let domain = Bundle.main.bundleIdentifier!
        defaults.removePersistentDomain(forName: domain)
        defaults.synchronize()
    }


}

