/* 
Copyright (c) 2017 Swift Models Generated from JSON powered by http://www.json4swift.com

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
*/

import Foundation
 
/* For support, please feel free to contact me at https://www.linkedin.com/in/syedabsar */

public class Headers {
	public var accept : String?
	public var accept_Encoding : String?
	public var accept_Language : String?
	public var host : String?
	public var upgrade_Insecure_Requests : Int?
	public var user_Agent : String?

/**
    Returns an array of models based on given dictionary.
    
    Sample usage:
    let headers_list = Headers.modelsFromDictionaryArray(someDictionaryArrayFromJSON)

    - parameter array:  NSArray from JSON dictionary.

    - returns: Array of Headers Instances.
*/
    public class func modelsFromDictionaryArray(array:NSArray) -> [Headers]
    {
        var models:[Headers] = []
        for item in array
        {
            models.append(Headers(dictionary: item as! NSDictionary)!)
        }
        return models
    }

/**
    Constructs the object based on the given dictionary.
    
    Sample usage:
    let headers = Headers(someDictionaryFromJSON)

    - parameter dictionary:  NSDictionary from JSON.

    - returns: Headers Instance.
*/
	required public init?(dictionary: NSDictionary) {

		accept = dictionary["Accept"] as? String
		accept_Encoding = dictionary["Accept-Encoding"] as? String
		accept_Language = dictionary["Accept-Language"] as? String
		host = dictionary["Host"] as? String
		upgrade_Insecure_Requests = dictionary["Upgrade-Insecure-Requests"] as? Int
		user_Agent = dictionary["User-Agent"] as? String
	}

		
/**
    Returns the dictionary representation for the current instance.
    
    - returns: NSDictionary.
*/
	public func dictionaryRepresentation() -> NSDictionary {

		let dictionary = NSMutableDictionary()

		dictionary.setValue(self.accept, forKey: "Accept")
		dictionary.setValue(self.accept_Encoding, forKey: "Accept-Encoding")
		dictionary.setValue(self.accept_Language, forKey: "Accept-Language")
		dictionary.setValue(self.host, forKey: "Host")
		dictionary.setValue(self.upgrade_Insecure_Requests, forKey: "Upgrade-Insecure-Requests")
		dictionary.setValue(self.user_Agent, forKey: "User-Agent")

		return dictionary
	}

}
