feature 'Selecting a move' do
  scenario 'Selecting scissors' do
    sign_in_and_play
    click_button 'Scissors'
    expect(page).to have_content 'Charlie selected scissors'
  end
end