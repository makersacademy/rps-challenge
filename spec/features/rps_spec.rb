feature 'enter player name' do
  scenario 'submitting name' do
    sign_in_and_play
    expect(page).to have_content 'Welcome Ignacio'
  end
end
