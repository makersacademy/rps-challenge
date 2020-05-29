feature "website" do
  feature "get '/'" do
    scenario 'has a form to enter a name' do
      visit('/')
      expect(page).to have_content("Player's name:")
    end
  end

  feature "get '/move'" do
    scenario 'has selection for RSP choice' do
      submit_name
      expect(page).to have_content('Rae what is your move?')
    end
  end

  feature "get /result" do
    scenario 'output of who won' do
      allow_any_instance_of(Array).to receive(:sample) {"Scissors"}
      submit_name
      submit_rock
      expect(page).to have_content('Rae won with Rock')
    end
  end

end
