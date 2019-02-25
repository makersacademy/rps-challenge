# As a user, so I can play, I want to register my name

feature 'Enterting a player name' do

  scenario 'Enter a name' do
    sign_in
    expect(page).to have_content 'Hello Lizzie'
  end

end
