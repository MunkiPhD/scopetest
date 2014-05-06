# == Schema Information
#
# Table name: posts
#
#  id         :integer          not null, primary key
#  author     :string(255)
#  title      :string(255)
#  body       :text
#  created_at :datetime
#  updated_at :datetime
#

class Post < ActiveRecord::Base
	has_many :comments

	# If you want to see the issue occur, simply uncomment line 17, and comment line 18
	# scope :created_before, ->(time) { where("created_at < ?", time) }
	scope :created_before, ->(time) { where("posts.created_at < ?", time) }
end
