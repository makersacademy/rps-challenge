require_relative '../../rps_app.rb'

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
  end

  feature 'Make a move:' do
    context 'player 1' do
      scenario 'can select rock' do
        find('//input[@id="p1_rock"]').click
        expect(page).to have_content('Lee - select your move!')
      end

      scenario 'can select paper' do
        find('//input[@id="p1_paper"]').click
        expect(page).to have_content('Lee - select your move!')
      end

      scenario 'can select scissors' do
        find('//input[@id="p1_scissors"]').click
        expect(page).to have_content('Lee - select your move!')
      end
    end

    context 'player 2' do
      before do
        find('//input[@id="p1_scissors"]').click
      end

      scenario 'can select rock' do
        find('//input[@id="p2_rock"]').click
        expect(page).to have_content('Lee played rock!')
      end

      scenario 'can select paper' do
        find('//input[@id="p2_paper"]').click
        expect(page).to have_content('Lee played paper!')
      end

      scenario 'can select scissors' do
        find('//input[@id="p2_scissors"]').click
        expect(page).to have_content('Lee played scissors!')
      end
    end
  end

  feature 'Player 2 as computer:' do
    before do
      start_game_comp
    end

    scenario 'confirms a computer is being played against' do
      expect(page).to have_content('Lee (COMP) is selecting a move...')
    end

    scenario 'is able to select a move by itself' do
      click_on 'comp_move'
      expect(page).to have_content('Lee (COMP) played')
    end
  end

  feature 'Process results:' do
    before do
      start_game
    end

    context 'P1 plays rock' do
      scenario 'P2 plays rock' do
        find('//input[@id="p1_rock"]').click
        find('//input[@id="p2_rock"]').click
        expect(page).to have_content('Jules played rock! Lee played rock! It\'s a draw!')
      end

      scenario 'P2 plays paper' do
        find('//input[@id="p1_rock"]').click
        find('//input[@id="p2_paper"]').click
        expect(page).to have_content('Jules played rock! Lee played paper! Lee is the winner!')
      end

      scenario 'P2 plays scissors' do
        find('//input[@id="p1_rock"]').click
        find('//input[@id="p2_scissors"]').click
        expect(page).to have_content('Jules played rock! Lee played scissors! Jules is the winner!')
      end
    end

    context 'P1 plays paper' do
      scenario 'P2 plays rock' do
        find('//input[@id="p1_paper"]').click
        find('//input[@id="p2_rock"]').click
        expect(page).to have_content('Jules played paper! Lee played rock! Jules is the winner!')
      end

      scenario 'P2 plays paper' do
        find('//input[@id="p1_paper"]').click
        find('//input[@id="p2_paper"]').click
        expect(page).to have_content('Jules played paper! Lee played paper! It\'s a draw!')
      end

      scenario 'P2 plays scissors' do
        find('//input[@id="p1_paper"]').click
        find('//input[@id="p2_scissors"]').click
        expect(page).to have_content('Jules played paper! Lee played scissors! Lee is the winner!')
      end
    end

    context 'P1 plays scissors' do
      scenario 'P2 plays rock' do
        find('//input[@id="p1_scissors"]').click
        find('//input[@id="p2_rock"]').click
        expect(page).to have_content('Jules played scissors! Lee played rock! Lee is the winner!')
      end

      scenario 'P2 plays paper' do
        find('//input[@id="p1_scissors"]').click
        find('//input[@id="p2_paper"]').click
        expect(page).to have_content('Jules played scissors! Lee played paper! Jules is the winner!')
      end

      scenario 'P2 plays scissors' do
        find('//input[@id="p1_scissors"]').click
        find('//input[@id="p2_scissors"]').click
        expect(page).to have_content('Jules played scissors! Lee played scissors! It\'s a draw!')
      end
    end

  end

end
