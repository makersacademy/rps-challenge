
feature 'Computer chooses an item' do
  scenario 'Computer chooses Rock' do
    sign_in_and_play
    srand(2214713)
    click_button 'Rock'
    click_button 'Play'
    expect(page).to have_content 'Your opponent has chosen Scissors'
    expect(page).to have_content 'Congratulations you win!!'
  end

end
