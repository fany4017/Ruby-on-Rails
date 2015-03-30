categories = ["한식","일식","중식","양식"]

categories.each do |category|
	0.upto(1) do |i|
		p = Post.new
		p.user_id = i + 1
		p.category = category
		p.title = "#{category}집#{i} 이름"
		p.content = "#{category}집#{i} 설명"
		p.save
	end
end
