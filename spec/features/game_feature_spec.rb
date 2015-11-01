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
    click_button("Register")
    expect(page).to have_content "Hello Rajeev, your opponent is computer!"
  end

  scenario 'player can choose rock or paper or scissors' do
    visit ("/")
    fill_in(:player_name, with: 'Rajeev')
    click_button("Register")
    expect(page).to have_content "Select one of"
   end

   scenario "player defeats computer" do
     allow_any_instance_of(Array).to receive(:sample).and_return(:scissors)
     visit ("/")
     fill_in(:player_name, with: 'Rajeev')
     click_button("Register")
     click_link("rock")
     expect(page).to have_content "You have won, Rajeev!"
    end

    scenario "computer defeats player" do
      allow_any_instance_of(Array).to receive(:sample).and_return(:scissors)
      visit ("/")
      fill_in(:player_name, with: 'Rajeev')
      click_button("Register")
      click_link("paper")
      expect(page).to have_content "You have lost, Rajeev!"
     end

     scenario "there can be a tie" do
       allow_any_instance_of(Array).to receive(:sample).and_return(:scissors)
       visit ("/")
       fill_in(:player_name, with: 'Rajeev')
       click_button("Register")
       click_link("scissors")
       expect(page).to have_content "You have a tie, Rajeev!"
      end
end
