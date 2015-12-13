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
    expect(page).to have_content('You have chosen the rock!')
  end

  scenario 'Player chooses paper' do
    sign_in_and_play
    click_button('Paper')
    expect(page).to have_content('You have chosen the paper!')
  end

  scenario 'Player chooses scissors' do
    sign_in_and_play
    click_button('Scissors')
    expect(page).to have_content('You have chosen the scissors!')
  end


  feature 'The Computer may choose RPS' do

    before do
      allow(Kernel).to receive(:rand).and_return(2)
    end

    scenario 'The Computer makes a random choice' do
      sign_in_and_play
      click_button('Scissors')
      click_button('Outcome')
      expect(page).to have_content('The Computer has chosen')
    end
  end
end
