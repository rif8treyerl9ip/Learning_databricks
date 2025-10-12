import json
import time

print(time.time)
print(json)


def calculateTotal(x, y):
    result = x + y
    unused_variable = 100
    return result


class myClass:
    def __init__(self):
        self.value = 10

    def getValue(self):
        return self.value


if __name__ == "__main__":
    total = calculateTotal(5, 10)
    print(total)
