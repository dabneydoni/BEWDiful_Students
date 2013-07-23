class StoryBoard
	@@board = []
	def self.add_story(story)
		@@board << story
	end

	def self.stories
		@@board.map do |tale|
			puts Story: #{tale.title}, Category: (#{tale.category}), Current Upvotes: #{tale.upvotes}
	end
end
