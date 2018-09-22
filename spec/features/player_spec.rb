require './app'

describe Player do

  feature 'Player name' do
    scenario 'entering the name' do
      player_sign_in
      expect(page).to have_content('Welcome, Daniel')
    end
  end
end
