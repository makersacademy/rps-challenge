feature 'user inputs there name' do
  scenario 'user name is displayed' do
    sign_in
    expect(page).to have_content('Player 1: Dec')
  end
end
