feature 'player will be presented with three choices' do

  scenario 'select RAWK option' do
    register_and_play
    find_button 'RAWK'
  end

  scenario 'select PAYPAH option' do
    register_and_play
    find_button 'PAYPAH'
  end

  scenario 'select SKIZZORS option' do
    register_and_play
    find_button 'SKIZZORS'
  end
end
