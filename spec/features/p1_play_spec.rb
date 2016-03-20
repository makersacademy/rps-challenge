feature 'Play Screen' do

  let(:name){ "Paul" }

  scenario 'Displays Play Screen welcome message' do
    sign_in_and_play(name)
    within("//div[@id='container']") do
      expect(page).to have_content("Let's Play!")
    end
  end

  scenario 'Displays Player 1 name' do
    sign_in_and_play(name)
    within("//div[@id='p1']") do
      expect(page).to have_content("#{name}")
    end
  end

  scenario 'Has 3 buttons for rock, paper, scissors' do
    sign_in_and_play(name)
    within("//div[@id='player1box']") do
      expect(page).to have_selector(:link_or_button, 'Rock')
      expect(page).to have_selector(:link_or_button, 'Paper')
      expect(page).to have_selector(:link_or_button, 'Scissors')
    end
  end


end
