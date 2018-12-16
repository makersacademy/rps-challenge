require './app.rb'
require './spec/features/web_helpers.rb'

feature 'Playing the game' do
scenario "When I submit 'Rock' I am told if I have won" do
    allow_any_instance_of(Computer).to receive(:weapon).and_return('Scissors')
    sign_in_and_play
    choose('rock')
    click_button('Play')
    expect(page).to have_content "You win"
  end
end