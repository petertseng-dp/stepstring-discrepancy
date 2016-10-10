require "./src/discrepancy"

if ARGV.empty?
  puts "usage: #{PROGRAM_NAME} input"
  exit(1)
end

File.open(ARGV[0], "r") { |f|
  f.each_line { |l| puts largest_discrepancy(l.chomp) }
}
