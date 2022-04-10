feature 'Enter name' do
  scenario 'Expect one player to fill in their name (in a form)' do
    sign_in_and_play
    expect(page).to have_content 'Welcome Conor'
  end
end
