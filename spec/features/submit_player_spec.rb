feature 'All features ' do

  scenario 'register player name' do
    visit('/')
    fill_in :player, with: 'Bob'
    click_button 'Submit'
    expect(page).to have_content 'Bob'
  end

  # scenario 'can see their  choices' do
  #   visit('/')
  #   fill_in :player, with: 'Bob'
  #   click_button 'Submit'
  #   click_button 'Rock'
  #   expect(page).to have_content 'You chose Rock'
  # end
end
