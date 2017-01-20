require "game"
describe Game do
  let(:player_1) {double :player_1, :name => "Mario", :health => 100 }
  let(:player_2) {double :player_2, :name => "Bowser", :health => 100 }
  subject{described_class.new player_1, player_2}
  describe "#creation" do
    it 'initializes with two arguments (players)' do
      expect(Game).to respond_to(:new).with(2).arguments
    end
    it "should have player one" do
      expect(subject.player_1[:player]).to eq player_1
    end
    it "should have player two" do
      expect(subject.player_2[:player]).to eq player_2
    end
  end
  describe "#attack" do
    it "should handle attacks" do
      allow(player_2).to receive(:takes_damage)
      subject.attack player_2
      expect(player_2).to have_received(:takes_damage).with(10)
    end
  end
  describe '#current_turn' do
    it 'starts as player 2' do
      expect(subject.current_turn[:name]).to eq player_2.name
    end
  end
  describe '#switch_turn' do
    it 'switches to the other player' do
      subject.current_turn
      expect(subject.current_turn[:name]).to eq player_1.name
    end
  end
end
