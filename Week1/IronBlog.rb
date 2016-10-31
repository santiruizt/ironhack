class Blog
	attr_reader :posts
	def initialize
	@posts = []
	end

	def add_post(post)
		@posts.push(post)

	end
	def array_printer
		@posts.each do |post|
			puts "Title: #{post.title}, Date: #{post.date}, Text: #{post.text}"
		end	
	end

	def sorted_by_day
		@posts.sort do |a, b|
			a.date <=> b.date
		end
	end

	def publish_front_page
		@posts.each do |el|
			if el.sponsored
				puts "*****#{el.title}*****"
				puts "********"
				puts el.text
				puts "--------"
			else
				puts el.title
				puts "********"
				puts el.text
				puts "--------"
			end
		end
	end	

end

class Post
	attr_accessor :title, :date, :text, :sponsored
	def initialize(title, date, text, sponsored=false)
		@title = title
		@date = date
		@text = text
		@sponsored = sponsored
	end
	

end



post1 = Post.new("POST 1: Prework insight", "01/10/2016", "It took me a long time")
post2 = Post.new("POST 2: Ironhack", "24/10/2016", "So far so good! Altough intense", true)
post3 = Post.new("POST 3: Life after Ironhack", "16/12/2016", "I'll already be dead")

blog = Blog.new

blog.add_post(post1)
blog.add_post(post2)
blog.add_post(post3)

blog.array_printer

blog.sorted_by_day

blog.publish_front_page


