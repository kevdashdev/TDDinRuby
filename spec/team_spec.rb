require_relative '../lib/team'
describe Team do
  it 'has a name' do
    Team.new.should respond_to :name
  end
  it 'has a list of players' do
    Team.new.players.should be_kind_of Array
  end
  it 'is favored if it has a celebrity in it' do
    Team.new('Random Name', ['George Clooney', 'Carling Candelaria']).should be_favored
  end

  it 'compains if there is a bad word in the name' do
    expect {Team.new('Crappy name')}.to raise_error
  end

  context 'given a bad list of players' do
    let(:bad_list) { {} }
    it 'fails to create give na bad player list' do
      expect { Team.new('', bad_list) }.to raise_error
    end
  end
end
