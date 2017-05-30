feature 'Computer playing random  hand when player does' do
  scenario 'computer playing random hand' do
    sign_in_single
    click_button 'Rock'
    expect(page).to have_content 'Computer plays:'
  end
end
