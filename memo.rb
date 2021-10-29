require "csv"

puts "1(新規でメモを作成) 2(既存のメモを編集する)"

memo_type = gets.to_i

if memo_type == 1
  puts "新規でメモを作成します"
  puts "拡張子を除いたファイル名を入力してください"

file_name = gets.to_s.chomp

  puts "メモしたい内容を記入してください"
  puts "書き終えたらCtrl+Dを押してください"

  memo = $stdin.readlines

  CSV.open("#{file_name}.csv", "w") do |csv|
  csv << ["#{memo}"]
end



elsif memo_type == 2
  puts "編集する内容を記述してください"
CSV.open("#{file_name}.csv", "a") do |csv|
  csv << ["#{memo}"]
end
end