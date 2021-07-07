feature 'computer makes a move' do
  scenario 'computer choice randomly selected and message printed' do
    srand(2)
    chose_paper
    expect(page).to have_content "Computer chose Rock"
  end
end
