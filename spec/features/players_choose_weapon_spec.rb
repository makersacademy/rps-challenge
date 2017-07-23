feature 'Players choose weapon' do
  scenario 'Player one chooses weapon' do
    sign_in_and_play
    click_button 'rock'
    expect(page).to have_content 'Name One has chosen a weapon!'
  end
end
