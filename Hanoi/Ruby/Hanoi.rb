def move(disk_number, start, last, intermediate)
    if disk_number != 0
      move(disk_number-1, start, intermediate, last)
      #puts "moving disk #{disk_number} from #{start} to #{last}"
      move(disk_number-1, intermediate, last, start)
    end
  end

#puts "ARGV[0].to_i = #{ARGV[0].to_i}"
move(ARGV[0].to_i,0, 2, 1)

puts "-------------------"
puts "End of ruby program"
