feature 'user inputs there name' do
  scenario 'user name is displauyed' do
    sign_in
    expect(page).to have_content('Player: Dec')
  end
end
