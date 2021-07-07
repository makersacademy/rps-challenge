feature 'multiplayer' do

  feature "get '/move'" do
    scenario 'has selection for RSP choice' do
      names_submit
      expect(page).to have_content('Rae what is your move?')
    end
  end

  feature "goes to '/move2'" do
    scenario 'has player 2 selection for RSP choice' do
      names_submit
      p1_rock
      submit
      expect(page).to have_content('Bob what is your move?')
    end
  end

  feature "goes to '/result'" do
    scenario 'has player 2 selection for RSP choice' do
      names_submit
      p1_rock
      submit
      p2_rock
      submit
      expect(page).to have_content('draw')
    end
  end
end
