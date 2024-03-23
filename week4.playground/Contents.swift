import UIKit
//
////function
///*
//     func nameOfFunction(a:Type, a:Type, ...) -> ReturnType {
//        //code here
//     }
// */
//
//func plus<T:Numeric>(_ a:T ,_ b:T) -> T {
//    return a + b;
//}
//
//func sub<T:Numeric>(soBitru a:T ,soTru b:T) -> T {
//    return a - b;
//}
//
//func mul<T:Numeric>(_ a:T ,_ b:T) -> T {
//    return a * b;
//}
//
////func div<T:Numeric>(soBiChia a:T ,soChia b:T) -> T {
////    if b == 0 {
////        //
////        return T.zero;
////    } else {
////        if let _ = a as! Int, let _ b as! Int {
////            return  (Int) (a / b);
////        } else {
////            return  (Double) (a / b);
////        }
////
////    }
////
////}
//
//var a:Double, b:Double, c:Int;
//
//a = 3.0;
//b = 19.0;
//c = -3;
//
//print("\(a) + \(b) = \(plus(a,b))")
//print("\(a) - \(b) = \(sub(soBitru: a, soTru: b))")
//print("\(a) * \(b) = \(mul(a,b))")
////print("\(a) / \(b) = \(div(soBiChia: a, soChia: b))")
//
//
//func hamSoMu(coSo a:Double, soMu x:Int) -> Double {
//    if x < 0 {
//        return 1.0 / hamSoMu(coSo: a, soMu: -1*x);
//    }
//
//    if x == 0 {
//        return 1;
//    }
//
//    return a * hamSoMu(coSo: a, soMu: x - 1);
//}
//
//print("\(a)^\(c) = \(hamSoMu(coSo: a, soMu: c)) ")
//
///*
// swap
// */
//
//func hoanVi<T>(a:inout T, b:inout T) {
//    var temp:T = a;
//    a = b;
//    b = temp;
//}
//
//var swap1 = 12.0, swap2 = 21.0;
//hoanVi(a: &swap1, b: &swap2);
//print("\(swap1) -- \(swap2)")
//
//var btnLogin = UIButton();
//var btnCancel = UIButton();
//
//btnLogin.titleLabel!.text = "Login";
//btnCancel.titleLabel!.text = "Cancel";
//
//func hoanViDoiTuong(btn1:UIButton,btn2:UIButton) {
//    if let btn1Name = btn1.titleLabel!.text, let btn2Name = btn2.titleLabel!.text {
//        btn1.titleLabel!.text = btn2Name;
//        btn2.titleLabel!.text = btn1Name;
//    }
//}
//
//hoanViDoiTuong(btn1: btnLogin, btn2: btnCancel);
//
//if let _ = btnLogin.titleLabel!.text, let _ = btnCancel.titleLabel!.text {
//    print("\(btnLogin.titleLabel!.text!) --- \(btnCancel.titleLabel!.text!)");
//}
//
//func hoanViThamChieuDoiTuong<T>(btn1: inout T, btn2: inout T) {
//    var temp = btn1;
//    btn1 = btn2;
//    btn2 = temp;
//}
//
//hoanViThamChieuDoiTuong(btn1: &btnLogin, btn2: &btnCancel)
//if let _ = btnLogin.titleLabel!.text, let _ = btnCancel.titleLabel!.text {
//    print("\(btnLogin.titleLabel!.text!) --- \(btnCancel.titleLabel!.text!)");
//}
//
///*
// Generic function
// */
//
//
//func tinhTong<T:Numeric>(_ t:T...) -> T {
//    var sum:T = 0;
//    for i in t {
//        sum += i;
//    }
//
//    return sum;
//}
//
//print("Tong(1,2,3.4) = \(tinhTong(1,2,3.4))");

/*
 
 */
func tinhToan(para a:Double, function f:(Double)->Double) -> Double {
    return f(a);
}
var a:Double = 90;

print("\(tinhToan(para: a,function: cos))");
print("\(tinhToan(para: a,function: sin))");
print("\(tinhToan(para: a,function: sqrt))");
