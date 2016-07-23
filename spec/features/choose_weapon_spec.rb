describe 'Can choose a weapon' do
  scenario 'after seeing vs screen we go to choose weapon screen' do
    visit '/home'
    fill_in "player_1_name", with: "Jonny"
    fill_in "player_2_name", with: "Santa Claus"
    click_button "Let's do this"
    click_button "I was born ready"
    expect(page).to have_content "Choose your weapon"
  end

  #scenario "can choose from the three RPS options"
end
