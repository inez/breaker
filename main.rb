def set_brightness(brightness)
  puts "Setting brightness to #{brightness}"
  `brightness #{brightness}`
end

loop do
  sleep(60*25)

  10.times do |index|
    brightness_val = (10-index)/10.to_f
    set_brightness(brightness_val)
    sleep(0.05)
  end

  40.times do
    set_brightness(0)
    sleep(0.5)
  end

  10.times do |index|
    brightness_val = (1+index)/10.to_f
    set_brightness(brightness_val)
    sleep(0.1)
  end
end
