feature 'Choose move' do
  scenario 'Choosing player 1 move' do
    sign_in_and_enter_names
    click_button 'Choose your move'
    expect(page).to have_content 'Choose Rock, Paper or Scissors'
  end
end