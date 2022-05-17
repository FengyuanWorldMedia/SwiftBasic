import Foundation

public extension String {
    
    var length: Int {
        return self.count
    }
    
    func contains(s: String) -> Bool {
        return (self.range(of: s) != nil) ? true : false
    }
    
    func firstIndexOf(substr: String) -> Int {
        let nsStr = NSString(string:self)
        let rng = nsStr.range(of: substr)
        return rng.location
    }
    
    func subString(beginIndex:Int, length:Int) -> String {
         let strArray = Array(self)
         let subStrArray = strArray[beginIndex..<beginIndex + length ]
         let result = String(subStrArray)
         return result
     }
    
    func getQueryStringParameter(param: String) -> String? {
        guard let url = URLComponents(string: self) else { return nil }
        return url.queryItems?.first(where: { $0.name == param })?.value
    }
    
    func getTokenQuery() -> String? {
        let equalIndex = self.firstIndexOf(substr: "token=")
        if equalIndex >= 0 {
            return self.subString(beginIndex: equalIndex + 6 , length: self.length - (equalIndex + 6) )
        }
        return nil
    }
}




extension String {
    
    // MARK: 1.Return the home absolute path.
    /**
     *  1.Return the home absolute path.
     */
    static func homeDir() -> String {
        let homeDirectory = NSHomeDirectory()
        return homeDirectory
    }
    
    // MARK: 2.Return the Cache absolute path.
    /**
     *  2.Return the Cache absolute path.
     */
    static func cacheDir() -> String {
        
        // Method 1
        /*
            let cachePaths = NSSearchPathForDirectoriesInDomains(FileManager.SearchPathDirectory.cachesDirectory, FileManager.SearchPathDomainMask.userDomainMask, true)
            //let cachePath = cachePaths.last
            let cachePath = cachePaths[0]
            return cachePath
        */
        
        //Method 2
        let cachePath2 = NSHomeDirectory() + "/Library/Caches"
        return cachePath2
    }
    // MARK: 3.Return the Documnets absolute path.
    /**
     *  3.Return the Documnets absolute path.
     */
    static func DocumnetsDir() -> String {
        //Method 1
        //        let documentPaths = NSSearchPathForDirectoriesInDomains(FileManager.SearchPathDirectory.documentDirectory, FileManager.SearchPathDomainMask.userDomainMask, true)
        //        let documnetPath = documentPaths[0]
        
        //Method 2
        let ducumentPath = NSHomeDirectory() + "/Documents"
        return ducumentPath
    }

    // MARK: 4.Return the Library absolute path.
    /**
     * 4.Return the Library absolute path.
        SubFolders：Caches And Preferences
         Library/Preferences
         Library/Caches
     */
    static func LibraryDir() -> String {
        // Method 1
        //        let libraryPaths = NSSearchPathForDirectoriesInDomains(FileManager.SearchPathDirectory.libraryDirectory, FileManager.SearchPathDomainMask.userDomainMask, true)
        //        let libraryPath = libraryPaths[0]
        //
        // Method 2
        let libraryPath = NSHomeDirectory() + "/Library"
        return libraryPath
    }

    // MARK: 5.Return the Tmp absolute path.
    /**
     *  5.Return the Tmp absolute path.
     */
    static func TmpDir() -> String {
        // Method 1
        // let tmpDir = NSTemporaryDirectory()
        
        // Method 2
        let tmpDir = NSHomeDirectory() + "/tmp"
        return tmpDir
    }
    
    public func replacingFirstOccurrence(of target: String, with replacement: String) -> String {
           guard let range = self.range(of: target) else { return self }
           return self.replacingCharacters(in: range, with: replacement)
    }
    
    //    func convertUnicode() -> String {
    //        return replacingOccurrences(
    //            of: "\\\\U([0-9a-z]{4,5})",
    //             with:  "\\\\u{$1}",
    //            options: .regularExpression,
    //            range: self.range(of: self))
    //    }
    public func substring (range: Range<Int>) -> String {
        return String(
            self[self.index(self.startIndex, offsetBy: range.lowerBound)..<self.index(self.startIndex, offsetBy: range.upperBound)]
        )
    }
    
    public func insert(with separator: String, every n: Int) -> String {
        return String(stride(from: 0, to: Array(self).count, by: n).map {
            Array(Array(self)[$0..<min($0 + n, Array(self).count)])
        }.joined(separator: separator))
    }
    
    // 循环删除字符串末尾的子串，该子串由rmArray来存放
    // 当末尾的子字符串乱序存在时，会循环将他们全部删除干净
    public mutating func removeSuffixString(_ rmArray: [String]) {
        
        func isFindSuffix(_ rmArray: [String]) -> Bool {
            var find: Bool = false
            rmArray.forEach { item in
                if self.hasSuffix(item) {
                    find = true
                    return
                }
            }
            return find
        }
        
        while isFindSuffix(rmArray) {
            self.removeLast()
        }
        
    }
}
