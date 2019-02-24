features 'Enter Name' do
  scenario 'fills in name' do
    visit('/')
    sign_in_and_play
    expect(page).to have_content 'Welcome Ana! Lets's play a game'
    end
 end
