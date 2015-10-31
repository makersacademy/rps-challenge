# As a marketeer
# So that I can see my name in lights
# I would like to register my name before playing an online game

feature "Register name before playing the game" do
  scenario "enter your name" do
    visit ("/")
    expect(page).to have_content("Please enter your name")
  end

  scenario 'displays massage that the game can begin' do
    visit ("/")
    fill_in(:player_name, with: 'Rajeev')
    click_button("Submit")
    expect(page).to have_content "Hello Rajeev, you can start the game now"
    expect(page).to have_content "Your opponent is computer!"
  end

  scenario 'player can choose rock or paper or scissors' do
    visit ("/")
    fill_in(:player_name, with: 'Rajeev')
    click_button("Submit")
    click_button("Start")
    expect(page).to have_content 'Make a choice'
   end

   scenario "player defeats computer" do
     visit ("/")
     fill_in(:player_name, with: 'Rajeev')
     click_button("Submit")
     click_button("Start")
     click_button("rock")
     expect(page).to have_content "You have won, Rajeev"
    end


end
