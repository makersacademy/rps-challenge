describe "RPS", type: :feature do
  it "player can enter their name" do
    visit '/'
    click_button '1player'
    fill_in 'player_name', with: 'Jodi'
    click_button 'Submit'
    expect(page).to have_content 'Jodi'
  end

  it "players can enter their names" do
    visit '/'
    click_button '2player'
    fill_in 'player_one_name', with: 'Jodi'
    fill_in 'player_two_name', with: 'Jess'
    click_button 'Submit'
    expect(page).to have_content 'Jodi vs. Jess'
  end
end
