import UIKit

//MARK: ARRAY IN SWIFT

//declare
var intArray = [Int]();

//add new item
//1
intArray.append(2);
intArray.append(25);
intArray.append(20);
//2
intArray += [1,2,3];

//get and set items
intArray[1] = 1000;
print(intArray[1]);
print(intArray);

//
for item in intArray {
    print("\(item)")
}
