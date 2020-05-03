feature 'Enter name' do
  scenario 'submit name' do
    sign_in_and_play
    expect(page).to have_content 'Steve vs Computer'
  end
end
