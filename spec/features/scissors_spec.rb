feature 'Choosing a move' do
  scenario 'Player chooses Rock' do
    sign_in_and_play
    click_link 'Scissors'
    expect(page).to have_content 'Keldra selected Scissors'
  end
end
