name = ["生田店", "神田店", "石巻店"]
int = 20

0.upto(2) do |idx|
  Theater.create(
    store_name: name[idx],
    address: "#{name[idx]} 1-1-1",
    tel: "0120-00-0"+idx.to_s+int.to_s
  )
  int = int +1
end
