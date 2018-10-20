feature 'Results' do

  before do
    submit_name
  end

  scenario "shows player 1's and player 2's choices" do
    click_button 'Rock'
    expect(page).to have_content 'Jane, you chose rock'
    expect(page).to have_content 'The computer chose'
  end

  scenario "it declares the winner" do
    srand(234_56)
    click_button 'Rock'
    expect(page).to have_content 'The winner is'
  end

  scenario "it declares a draw" do
    srand(234_56)
    click_button 'Scissors'
    expect(page).to have_content "It's a draw"
  end

end
