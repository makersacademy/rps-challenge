describe 'RPS Game' do

before do
  allow(Kernel).to receive(:rand).and_return '3'
end

feature 'Pick Game Mode' do

  scenario 'pick 1 player ' do
    visit('/')
    click_button('1 Player')
    expect(page).to have_content 'Rock Paper Scissors Sign in to play!'\
      ' Player 1 name'
  end


  scenario 'pick 2 player ' do
    visit('/')
    click_button('2 Player')
    expect(page).to have_content 'Rock Paper Scissors Sign in to play!'\
      ' Player 1 name Player 2 name'
  end

end

feature 'Enter Player names' do

  scenario 'submitting 1 Player names' do
    visit('/')
    click_button('1 Player')
    sign_in_and_play1
    expect(page).to have_content 'Gimi VS Computer 1 = Rock 2 = Paper '\
      '3 = Scissors Gimi Choose Your Weapon'
  end

  scenario 'submitting 2 Player names' do
    visit('/')
    click_button('2 Players')
    sign_in_and_play2
    expect(page).to have_content 'Gimi VS Tara 1 = Rock 2 = Paper 3 ='\
      ' Scissors Choose Your Weapons Gimi Select : Tara Select:'
  end

end

  feature 'Enter Chosen attack weapon' do

    scenario '1 Player can select rock paper or scissors' do
      visit('/')
      click_button('1 Player')
      sign_in_and_play1
      fill_in :answer_1, with: '1'
      expect(page).to have_content '1'
    end

    scenario 'Player 2 can select rock paper or scissors' do
      visit('/')
      click_button('2 Players')
      sign_in_and_play2
      fill_in :answer_1, with: '1'
      fill_in :answer_2, with: '2'
      expect(page).to have_content '2'
    end
  end

  feature 'Game Results' do

    scenario '1 Player can see outcome of battle' do
      visit('/')
      click_button('1 Player')
      sign_in_and_play1
      fill_in :answer_1, with: '1'
      click_button('Submit')
      expect(page).to have_content 'Gimi wins! Play Again'
    end

    scenario '2 Player can see outcome of battle' do
      visit('/')
      click_button('2 Players')
      sign_in_and_play2
      fill_in :answer_1, with: '1'
      fill_in :answer_2, with: '3'
      click_button('Submit')
      expect(page).to have_content 'Gimi wins! Play Again'
    end

  end
end
