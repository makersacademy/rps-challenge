# As a marketeer
# So that I can see my name in lights
# I would like to register my name before playing an online game

feature "Register name before playing the game" do

  scenario "enter your name" do
    visit("/")
    expect(page).to have_content("Please enter your name")
  end

  scenario 'displays massage that the game can begin' do
    visit("/")
    fill_in(:player_name, with: 'Rajeev')
    click_button("Register")
    expect(page).to have_content "Hello Rajeev, your opponent is computer!"
  end

  scenario "player chooses rock, computer chooses scissors, player wins" do
   allow_any_instance_of(Array).to receive(:sample).and_return(:scissors)
   visit("/")
   fill_in(:player_name, with: 'Rajeev')
   click_button("Register")
   click_link("rock")
   expect(page).to have_content "You have won"
  end

  scenario "player chooses scissors, computer chooses paper, player wins" do
   allow_any_instance_of(Array).to receive(:sample).and_return(:paper)
   visit("/")
   fill_in(:player_name, with: 'Rajeev')
   click_button("Register")
   click_link("scissors")
   expect(page).to have_content "You have won"
  end

  scenario "player chooses paper, computer chooses rock, player wins" do
   allow_any_instance_of(Array).to receive(:sample).and_return(:rock)
   visit("/")
   fill_in(:player_name, with: 'Rajeev')
   click_button("Register")
   click_link("paper")
   expect(page).to have_content "You have won"
  end

  scenario "player chooses scissors, computer chooses rock, computer wins" do
   allow_any_instance_of(Array).to receive(:sample).and_return(:rock)
   visit("/")
   fill_in(:player_name, with: 'Rajeev')
   click_button("Register")
   click_link("scissors")
   expect(page).to have_content "You have lost"
  end

  scenario "player chooses paper, computer chooses scissors, computer wins" do
   allow_any_instance_of(Array).to receive(:sample).and_return(:scissors)
   visit("/")
   fill_in(:player_name, with: 'Rajeev')
   click_button("Register")
   click_link("paper")
   expect(page).to have_content "You have lost"
  end

  scenario "player chooses rock, computer chooses paper, computer wins" do
   allow_any_instance_of(Array).to receive(:sample).and_return(:paper)
   visit("/")
   fill_in(:player_name, with: 'Rajeev')
   click_button("Register")
   click_link("rock")
   expect(page).to have_content "You have lost"
  end

  scenario "player chooses rock, computer chooses rock, there is a tie" do
   allow_any_instance_of(Array).to receive(:sample).and_return(:rock)
   visit("/")
   fill_in(:player_name, with: 'Rajeev')
   click_button("Register")
   click_link("rock")
   expect(page).to have_content "You have a tie"
  end

  scenario "player chooses scissors, computer chooses scissors, there is a tie" do
   allow_any_instance_of(Array).to receive(:sample).and_return(:scissors)
   visit("/")
   fill_in(:player_name, with: 'Rajeev')
   click_button("Register")
   click_link("scissors")
   expect(page).to have_content "You have a tie"
  end

  scenario "player chooses paper, computer chooses paper, there is a tie" do
   allow_any_instance_of(Array).to receive(:sample).and_return(:paper)
   visit("/")
   fill_in(:player_name, with: 'Rajeev')
   click_button("Register")
   click_link("paper")
   expect(page).to have_content "You have a tie"
  end

end
