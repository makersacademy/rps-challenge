feature 'Name input' do
  scenario 'User can enter their name' do
    visit ('/')
    fill_in :name, with: 'Symion'
    click_button('Submit!')
    expect(page).to have_content("Symion")
  end
end