feature 'Enter Names' do
  scenario 'User enters name before game starts' do
    visit '/'
    fill_in 'player1', :with => 'name1'
    click_button 'Submit'
    expect(page).to have_content 'name1'
  end
end