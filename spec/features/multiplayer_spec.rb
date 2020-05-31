feature 'multiplayer' do

  feature "get '/move'" do
    scenario 'has selection for RSP choice' do
      submit_name
      submit_name_2
      submit
      expect(page).to have_content('Rae what is your move?')
    end
  end

  feature "goes to '/move2'" do
    scenario 'has player 2 selection for RSP choice' do
      submit_name
      submit_name_2
      submit
      submit_rock
      submit
      expect(page).to have_content('Bob what is your move?')
    end
  end

  feature "goes to '/result'" do
    scenario 'has player 2 selection for RSP choice' do
      submit_name
      submit_name_2
      submit
      submit_rock
      submit
      submit_rock
      submit
      expect(page).to have_content('Rae drew with Rock')
    end
  end
end
