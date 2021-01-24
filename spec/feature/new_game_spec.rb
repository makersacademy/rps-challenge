feature 'Entering names' do

  feature 'when you enter your name' do
    scenario 'Website displays it' do
      sign_in_and_play
      expect(page).to have_content "It's #{player_1_name} against #{player_2_name}"
    end
  end

end
