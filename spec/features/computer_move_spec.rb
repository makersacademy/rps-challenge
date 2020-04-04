feature 'computer makes a move' do
  scenario 'computer choice randomly selected and message printed' do
    sign_in_and_play
    choose 'Paper'
    click_button 'Submit'
    srand(1)
    expect(page).to have_content "Computer choses Rock"
  end
end
