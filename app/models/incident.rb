class Incident < ActiveRecord::Base
  attr_accessible :date, :twitter_id

  scope :recent, order('date DESC')

  def days
    (Time.zone.today - date).to_i
  end
end
