require_relative '../lib/add'
describe 'Add function' do
  it 'adds two numbers' do
    add(1, 5).should == 6
  end
end
