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
        expect(page).to have_content('is the winner!')
      end

      scenario 'can select paper' do
        find('//input[@id="p2_paper"]').click
        expect(page).to have_content('is the winner!')
      end

      scenario 'can select scissors' do
        find('//input[@id="p2_scissors"]').click
        expect(page).to have_content('is the winner!')
      end
    end
  end # Make a move

  feature 'Process results:' do
    before do
      start_game
    end

    context 'P1 plays rock' do

      scenario 'P2 plays rock' do
        find('//input[@id="p1_rock"]').click
        find('//input[@id="p2_rock"]').click
        expect(page).to have_content('Jules played rock Lee played rock It\'s a draw!')
      end

      scenario 'P2 plays paper' do
        find('//input[@id="p1_rock"]').click
        find('//input[@id="p2_paper"]').click
        expect(page).to have_content('Jules played rock Lee played paper Lee is the winner!')
      end

      scenario 'P2 plays scissors' do
        find('//input[@id="p1_rock"]').click
        find('//input[@id="p2_scissors"]').click
        expect(page).to have_content('Jules played rock Lee played scissors Jules is the winner!')
      end

    end

    context 'P1 plays paper' do

        scenario 'P2 plays rock' do
          find('//input[@id="p1_paper"]').click
          find('//input[@id="p2_rock"]').click
          expect(page).to have_content('Jules played rock Lee played rock Jules is the winner!')
        end

        scenario 'P2 plays paper' do
          find('//input[@id="p1_paper"]').click
          find('//input[@id="p2_paper"]').click
          expect(page).to have_content('Jules played rock Lee played paper It\s a draw!')
        end

        scenario 'P2 plays scissors' do
          find('//input[@id="p1_paper"]').click
          find('//input[@id="p2_scissors"]').click
          expect(page).to have_content('Jules played rock Lee played scissors Lee is the winner!')
        end

      end

      context 'P1 plays scissors' do

        scenario 'P2 plays rock' do
          find('//input[@id="p1_scissors"]').click
          find('//input[@id="p2_rock"]').click
          expect(page).to have_content('Jules played rock Lee played rock Lee is the winner!')
        end

        scenario 'P2 plays paper' do
          find('//input[@id="p1_scissors"]').click
          find('//input[@id="p2_paper"]').click
          expect(page).to have_content('Jules played rock Lee played paper Jules is the winner!')
        end

        scenario 'P2 plays scissors' do
          find('//input[@id="p1_scissors"]').click
          find('//input[@id="p2_scissors"]').click
          expect(page).to have_content('Jules played rock Lee played scissors It\s a draw!')
        end

      end

  end # Process results

end
