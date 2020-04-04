feature 'Computer chooses between Rock, Paper, Scissors' do
  scenario 'Computer chooses Rock' do
    srand(2)
    dave_sign_in
    click_button('Rock')
    expect(page).to have_content 'Computer: Rock'
  end

  scenario 'Computer chooses Paper' do
    srand(1)
    dave_sign_in
    click_button('Rock')
    expect(page).to have_content 'Computer: Paper'
  end
  
  scenario 'Computer chooses Scissors' do
    srand(3)
    dave_sign_in
    click_button('Rock')
    expect(page).to have_content 'Computer: Scissors'
  end
end
