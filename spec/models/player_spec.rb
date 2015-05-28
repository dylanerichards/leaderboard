require 'rails_helper'

describe Player do
  it { should respond_to :name }
  it { should respond_to :score }

  it { should validate_presence_of :name }
  it { should validate_presence_of :score }

  describe "#rank" do
    it "returns the rank of the player" do
      player1 = Player.create(name: "Dylan", score: 2)
      player2 = Player.create(name: "Simon", score: 3)

      expect(player2.rank).to eq 1
    end
  end
end
