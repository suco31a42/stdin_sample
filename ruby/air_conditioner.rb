input_lines = readlines

room = input_lines[0].to_i
air_conditioner = input_lines[1].to_i
air_flow = input_lines[2].to_i

temperature_diff = (room - air_conditioner).abs

require_time = 0

if temperature_diff < 5 then
  require_time = 15
elsif temperature_diff >= 5 && temperature_diff < 10 then
  require_time = 30
elsif temperature_diff >= 10 then
  require_time = 60
end

if air_flow == 1
  require_time 
elsif air_flow == 2 then
  require_time = require_time - 5
elsif air_flow == 3 then
  require_time = require_time - 10
else
  puts "風量の値は１～３にしてください"
  exit
end


puts "適正温度になるまで" + require_time.to_s + "分掛かります。"