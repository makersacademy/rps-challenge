feature 'Testing infrastructure' do
  scenario 'Can run app and check page content' do
    visit('/')
    expect(page).to have_content 'Please enter your name!'
  end

  xscenario 'User can see their name on the next page' do
    sign_in_and_play
    expect(page).to have_content 'Player: Dude'
  end
end