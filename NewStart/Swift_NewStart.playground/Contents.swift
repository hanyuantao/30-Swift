import UIKit
var str = "Hello, playground"

let cat = "?";print(cat)

let three = 3
let pointOneFoure = 0.415
let pi = Double(three) + pointOneFoure
typealias MyInt = UInt8
var intstt:MyInt = 0
print(intstt);

let  a = true
let  af = 1.0
let A = Int(af)
print(A)

//元组
let httperror = (404, "Not Found")
print(httperror.0)
print(httperror.1)
let (statusCode, statusMessage) = httperror
print(statusCode)
print(statusMessage)

let http202Error = (status:202, errorMsg:"OK")
print(http202Error.status)





