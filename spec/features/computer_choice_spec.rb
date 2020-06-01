feature 'Computer chooses between Rock, Paper, Scissors' do
  scenario 'Computer chooses Rock' do
    srand(2)
    sign_in_and_play
    click_button('Rock')
    expect(page).to have_content 'Computer: Rock'
  end

  scenario 'Computer chooses Paper' do
    srand(1)
    sign_in_and_play
    click_button('Rock')
    expect(page).to have_content 'Computer: Paper'
  end

  scenario 'Computer chooses Scissors' do
    srand(3)
    sign_in_and_play
    click_button('Rock')
    expect(page).to have_content 'Computer: Scissors'
  end
end
