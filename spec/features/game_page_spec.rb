feature 'Game screen' do
  scenario 'there is an option for rock' do
    visit '/'
    click_button 'Yes'
    expect(page).to have_button 'Rock'
  end
end