t = ["大人", "中高生", "小学生", "幼児"]
s = [1800, 1500, 1000, 500]

0.upto(3) do |idx|
  Ticket.create(
    type: "#{t[idx]}",
    total: s[idx]
  )
end
