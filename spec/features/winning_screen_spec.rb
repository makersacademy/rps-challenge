feature 'Winning Screen' do
  before(:each) do
    multiplayer_sign_in # allows for control over who wins as not random
    5.times do
      within('div#p1_choice') { choose 'Rock' } # player 1 will win all 5
      within('div#p2_choice') { choose 'Scissors' }
      click_button('Go!')
    end
  end
  scenario 'Winning screen is displayed' do
    expect(page).to_not have_content('Jack Vs. Durain') # should be new page
    expect(page).to have_content('Jack is the winner')
    expect(page).to have_content('has been defeated')
  end
  scenario 'Winning screen shows correct player' do
    expect(page).to have_content('The mighty Durain has been defeated')
  end
  scenario 'Winning screen shows correct score' do
    expect(page).to have_content('5 - 0')
  end
end
