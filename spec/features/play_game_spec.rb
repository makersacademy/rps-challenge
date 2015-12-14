# As a marketeer
# So that I can enjoy myself away from the daily grind
# I would like to be able to play rock/paper/scissors

feature 'game is playable' do
  scenario 'user is able to play rock paper scissors' do
    allow(Kernel).to receive(:rand).and_return(22)
    register
    fill_in(:player_one_choice, with: 'rock')
    click_button('Submit')
    expect(page).to have_content('won')
  end
end
