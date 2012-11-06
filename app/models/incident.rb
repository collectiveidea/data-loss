class Incident < ActiveRecord::Base
  attr_accessible :date, :twitter_id

  scope :recent, order('date DESC')
end
