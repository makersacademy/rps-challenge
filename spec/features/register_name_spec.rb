feature 'register name before play' do
  scenario 'player can put in name and see their names' do
    sign_in_and_play
    expect(page).to have_content 'Hulk vs. Computer'
  end
end