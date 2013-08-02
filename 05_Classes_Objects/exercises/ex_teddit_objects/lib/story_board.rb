class StoryBoard
<<<<<<< HEAD
	@@board = []
	def self.add_story(story)
		@@board << story
	end

	def self.stories
		@@board.map do |tale|
			puts Story: #{tale.title}, Category: (#{tale.category}), Current Upvotes: #{tale.upvotes}
	end
=======
  @@stories = []

  def self.add_story(story)
    @@stories << story
  end

  def self.stories
    @@stories.map do |story|
      "Story: #{story.title}, Category: (#{story.category}), Current Upvotes: #{story.upvotes}"
    end
  end
>>>>>>> 476ab9081e5945aaff03f37eaea09e2827713b08
end
