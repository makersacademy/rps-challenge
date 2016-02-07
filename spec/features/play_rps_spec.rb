# As a marketeer
# So that I can enjoy myself away from the daily grind
# I would like to be able to play rock/paper/scissors
feature 'Play rock/paper/scissors' do
  scenario 'choosing rock' do
    sign_in_and_play
    click_button 'rock'
    expect(page).to have_content 'You chose rock'
  end
end