require "Player"

describe Player do

  subject{described_class.new "phillip"}
  describe "#creation" do
    it{expect(subject.name).to eq "phillip"}
  end
  describe "#health" do
    it{expect(subject.health).to eq 100}
  end
  describe "#takes_damage" do
    it "is expected to take damage" do
      subject.takes_damage 10
      expect(subject.health).to eq 90
    end
  end
end
