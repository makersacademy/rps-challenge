feature 'Enter Names' do
  scenario 'Names show on the /play route' do
    visit '/'
    fill_in 'player1_name', with: 'Dominic White'
    click_button 'Play'
    expect(page).to have_content 'Dominic White'
  end
end
