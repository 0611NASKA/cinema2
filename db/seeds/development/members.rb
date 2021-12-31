ids = %w(Taro Jiro Hana John Mike Sophy Bill Alex Mary Tom)
fnames = ["佐藤", "鈴木", "高橋", "田中"]
gnames = ["太郎", "次郎", "花子"]
int = 10

0.upto(9) do |idx|
  Member.create(
    login_id: ids[idx],
    password: "#{ids[idx]}",
    name: "#{fnames[idx % 4]} #{gnames[idx % 3]}",
    birthday: "#{rand(1980..2000)}-#{rand(1..12)}-#{rand(1..20)}",
    tel: "0120-00-0"+idx.to_s+int.to_s,
    email: "#{ids[idx]}@example.com",
    payment: "クレジットカード"
  )
  int = int + 1
end
