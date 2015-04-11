class Job < ActiveRecord::Base
  has_many :comments
  def self.most_recent
    order('created_at DESC')
  end
	validates_presence_of :description, :title
end
