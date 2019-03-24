require './model/auto.rb'

feature 'Random move' do
  scenario 'displayes the randomly chosen move by the game' do
    sign_in_and_play
    click_button 'Lets Play'
    click_button 'Confirm'
    auto = Auto.new
    allow(auto).to receive(:random_pick).and_return('Paper')
    expect(auto.random_pick).to eq ('Paper')
  end
end