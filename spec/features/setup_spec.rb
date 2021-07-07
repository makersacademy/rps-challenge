feature "website" do
  feature "get '/'" do
    scenario 'has a form to enter a name' do
      visit('/')
      expect(page).to have_content("Player's name:")
    end
  end

  feature "get '/move'" do
    scenario 'has selection for RSP choice' do
      p1_name
      submit
      expect(page).to have_content('Rae what is your move?')
    end
  end

  feature "get /result" do
    scenario 'output of who won' do
      allow_any_instance_of(Array).to receive(:sample) { "Scissors" }
      p1_name
      submit
      p1_rock
      submit
      expect(page).to have_content('Rae won')
    end
  end

  feature "get /result" do
    scenario 'has option to play again' do
      p1_name
      submit
      p1_rock
      submit
      click_button("play again")
      expect(page).to have_content('Rae what is your move?')
    end
  end

end
