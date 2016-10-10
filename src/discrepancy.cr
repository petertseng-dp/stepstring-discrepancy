# best, left, right, step
def largest_discrepancy(s : String) : Tuple(Int32, Int32, Int32, Int32)
  vals = s.each_char.map { |c| c == 'a' ? 1 : c == 'b' ? -1 : raise "Unknown char #{c}" }.to_a

  best = {0, 0, 0, 1}

  # So that we can reuse as much work as posssible, our outer loop is over the step.
  (1..vals.size).each { |step|
    # We can't do better. Prune.
    break if best[0] > vals.size / step

    (0...vals.size).each { |left|
      discrepancy = 0
      right = left
      until right >= vals.size
        # Since the right boundary is the one changing in the innermost loop,
        # at each iteration the discrepancy only changes by the value at the right boundary.
        discrepancy += vals[right]
        best = {discrepancy.abs, left, right, step} if discrepancy.abs > best[0]
        right += step
      end
    }
  }
  best
end
