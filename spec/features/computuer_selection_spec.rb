
feature 'Computer chooses an item' do
  scenario 'Computer chooses Rock' do
    sign_in_and_play
    srand(2214713)
    click_button 'Rock'
    expect(page).to have_content 'Your opponent has chosen Scissors'
  end

end
