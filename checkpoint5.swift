var luckyNumbers: [Int] = [7, 4, 38, 21, 16, 15, 12, 33, 31, 49]

var luckierNumbers: [Int] = luckyNumbers.filter( {$0 % 2 != 0} )
// filtering out even numbers
// running a closure for the filter
// only give me the elements with remainders when divided by 2
print(luckierNumbers)

var sortedNums: [Int] = luckierNumbers.sorted()
print(sortedNums)

sortedNums.forEach({ print("\($0) is a lucky number!") })