require "spec"
require "../src/discrepancy"

describe :largest_discrepancy do
  it "handles Reddit samples" do
    pairs = [
      {"bbaaabababbaabbaaaabbbababbaabbbaabbaaaaabbababaaaabaabbbaaa", 9},
      {"bbaaaababbbaababbbbabbabababababaaababbbbbbaabbaababaaaabaaa", 12},
      {"aaaababbabbaabbaabbbbbbabbbaaabbaabaabaabbbaabababbabbbbaabb", 11},
      {"abbabbbbbababaabaaababbbbaababbabbbabbbbaabbabbaaabbaabbbbbb", 15},
    ]
    pairs.each { |k, v| largest_discrepancy(k)[0].should eq(v) }
  end
end
