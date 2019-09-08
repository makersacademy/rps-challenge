require './lib/random_play'

feature 'random choice' do
  scenario 'Option ROCK' do
    20.times do
      sign_in_and_play
      click_on 'ROCK'
      opponent = opponent_choice(page)
      if opponent == 'ROCK'
        expect(page).to have_content 'DRAW'
      elsif opponent == 'PAPER'
        expect(page).to have_content "#{PLAYER_NAME} LOSES"
      elsif opponent == 'SCISSORS'
        expect(page).to have_content "#{PLAYER_NAME} WINS"
      end
    end
  end

  scenario 'Option PAPER' do
    20.times do
      sign_in_and_play
      click_on 'PAPER'
      opponent = opponent_choice(page)
      if opponent == 'ROCK'
        expect(page).to have_content "#{PLAYER_NAME} WINS"
      elsif opponent == 'PAPER'
        expect(page).to have_content 'DRAW'
      elsif opponent == 'SCISSORS'
        expect(page).to have_content "#{PLAYER_NAME} LOSES"
      end
    end
  end

  scenario 'Option SCISSORS' do
    20.times do
      sign_in_and_play
      click_on 'SCISSORS'
      opponent = opponent_choice(page)
      if opponent == 'ROCK'
        expect(page).to have_content "#{PLAYER_NAME} LOSES"
      elsif opponent == 'PAPER'
        expect(page).to have_content "#{PLAYER_NAME} WINS"
      elsif opponent == 'SCISSORS'
        expect(page).to have_content 'DRAW'
      end
    end
  end
end
