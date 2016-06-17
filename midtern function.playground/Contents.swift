//: Playground - noun: a place where people can play

import UIKit

func sortArray(array1:[Int], array2:[Int]) -> [Int] {
    var array : [Int] = []
    var arrayelement: Int = 0
    var arrayelement1: Int = 0
    var temp: Int
    var i = 0
    var j = 1
    for element in array2{
        arrayelement = element
        while((!array.contains(element))){
         array.append(arrayelement)
        }
    }
    for element in array1{
        arrayelement1 = element
        while(!(array.contains(element))){
            array.append(arrayelement1)
        }
    }

    for (i = (array.count - 1); i >= 0; i -= 1 ){
        for (j = 1 ; j <= i ; j+=1){
            if (array[j-1]) > array[j]{
                temp = array[j-1]
                array[j-1] = array[j]
                array[j] = temp
        }
        
        }
        
    }
    return array
}

let result = sortArray([7,10,6], array2: [6,7,9])

print(result)


