feature 'Name input' do
  scenario 'User can enter their name' do
    enter_name
    expect(page).to have_content("Symion")
  end
end
