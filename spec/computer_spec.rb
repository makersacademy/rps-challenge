require 'computer'

describe Computer do

 context 'randomly choosing computer move' do
  it '#move choose random move' do
    expect(['rock','paper','scissors']).to include(Computer.move)
  end
 end
end