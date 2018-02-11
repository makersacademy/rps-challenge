feature 'displays result' do

  context 'when player chooses rock' do

    scenario 'computer also chooses rock' do
      allow_any_instance_of(Array).to receive(:sample).and_return 'Rock'
      sign_in_and_choose_rock
      expect(page).to have_content("It's a draw")
    end

    scenario 'computer chooses paper' do
      allow_any_instance_of(Array).to receive(:sample).and_return 'Paper'
      sign_in_and_choose_rock
      expect(page).to have_content("Computer wins")
    end

    scenario 'computer chooses scissors' do
      allow_any_instance_of(Array).to receive(:sample).and_return 'Scissors'
      sign_in_and_choose_rock
      expect(page).to have_content("Hannah wins!")
    end

  end

  context 'when player chooses paper' do

    scenario 'computer chooses rock' do
      allow_any_instance_of(Array).to receive(:sample).and_return 'Rock'
      sign_in_and_choose_paper
      expect(page).to have_content("Hannah wins!")
    end

    scenario 'computer also chooses paper' do
      allow_any_instance_of(Array).to receive(:sample).and_return 'Paper'
      sign_in_and_choose_paper
      expect(page).to have_content("It's a draw")
    end

    scenario 'computer chooses scissors' do
      allow_any_instance_of(Array).to receive(:sample).and_return 'Scissors'
      sign_in_and_choose_paper
      expect(page).to have_content("Computer wins")
    end

  end

  context 'when player chooses scissors' do

    scenario 'computer chooses rock' do
      allow_any_instance_of(Array).to receive(:sample).and_return 'Rock'
      sign_in_and_choose_scissors
      expect(page).to have_content("Computer wins")
    end

    scenario 'computer chooses paper' do
      allow_any_instance_of(Array).to receive(:sample).and_return 'Paper'
      sign_in_and_choose_scissors
      expect(page).to have_content("Hannah wins!")
    end

    scenario 'computer also chooses scissors' do
      allow_any_instance_of(Array).to receive(:sample).and_return 'Scissors'
      sign_in_and_choose_scissors
      expect(page).to have_content("It's a draw")
    end

  end

end
