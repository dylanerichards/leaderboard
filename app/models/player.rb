class Player < ActiveRecord::Base
  validates_presence_of :name, :score

  default_scope { order("score desc") }

  def self.leaderboard
    all.group_by(&:score).first
  end
end
