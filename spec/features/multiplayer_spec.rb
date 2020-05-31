feature 'multiplayer' do

  feature "get '/move'" do
    scenario 'has selection for RSP choice' do
      submit_name
      submit_name_2
      submit
      expect(page).to have_content('Rae what is your move?')
    end
  end

end
