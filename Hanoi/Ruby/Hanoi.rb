def move(disk_number, start, last, intermediate)
    if disk_number != 0
      move(disk_number-1, start, intermediate, last)
      move(disk_number-1, intermediate, last, start)
    end
  end


move(33,0, 2, 1)
