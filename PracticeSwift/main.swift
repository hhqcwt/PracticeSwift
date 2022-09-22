//
//  main.swift
//  PracticeSwift
//
//  Created by Heehyung Park on 2022/09/08.
//

import Foundation

var name: String="yagom"
var age: Int=100
var job="iOS Programmer"
let height=181.5

   
print("저의 이름은 \(name)이고, 나이는 \(age)세이며, 직업은 \(job)입니다. 비밀이지만, 키는 \(height)센티미터입니다.")
    
//스위프트의 모든 데이터 타입 이름은 첫 글자가 대문 카멜레이스
//Int 는 +,-부호를 포함한 정수를 뜻하여 이 중 -부호를 포함하지 않는 0을 포함한 양의 정수는 UInt로 표현합니다. Int UInt타입의 최댓값과 최솟값은 각가  max와 min프로퍼티로 알아볼 수 있습니다.

var boolean: Bool = true
boolean.toggle()
let iLoveYou:Bool = true
let isTimeUnlimited:Bool=false

print("시간은 무한합니까? \(isTimeUnlimited)")

var floatValue:Float=1234567890.1
let doubleValue:Double=1234567890.1

print("floatValue: \(floatValue) doubleValue: \(doubleValue)")

//Character 말 그대로 '문자'를 의미합니다. 단어, 문장처럼 문자의 집합이 아닌 단 하나의 문자를 의미합니다.

let alphavetA: Character = "A"
print(alphavetA)

//Character 값에 유니코드 문자를 사용할 수 있습니다.
let name2:String="yagom"
var introduce: String=String()
introduce.append("제 이름은")

introduce=introduce+" "+name+"입니다."
print(introduce)

print("name의 글자 수: \(name.count)")
print("introduce가 비어있습니가?: \(introduce.isEmpty)")
//----------------------------Any, AnyObject, nil표현 정리
//Any-Swift의 모든 타입을 지칭하는 키워드
//AnyObject-모든 클래스 타입을 지칭하는 프로토콜
//nil-없음을 의미하는 키워드 비슷한 표현으로는 null, NULL, Null이 있다

var someAny: Any=100
someAny="어떤 타입도 수용 가능합니다"
someAny=123.12

class SomeClass{}
var someAnyObject: AnyObject = SomeClass()

//----------------------------컬렉션 타입 정리(Array, Dictionary, Set
//Array 순서가 있는 리스트 컬렉션
//Dictionary 키와 값의 쌍으로 이루어진 컬렉션
//Set 순서가 없고, 멤버가 유일한 컬렉션

var integers: Array<Int>=Array<Int>()
/*
class
    1. 전통적인 OOP관점에서의 클래스
    2. 단일상속
    3. (인스턴스/타입) 메서드
    4. (인스턴스/타입) 프로퍼티
    5. 참조타입
    6. Apple프레임워크의 대부분의 큰 뼈대는 모두 클래스로 구성
 
 Struct
    1. C언어 등의 구조체보다 다양한 기능
    2. 상속불가
    3. (인스턴스/타입) 메서드
    4. (인스턴스/타입) 프로퍼티
    5. 값타입
    6. Swift의 대부분의 큰 뼈대는 모두 구조체로 구성
 
 Enum
    1. 다른 언어의 열거형과는 많이 다른 존재
    2. 상속불가
    3.3. (인스턴스/타입) 메서드
 4. (인스턴스/타입) 프로퍼티
    4.
    5. 값타입
*/
struct SomeStruct{
    var someProperty: String="Property"
}

var someStructInstance: SomeStruct=SomeStruct()

func someFunction(structInstance: SomeStruct){
    var localVar: SomeStruct=structInstance
    localVar.someProperty="ABC"
}

someFunction(someStructInstance)
print(someStructInstance.someProperty)



