require 'computer'

describe 'has an instance of computer' do
  computer = Computer.new
  it 'has a class called computer' do
    expect(computer).to be_an_instance_of(Computer)
  end

  it 'chooses move' do
    expect(computer.move).to include('Rock')
  end

end
