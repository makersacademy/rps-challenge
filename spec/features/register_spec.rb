feature 'Register' do

  scenario 'Enter player name' do
    sign_in
    expect(page).to have_content('Welcome Matt')
  end

end
