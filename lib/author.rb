require 'pry'

class Author
    attr_accessor :name

    def initialize(name)
        @name=name
    end

    def posts
        Post.all.select do |post|
            post.author == self
        end
    end

    def add_post(post)
        post.author = self
    end

    def add_post_by_title(post_title)
        # first create an instance of a post Post.new(title)
        # then call add_post(title)
        new_post=Post.new(post_title)
        add_post(new_post)
    end

    def self.post_count
        Post.all.count 
    end

    def author_name
        binding.pry

    end
end
