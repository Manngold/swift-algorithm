func epidemic(_ tm: Int, _ n: Int, _ s0: Int, _ i0: Int, _ b: Double, _ a: Double) -> Int {
    var s: [Double] = [Double(s0)]
    var i: [Double] = [Double(i0)]
    var dt: Double = Double(tm) / Double(n)
    
    for index in 1...n {
      var sk: Double = s[index - 1]
      var ik: Double = i[index - 1]
      
      s.append(sk - dt * b * sk * ik)
      i.append(ik + dt * (b * sk * ik - a * ik))
    }
  
  
  return Int(i.max()!)
}