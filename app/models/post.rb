class Post < ActiveRecord::Base
# The title cannot be blank
# The category is either "Fiction" or "Non-Fiction"
# The content is at least 100 characters long.

validates :title, presence: true
validates :category, inclusion: { in: %w(Fiction Non-Fiction)}
validates :content, length: { minimum: 100 }
end
