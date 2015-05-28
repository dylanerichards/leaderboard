class Player < ActiveRecord::Base
  validates_presence_of :name, :score

  default_scope { order("score desc") }

  def rank
    scores = Player.all.map(&:score).uniq
    scores.index(self.score) + 1
  end
end
