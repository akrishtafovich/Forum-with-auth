class Post < ApplicationRecord
	belongs_to :user 
	has_many :comments
    scope :latest_comment, -> {  find_by_sql('select * from Posts where Posts.id = 4')} 
end
