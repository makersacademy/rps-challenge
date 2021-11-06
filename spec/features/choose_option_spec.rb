feature "Choose option" do
  scenario 'Player can choose rock, paper or scissors' do
    sign_in_and_play
    click_button 'Rock'
    expect(page).to have_content('You chose Rock')
  end

  scenario 'Player can choose rock, paper or scissors' do
    sign_in_and_play
    click_button 'Paper'
    expect(page).to have_content('You chose Paper')
  end

  scenario 'Player can choose rock, paper or scissors' do
    sign_in_and_play
    click_button 'Scissors'
    expect(page).to have_content('You chose Scissors')
  end
end