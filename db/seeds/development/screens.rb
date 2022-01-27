1.upto(3) do |t|
  1.upto(12) do |n|
    Screen.create(
      screen_no: n,
      theater_id: t,
      seat_group: n
    )
  end
end
