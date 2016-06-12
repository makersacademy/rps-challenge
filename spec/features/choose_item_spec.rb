
feature 'Choose_Items' do
  before :each do
    srand(0)
  end

  scenario 'players can pick objects in multiplayer' do
    multi_sign_in_and_play
    select "Rock", from: "pick_option1"
    click_button 'Select'
    select "Lizard", from: "pick_option2"
    click_button 'Select'
    expect(page).to have_content 'Rock crushes Lizard.'
  end

  scenario 'single player can pick item' do
    sign_in_and_play
    select "Rock", from: "single_select"
    click_button 'Select'
    expect(page).to have_content "Spock vaporizes Rock."
  end
end