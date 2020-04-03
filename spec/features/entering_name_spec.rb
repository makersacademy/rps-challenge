feature ' User story 1 feature test - Entering your name:  ' do

  scenario 'should have a landing page where the player can enter their name' do
    visit('/')
    expect(page).to have_field('player_name')
  end
  scenario 'should be able to submit their name in the landing page' do
    visit('/')
    fill_in('player_name', with: 'Edward')
    expect(page).to have_button('Play!')
  end
  scenario 'Clicking Play! should show the player their name <in> lights' do
    visit('/')
    fill_in('player_name', with: 'Edward')
    click_button('Play!')
    expect(page).to have_content('Edward')
  end
end