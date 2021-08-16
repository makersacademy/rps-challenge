feature 'selecting move' do

  context 'before making selection' do

    scenario "all three options are displayed" do
      sign_in_and_play
      expect(page).to have_content "Make your move! Rock, Paper, or Scissors?"
      within("#rps_move") { expect(page).to have_content "Rock" }
      within("#rps_move") { expect(page).to have_content "Paper" }
      within("#rps_move") { expect(page).to have_content "Scissors" }
    end

  end

  context 'making selection' do

    scenario "player can select a move" do
      sign_in_and_play
      choose("rock")
      click_button('Submit')
      expect(page).to have_content "You played rock"
    end

  end

end