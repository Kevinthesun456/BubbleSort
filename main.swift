

func readInput() -> [String]{
    var unsorted = [String]()
    while let line = readLine() {
        unsorted.append(line)
    }
    return unsorted
}

func swap(integers: inout [String], firstIndex: Int, secondIndex: Int) {
    (integers[firstIndex], integers[secondIndex])=(integers[secondIndex], integers[firstIndex])

}
func bubbleSort(array: [String]) -> [String] {
    var i = array
    var pass = 0
    var swaps: Int
    var swapsCount = 0
    repeat{
        swaps = 0
        for value in 0..<i.count - 1{
            let currentIndex = value
            let nextIndex = value + 1
            let currentElement = i[currentIndex]
            let nextElement = i[nextIndex]
            if currentElement > nextElement {
                swap(integers: &i,firstIndex: currentIndex, secondIndex: nextIndex)
                swaps += 1
                swapsCount += 1
            }
        }
        pass += 1
    }
      while swaps != 0
    return i
}
let i = bubbleSort(array: readInput()) 
for x in i {
    print(x)
}
