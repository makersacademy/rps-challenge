feature 'Index screen' do
  scenario 'Displays welcome message' do
    visit '/'
    expect(page).to have_content("Rock, Paper, Scissors!")
  end

  scenario 'Name input' do
    visit '/'
    find_field("player_1_name").value
    find_button("Submit").value
  end


end
