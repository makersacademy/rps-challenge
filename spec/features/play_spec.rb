feature 'Play page' do
  scenario 'It displays the player\'s name' do
    sign_in_and_play
    expect(page).to have_content('Ellie v Computer')
  end
end
