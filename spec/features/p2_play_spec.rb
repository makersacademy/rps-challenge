feature '2P Play Screen' do

  let(:name){ "Paul" }
  let(:p2name){ "Not Paul" }

  scenario 'Displays Play Screen welcome message' do
    multiplayer_sign_in(name,p2name)
    within("//div[@id='container']") do
      expect(page).to have_content("Let's Play!")
    end
  end

  scenario 'Displays Player 1 name' do
    multiplayer_sign_in(name,p2name)
    within("//div[@id='p1']") do
      expect(page).to have_content("#{name}")
    end
  end

  scenario 'Displays Player 2 name' do
    multiplayer_sign_in(name,p2name)
    within("//div[@id='p2']") do
      expect(page).to have_content("#{p2name}")
    end
  end

  scenario 'P1 has 3 buttons for rock, paper, scissors' do
    multiplayer_sign_in(name,p2name)
    within("//div[@id='player1box']") do
      expect(page).to have_selector(:link_or_button, 'Rock')
      expect(page).to have_selector(:link_or_button, 'Paper')
      expect(page).to have_selector(:link_or_button, 'Scissors')
    end
  end
  scenario 'P1 has 3 buttons for rock, paper, scissors' do
    multiplayer_sign_in(name,p2name)
    within("//div[@id='player2box']") do
      expect(page).to have_selector(:link_or_button, 'Rock')
      expect(page).to have_selector(:link_or_button, 'Paper')
      expect(page).to have_selector(:link_or_button, 'Scissors')
    end
  end



end
