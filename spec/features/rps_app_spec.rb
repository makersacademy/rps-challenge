require '~/Documents/Coding/MA/weekend_challenges/rps-challenge/rps_app.rb'

describe RPS do

  before do
    start_game
  end

  feature 'Set up:' do

    scenario 'can enter player names' do
      expect(page).to have_content('Jules vs. Lee')
    end

    scenario 'tells whose turn it is' do
      expect(page).to have_content('Jules - select your move!')
    end

  end # Set up

  feature 'Make a move:' do
    scenario 'P1 can select rock' do
      find('//input[@id="p1_rock"]').click
      expect(params[:p1_move]).to eq('rock')
    end

  end # Make a move

end
