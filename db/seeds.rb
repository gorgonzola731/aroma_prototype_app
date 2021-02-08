user = User.first
Post.create!(title: "ラベンダー", content: "疲労回復できました！", user_id: user.id)
Post.create!(title: "シナモン", content: "気分がスッキリしました！", user_id: user.id)
Post.create!(title: "レモングラス", content: "やる気が出ました！", user_id: user.id)
puts "初期データの投入に成功しました！"