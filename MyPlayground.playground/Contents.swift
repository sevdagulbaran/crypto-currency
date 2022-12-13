import UIKit

var result = 0

func update(_ completion: @autoclosure() -> (Int)) {
    result = completion()
}
print(result)
