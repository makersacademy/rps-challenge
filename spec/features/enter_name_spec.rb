# As a marketeer
# So that I can see my name in lights
# I would like to register my name before playing an online game

feature "Registering names to play the game" do

  context "1 Player game vs computer" do
    scenario 'submit player name' do
      select_computer_opponent
      fill_in :player_one, with: "Bob"
      click_button 'Register'
      expect(page).to have_content 'Bob, are you ready to play?'
    end

    scenario 'submit player name' do
      select_computer_opponent
      fill_in :player_one, with: "Anne"
      click_button 'Register'
      expect(page).to have_content 'Anne, are you ready to play?'
    end

    scenario 'submit an empty player name' do
      select_computer_opponent
      click_button 'Register'
      expect(page).to have_content 'Please enter your name'
    end
  end

  context "2 Player game" do
    scenario 'submit player names' do
      select_human_opponent
      fill_in :player_one, with: "Bob"
      fill_in :player_two, with: "Fred"
      click_button 'Register'
      expect(page).to have_content 'Bob, are you ready to play?'
    end

    scenario 'submit an empty player name for player 2' do
      select_human_opponent
      fill_in :player_one, with: "Bob"
      click_button 'Register'
      expect(page).to have_content 'Please enter your name'
    end

    scenario 'submit an empty player name for player 1' do
      select_human_opponent
      fill_in :player_two, with: "Fred"
      click_button 'Register'
      expect(page).to have_content 'Please enter your name'
    end

    scenario 'submit an empty player name for player 1 and player 2' do
      select_human_opponent
      click_button 'Register'
      expect(page).to have_content 'Please enter your name'
    end

  end

end
