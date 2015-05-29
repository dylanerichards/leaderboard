class Player < ActiveRecord::Base
  after_create :set_rank, :update_ranks

  validates_presence_of :name, :score

  default_scope { order("score desc") }

  def generate_rank
    scores = Player.all.map(&:score).uniq
    scores.index(self.score.to_i) + 1
  end

  def set_rank
    self.rank = generate_rank
    self.save
  end

  def update_ranks
    Player.all.each do |player|
      player.set_rank
    end
  end
end
