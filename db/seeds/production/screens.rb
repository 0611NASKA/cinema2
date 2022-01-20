0.upto(20) do |idx|
  Screen.create(
    theater_id: idx%3+1,
    screen_no: idx+1,
    seat_group: idx+1
  )
end
