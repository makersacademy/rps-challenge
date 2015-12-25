# As a marketeer
# So that I can enjoy myself away from the daily grind
# I would like to be able to play rock/paper/scissors

feature 'Show result' do
  context 'computer\'s weapon: rock' do
    before do
      computer_plays_rock
    end

    context 'user\'s weapon: rock' do
      scenario 'shows "It\'s a draw!"' do
        alan_plays_rock
        expect(page).to have_content 'It\'s a draw!'
      end
    end

    context 'user\'s weapon: paper' do
      scenario 'shows "You win!"' do
        alan_plays_paper
        expect(page).to have_content 'You win!'
      end
    end

    context 'user\'s weapon: scissors' do
      scenario 'shows "Computer wins!"' do
        alan_plays_scissors
        expect(page).to have_content 'Computer wins!'
      end
    end
  end

  context 'computer\'s weapon: paper' do
    before do
      computer_plays_paper
    end

    context 'user\'s weapon: rock' do
      scenario 'shows "Computer wins!"' do
        alan_plays_rock
        expect(page).to have_content 'Computer wins!'
      end
    end

    context 'user\'s weapon: paper' do
      scenario 'shows "It\'s a draw!"' do
        alan_plays_paper
        expect(page).to have_content 'It\'s a draw!'
      end
    end

    context 'user\'s weapon: scissors' do
      scenario 'shows "You win!"' do
        alan_plays_scissors
        expect(page).to have_content 'You win!'
      end
    end
  end

  context 'computer\'s weapon: scissors' do
    before do
      computer_plays_scissors
    end

    context 'user\'s weapon: rock' do
      scenario 'shows "You win!"' do
        alan_plays_rock
        expect(page).to have_content 'You win!'
      end
    end

    context 'user\'s weapon: paper' do
      scenario 'shows "Computer wins!"' do
        alan_plays_paper
        expect(page).to have_content 'Computer wins!'
      end
    end

    context 'user\'s weapon: scissors' do
      scenario 'shows "It\'s a draw!"' do
        alan_plays_scissors
        expect(page).to have_content 'It\'s a draw!'
      end
    end
  end
end
