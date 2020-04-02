feature ' plays rock paper scissors ' do

  scenario 'should have a landing page where the player can enter their name' do
    visit('/')
    expect(page).to have_field('player_name')
  end
  scenario 'should be able to submit their name in the landing page' do
    visit('/')
    fill_in('player_name', with: 'Edward')
    expect(page).to have_button('Play!')
  end
end