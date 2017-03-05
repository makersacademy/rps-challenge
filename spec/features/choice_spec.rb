
feature 'player_name has three choices' do

  before do
    sign_in_and_play
  end

  scenario 'player can select rock' do
    click_button('rock')
    expect(page).to have_content "You chose rock!"
  end

  scenario 'player can select paper' do
    click_button('paper')
    expect(page).to have_content "You chose paper!"
  end

  scenario 'player can select scissors' do
    click_button('scissors')
    expect(page).to have_content "You chose scissors!"
  end

end
