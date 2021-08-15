require './lib/game.rb'
feature 'Tests features of result route' do

  scenario "Rock beats Scissors" do
    sign_in_and_play
    click_button('R-P-S!')
    expect(page).to have_button('Back')
  end

end