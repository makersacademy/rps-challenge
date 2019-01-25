feature 'Testing infrastructure' do

  scenario 'Can run app and check page content' do
    visit('/')
    expect(page).to have_content 'Player 1 :'
    expect(page).to have_content 'Player 2 :'
  end

  scenario 'Can accept and display names given' do
    visit('/')
    enter_names_and_play
    expect(page).to have_content "Paul vs. John"
  end
end
