# userDefaults-in-swift
##  userDefaults in swift

**UserDefaults** là một lớp được cung cấp bởi iOS để lưu trữ các **cặp giá trị khóa (key-value)** đơn giản, chẳng hạn như chuỗi, số nguyên, mảng, và các đối tượng cơ bản khác. Bạn nên sử dụng UserDefaults để lưu trữ dữ liệu nhỏ và không nhạy cảm như tùy chọn của người dùng, cài đặt ứng dụng, hoặc trạng thái của giao diện người dùng. <br><br>

**UserDefaults** là công cụ hữu ích cho việc lưu trữ các cài đặt và trạng thái nhỏ, nhưng không thay thế cho các phương pháp lưu trữ dữ liệu phức tạp hoặc nhạy cảm như Core Data, SQLite, hoặc Keychain. <br><br>
 ```swift
func saveUserData(userId: String, data: [String: Any]) {
    let defaults = UserDefaults.standard
    defaults.set(data, forKey: userId)
}

func loadUserData(userId: String) -> [String: Any]? {
    let defaults = UserDefaults.standard
    return defaults.dictionary(forKey: userId) as? [String: Any]
}

 ```
