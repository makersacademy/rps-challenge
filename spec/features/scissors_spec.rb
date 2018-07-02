feature 'Player choice' do
  scenario 'Player chooses Scissors' do
    sign_in_and_play
    click_button 'Scissors'
    visit '/scissors'
    expect(page).to have_content 'Dave chose Scissors'
  end
end
