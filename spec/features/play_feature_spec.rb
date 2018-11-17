feature 'user is welcomed and makes first move' do
  scenario 'user inputs their name and is welcomed' do
    sign_in_and_play
    expect(page).to have_content "Welcome, Chris!"
  end
  scenario 'user has weapon options' do
    sign_in_and_play
    expect(page).to have_content "Please make your move..."
    expect(page).to have_content "Select your weapon"
  end
  scenario 'user makes weapon choice' do
    sign_in_and_play
    select 'Rock', from: 'weapon'
    click_button 'Play!'
    expect(page).to have_content "You chose rock!"
  end
end
