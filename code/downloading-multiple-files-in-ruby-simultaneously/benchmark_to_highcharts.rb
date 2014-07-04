benchmark = <<-EOT
                 user     system      total        real
    5        0.110000   0.050000   0.160000 (  2.751154)
    10       0.100000   0.050000   0.150000 (  1.346880)
    15       0.090000   0.040000   0.130000 (  0.979289)
    20       0.070000   0.040000   0.110000 (  0.768512)
    25       0.080000   0.050000   0.130000 (  0.633797)
    30       0.070000   0.040000   0.110000 (  0.710481)
    35       0.070000   0.040000   0.110000 (  0.554819)
    40       0.060000   0.040000   0.100000 (  0.532209)
    45       0.070000   0.050000   0.120000 (  1.206193)
    50       0.070000   0.050000   0.120000 (  0.611029)
    55       0.060000   0.040000   0.100000 (  0.438923)
    60       0.080000   0.060000   0.140000 (  2.635647)
    65       0.060000   0.040000   0.100000 (  0.683867)
    70       0.060000   0.040000   0.100000 (  0.439284)
    75       0.110000   0.070000   0.180000 (  4.584483)
    80       0.080000   0.050000   0.130000 (  1.978701)
    85       0.060000   0.050000   0.110000 (  0.588366)
    90       0.140000   0.110000   0.250000 (  7.176640)
    95       0.100000   0.070000   0.170000 (  3.593405)
    100      0.970000   1.350000   2.320000 ( 68.177221)
EOT

categories = []
series = []

benchmark.split("\n").each do |line|
  tokens = line.gsub(/\s+/, ' ').split(' ')
  if tokens.length > 4
    categories << tokens[0]
    series << tokens[5].to_f
  end
end

puts series.join(', ')
