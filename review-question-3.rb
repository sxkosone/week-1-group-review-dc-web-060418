##Group work together with Will, Essa, Anthony and Susanna
# begin to build a simple program that models Instagram
# you should have a USER class
class User
    attr_accessor :name

    def initialize(name)
        self.name = name
    end

    def photos
        Photo.all.select {|photo| photo.user == self}
    end
end
#a COMMENT class 
class Comment
    attr_reader :photo, :text

    @@all = []

    def initialize(photo, text)
        @photo = photo
        @text = text
        @@all << self
    end

    def self.all
        @@all
    end
end
#and a PHOTO class
class Photo

    attr_accessor :user
    @@all = []

    def initialize(user=nil)
        @user = user
        @@all << self
    end

    def self.all
        @@all
    end

    def comments
        Comment.all.select {|comment| comment.photo == self}
    end

    def make_comment(text)
        Comment.new(self, text)
    end
end

photo = Photo.new
user = User.new("Sophie")
photo.user = user
photo.user.name
# => "Sophie"
user.photos
# => [<photo 1>]


photo.comments
# => []

photo.make_comment("this is such a beautiful photo of your lunch!! I love photos of other people's lunch")
photo.comments
# => [<comment1>]

Comment.all
#=> [<comment1>]
