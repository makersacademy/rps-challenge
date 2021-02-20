feature 'play' do
  scenario 'presents clickable options' do
    visit('/')
    fill_in :name, with: 'Hannah'
    click_button "Submit"
    click_button "Rock"
    expect(page).to have_content "Computer chose paper – you lose!"
    # click one of three options
    # expect to see computer's move
    # expect to see 'you win' or 'you lose'
    # logic is going out to the model to randomise
  end
end
