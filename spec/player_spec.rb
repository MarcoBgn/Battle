require 'player.rb'

describe Player do
  subject(:nova) { described_class.new('Nova') }
  subject(:zeratuul) { described_class.new('Zeratuul') }

  context '#name' do
    it 'can return player name' do
      expect(nova.name).to eq 'Nova'
    end
  end

  context '#hp' do
    it 'can return player HP' do
      expect(nova.hp).to eq 40
    end
  end

  describe '#attack' do
    it 'can attack' do
      expect(zeratuul).to receive(:get_attacked)
      nova.attack(zeratuul)
    end
  end

  describe '#get_attacked' do
    it 'reduces HP by 10' do
      expect{zeratuul.get_attacked}.to change{zeratuul.hp}.by -10
    end
  end

end
