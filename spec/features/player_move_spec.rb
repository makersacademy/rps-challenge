feature 'making a move' do
  scenario 'player chooses a move' do
    sign_in_and_play
    click_button('rock')
    expect(page).to have_content "You chose rock"
  end

  scenario 'computer chooses a move' do
    sign_in_and_play
    click_button('rock')
    expect(page).to have_content "Computer chose"
  end 
end
