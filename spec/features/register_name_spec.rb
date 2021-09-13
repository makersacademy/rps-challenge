feature 'Registering name' do
  scenario 'Player enters name' do
    sign_in_and_play
    expect(page).to have_content 'Keldra, choose an option below'
  end
end 
