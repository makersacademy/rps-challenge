feature 'RPS Selection' do

  scenario 'Player may choose RPS' do
    sign_in_and_play
    expect(page).to have_button('Rock')
    expect(page).to have_button('Paper')
    expect(page).to have_button('Scissors')
  end

  scenario 'Player chooses rock' do
    sign_in_and_play
    click_button('Rock')
    expect(page).to have_content('Ed chose the rock!')
  end

  scenario 'Player chooses paper' do
    sign_in_and_play
    click_button('Paper')
    expect(page).to have_content('Ed chose the paper!')
  end

  scenario 'Player chooses scissors' do
    sign_in_and_play
    click_button('Scissors')
    expect(page).to have_content('Ed chose the scissors!')
  end

  feature 'The Computer may choose RPS' do

    before do
      allow(Kernel).to receive(:rand).and_return(2)
    end

    scenario 'The Computer may choose random choice' do
      sign_in_and_play
      click_button('Scissors')
      click_button('Outcome')
      expect(page).to have_content('The Computer chose scissors')
    end
  end

  feature 'Player 2 may choose RPS' do

    scenario 'Player 2 gets a go' do
      multi_play_sign_in
      click_button('Scissors')
      expect(page).to have_button('Hayley\'s go')
      click_button('Hayley\'s go')
      expect(page).to have_content('Hayley, make your choice')
    end

    scenario 'Player 2 chooses rock' do
      multi_play_sign_in
      click_button('Scissors')
      click_button('Hayley\'s go')
      click_button('Rock')
      expect(page).to have_content('Hayley chose the rock')
    end
  end

  scenario 'Player 2 chooses paper' do
    multi_play_sign_in
    click_button('Scissors')
    click_button('Hayley\'s go')
    click_button('Paper')
    expect(page).to have_content('Hayley chose the paper')
  end

  scenario 'Player 2 chooses scissors' do
    multi_play_sign_in
    click_button('Scissors')
    click_button('Hayley\'s go')
    click_button('Scissors')
    expect(page).to have_content('Hayley chose the scissors')
  end

end
