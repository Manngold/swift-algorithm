func tribonacci(_ signature: [Int], _ n: Int) -> [Int] {
  var answer: [Int] = []
  if n == 0 {
    return answer
  }
  
  for number in signature {
    answer.append(number)
    if answer.count == n{
      return answer
    }
  }
  
  for i in 3...n - 1{
    let l = answer[i - 3]
    let m = answer[i - 2]
    let r = answer[i - 1]
    answer.append(l + m + r)
  }
  
  return answer
}