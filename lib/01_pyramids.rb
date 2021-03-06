def pyramid_height
  # Return the pyramid height
  puts "What's the height of your pyramid lord?"
  print "❯ "
  return Integer(gets.chomp)
end

def full_pyramid(height)
  # Draw the upper pyramid
  base_length = height * 2 - 1
  i = 1 # Iteration for hashtag sign
  
  puts "Here's your pyramid master!"

  height.times do
    puts " " * (Integer(base_length / 2) - Integer(i / 2)) + "#" * i
    i += 2
  end
end

def wft_pyramid(height)
  # Draw a WFT pyramid
  h = height
  n = 1 # Hashtag qty on a line

  while (h % 2) == 0
    # Check if the value is divisible by 2
    puts "You must choose an odd height!"
    h = pyramid_height
  end

  puts "Here's your pyramid master!"

  h.times do |i|
    i += 1 # Line number (start at 1)
    m = (Float(h) / 2.0).ceil # Middle line

    #print "#{if i < 10 then "0#{i}" else "#{i}" end} - #{m} - #{n}: " # Debug

    if i < m
      puts " " * ((h - n) / 2) + "#" * n
      n += 2
    elsif i > m
      puts " " * ((h - n) / 2) + "#" * n
      n -= 2
    else
      puts "#" * h
      n -= 2
    end
  end
end

def get_pyramid_type
  puts "Choose your pyramid type:"
  puts "1 - Normal"
  puts "2 - WFT"

  print "❯ "
  pyramid_type = Integer(gets.chomp)

  if pyramid_type == 1
    full_pyramid(pyramid_height)
  elsif pyramid_type == 2
    wft_pyramid(pyramid_height)
  else
    puts "Choose between 1 and 2!"
    get_pyramid_type
  end
end

get_pyramid_type