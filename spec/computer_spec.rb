require './lib/computer'

describe Computer do
  subject(:computer) { Computer.new('Sheldon') }

  context '#initialization' do
    it 'should initialize with 0 wins' do
      expect(computer.wins).to eq 0
    end
  end

  # context '#name' do
  #   it 'should return a random name' do
  #     expect(computer.name).to include? %w(Leonard Sheldon Wolowitz Koothrappali)
  #   end
  # end
end
