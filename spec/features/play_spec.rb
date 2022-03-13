feature 'Play' do

  scenario 'should display the title' do
    sign_in_and_play
    expect(page).to have_content 'Rock-Paper-Scissors'
    expect(page).to have_content 'The workplace grind-ungrinder'
  end

  scenario 'should display a players name' do
    sign_in_and_play
    expect(page).to have_content 'Adam v CPU'
  end

  context 'gameplay' do

    scenario 'should display gameplay options' do
      sign_in_and_play
      expect(page).to have_button('Rock')
      expect(page).to have_button('Paper')
      expect(page).to have_button('Scissor')
    end

  end

end