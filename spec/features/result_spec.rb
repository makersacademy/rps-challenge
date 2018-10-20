feature 'result' do

  before do
    submit_name
  end

  scenario "shows player 1's and player 2's choices" do
    click_button 'Rock'
    expect(page).to have_content 'Jane, you chose Rock'
    expect(page).to have_content 'The computer chose'
  end

  scenario "it shows who the winner is" do
    click_button 'Rock'
    expect(page).to have_content 'The winner is'
  end
  
end
