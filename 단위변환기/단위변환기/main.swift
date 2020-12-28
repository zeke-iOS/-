import Foundation

let inputValue = readLine()!

//cm를 m로 변환하는 함수
func changeCMToM(inputValue: String) {
    var output = inputValue
    let number = onlyNumbers(convertInput: inputValue)
    output = "\(number*0.01)m"
    print(output)
}

//m를 cm로 변환하는 함수
func changeMToCM(inputValue: String) {
    var output = inputValue
    let number = onlyNumbers(convertInput: inputValue)
    output = "\(number*100)cm"
    print(output)
}

// String타입의 입력값을 단위를 제거한 후 Int타입만 남기는 함수
func onlyNumbers(convertInput: String) -> Double {
    let alphabet = "abcdefghijklmnopqrstuvwxyz"
    let intTypeInput = Double(convertInput.filter{!alphabet.contains($0)})!
    return intTypeInput
}

