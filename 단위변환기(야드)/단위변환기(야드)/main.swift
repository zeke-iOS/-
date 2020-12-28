import Foundation

let inputValue = readLine()!

//cm를 m로 변환하는 함수
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
    let intTypeInput = Double(convertInput.filter{!alphabet.contains($0)})!
    return intTypeInput
}

// 입력값에서 길이값을 빼고 남은 단위들의 배열
func onlyUnits(convertInput: String) -> [String] {
    let alphabet = "abcdefghijklmnopqrstuvwxyz "
    let unit = convertInput.filter{alphabet.contains($0)}.split(separator: " ").map{String($0)}
    return unit
}

//cm를 inch로 바꾸는 함수
func changeCmToYard(inputNumber: Double) -> String {
    let output = inputNumber / 91.44
    return String(format: "%.2f", output)
}

//inch를 cm로 바꾸는 함수
func changeYardToCm(inputNumber: Double) -> String {
    let output = inputNumber * 91.44
    return String(format: "%.2f", output)
}

//단위변환 함수
func convertInch(intValue: String) {
    let number = onlyNumbers(convertInput: intValue)
    let unit = onlyUnits(convertInput: intValue)
    let cmYard = changeCmToYard(inputNumber: number)
    let yardCm = changeYardToCm(inputNumber: number)
    let mCm = changeMToCM(inputNumber: number)
    let cmM = changeCMToM(inputNumber: number)
    
    if intValue == "quit" || intValue == "q" {
        print("프로그램 종료")
    }
    
    if unit.count == 1 {
        switch unit[0] {
        case "cm":
            print("\(cmYard)yard")
        case "m":
            print("\(mCm)cm")
        case "yard":
            print("\(yardCm)cm")
        default:
            print("지원하지 않는 단위입니다.")
        }
    } else {
        switch unit[0] {
        case "cm":
            print("\(cmYard)yard")
        case "m":
            print("\(changeCmToYard(inputNumber: Double(mCm)!))yard")
        case "yard":
            if unit[1] == "m" {
                print("\(changeCMToM(inputNumber: Double(yardCm)!))m")
            } else {
                print("\(yardCm)cm")
            }
        default:
            break
        }
    }
}

convertInch(intValue: inputValue)

