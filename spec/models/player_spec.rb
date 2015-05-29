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
      player3 = Player.create(name: "Uduma", score: 3)
      player4 = Player.create(name: "Smith", score: 5)

      expect(player4.rank).to eq 1
    end

    it "shares rank with players of the same score" do
      player1 = Player.create(name: "Dylan", score: 1)
      player2 = Player.create(name: "Simon", score: 1)

      expect(player1.rank).to eq 1
      expect(player2.rank).to eq 1
    end
  end
end
