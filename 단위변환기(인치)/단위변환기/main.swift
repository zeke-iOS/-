import Foundation

let inputValue = readLine()!

//cm를 m로 변환하는 함수
<<<<<<< HEAD
func changeCMToM(inputNumber: Double) -> String {
    let output = inputNumber * 0.01
    return String(format: "%.2f", output)
    
}

//m를 cm로 변환하는 함수
func changeMToCM(inputNumber: Double) -> String {
    let output = inputNumber * 100
    return String(format: "%.2f", output)
}

// String타입의 입력값의 단위를 제거한 후 Int타입만 남기는 함수
func onlyNumbers(convertInput: String) -> Double {
    let alphabet = "abcdefghijklmnopqrstuvwxyz "
=======
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
>>>>>>> main
    let intTypeInput = Double(convertInput.filter{!alphabet.contains($0)})!
    return intTypeInput
}

<<<<<<< HEAD
// 입력값에서 길이값을 빼고 남은 단위들의 배열
func onlyUnits(convertInput: String) -> [String] {
    let alphabet = "abcdefghijklmnopqrstuvwxyz "
    let unit = convertInput.filter{alphabet.contains($0)}.split(separator: " ").map{String($0)}
    return unit
}

//cm를 inch로 바꾸는 함수
func changeCmToInch(inputNumber: Double) -> String {
    let output = inputNumber / 2.54
    return String(format: "%.2f", output)
}

//inch를 cm로 바꾸는 함수
func changeInchToCm(inputNumber: Double) -> String {
    let output = inputNumber * 2.54
    return String(format: "%.2f", output)
}

//단위변환 함수
func convertInch(intValue: String) {
    let number = onlyNumbers(convertInput: intValue)
    let unit = onlyUnits(convertInput: intValue)
    let cmInch = changeCmToInch(inputNumber: number)
    let inchCm = changeInchToCm(inputNumber: number)
    let mCm = changeMToCM(inputNumber: number)
    let cmM = changeCMToM(inputNumber: number)
    
    if unit.count == 1 {
        switch unit[0] {
        case "cm":
            print("\(cmInch)inch")
        case "m":
            print("\(mCm)cm")
        case "inch":
            print("\(inchCm)cm")
        default:
            print("지원하지 않는 단위입니다.")
        }
    } else {
        switch unit[0] {
        case "cm":
            print("\(cmInch)inch")
        case "m":
            print("\(changeCmToInch(inputNumber: Double(mCm)!))inch")
        case "inch":
            if unit[1] == "m" {
                print("\(changeCMToM(inputNumber: Double(inchCm)!))m")
            } else {
                print("\(inchCm)cm")
            }
        default:
            break
        }
    }
}

convertInch(intValue: inputValue)

=======
func chooseMethod(inputValue: String) {
    let alphabet = "abcdefghijklmnopqrstuvwxyz"
    let intTypeInput = inputValue.filter{alphabet.contains($0)}
    switch intTypeInput {
    case "cm":
        changeCMToM(inputValue: inputValue)
    case "m":
        changeMToCM(inputValue: inputValue)
    default:
        break
    }
}

chooseMethod(inputValue: inputValue)
>>>>>>> main
