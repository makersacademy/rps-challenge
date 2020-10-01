describe 'rock paper scissors', type: :feature do
  it 'can submit a name' do
    sign_in_and_play
    visit '/'
    fill_in 'name', with: 'Amit'
    click_button 'Submit'
    expect(page).to have_content "Hi Amit Are you ready to play rock paper scissors? Please choose an option:"
  end

  it 'can choose an option and submit it' do
    sign_in_and_play
    choose 'rock'
    click_button 'Play'
    expect(page).to have_content "Amit played rock"
  end

  it 'can keep playing' do
    sign_in_and_play
    choose 'rock'
    click_button 'Play'
    click_link 'Play again?'
    expect(page).to have_content "Hi Amit Are you ready"
  end
end
