class Player < ActiveRecord::Base
  validates_presence_of :name, :score

  default_scope { order("score desc") }
end
