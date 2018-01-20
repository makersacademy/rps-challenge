feature "Player can enter name " do
  scenario "Page confirms instructions to enter player name" do
    visit('/')
    expect(page).to have_content 'Welcome to Rock!Paper!Scissors!'
    expect(page).to have_content 'Please enter your name to play'
  end
  scenario "player can enter name and submit" do
    visit('/')
    fill_in 'player_name', :with => 'Leigh-ann'
    click_button "Let's go"
    expect(page).to have_content 'Leigh-ann, lets play Rock!Paper!Scissors!'
  end
end
