# feature 'Entering move' do
#   scenario 'Select move' do
#     sign_in_and_play
#     have_select('move')
#     click_button '3..2..1'
#     expect(page).to have_field('move', with: 'Rock')
#   end
# end

# tried this new syntax, had trouble finding *visible field*

# test for does form exist

feature 'Enter move form' do
  scenario 'exists' do
    sign_in_and_play
    page.has_select?('move', selected: ['Rock', 'Paper', 'Scissors'])
  end
end

# temporary infrastructure test
feature 'Entering move' do
  scenario 'Select move' do
    sign_in_and_play
    have_select('move')
    click_button '3..2..1'
    expect(page).to have_content 'Rock'
  end
end
