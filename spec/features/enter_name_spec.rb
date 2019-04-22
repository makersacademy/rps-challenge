feature 'Enter name' do
  scenario 'player enters their name' do
    sign_in_and_play
    expect(page).to have_content 'Welcome Tara'
  end
end
