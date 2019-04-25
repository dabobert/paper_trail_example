class Post < ApplicationRecord
  has_paper_trail

  def self.make
    Post.create! :name => Faker::Book.title, :author => Faker::Name.name, :body => Faker::Lorem.paragraphs(6).join(" ").strip
  end

end
