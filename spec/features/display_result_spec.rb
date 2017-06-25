feature 'Display result' do

  before(:each) do
    sign_in_and_play
    allow_any_instance_of(Array).to receive(:sample).and_return(:paper)
  end

  scenario 'Player selects rock' do
    click_button 'Rock'
    expect(page).to have_content('You lost!')
  end

  scenario 'Player selects scissors' do
    click_button 'Scissors'
    expect(page).to have_content('You won!')
  end

  scenario 'Player selects paper' do
    click_button 'Paper'
    expect(page).to have_content("It's a draw!")
  end

end
