require 'player.rb'

describe Player do
  subject(:player) { described_class.new('Nova') }

  it 'can return player name' do
    expect(subject.name).to eq 'Nova'
  end

end
