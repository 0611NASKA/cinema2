name = ["生田", "神田", "石巻"]
int = 20

0.upto(2) do |idx|
  Theater.create(
    store_name: name[idx],
    address: "#{name[idx]} 1-1-1",
    tel: "0120-00-0"+idx.to_s+int.to_s
  )
end
