feature "Players can enter name " do
  scenario "Page confirms instructions to enter player name" do
    visit('/')
    expect(page).to have_content 'Welcome to Rock!Paper!Scissors!'
    expect(page).to have_content 'Please enter your name to play'
  end
  scenario "players can enter names and submit" do
    visit('/')
    fill_in 'player_1_name', :with => 'Leigh-ann'
    fill_in 'player_2_name', :with => 'Andy'
    click_button "Let's go"
    expect(page).to have_content 'Leigh-ann vs Andy!! Lets play Rock!Paper!Scissors!'
  end
end
