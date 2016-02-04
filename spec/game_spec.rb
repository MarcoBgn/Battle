require 'game'

describe Game do
  subject(:game)  { described_class.new(nova, zeratuul) }
  let(:nova)      { double :player        }
  let(:zeratuul)  { double :player        }

  
  
  describe '#attack' do 
    it 'can attack' do
      expect(zeratuul).to receive(:get_attacked)
      game.attack(zeratuul)
    end
  end
end