feature 'Index screen' do
  scenario 'Displays welcome message' do
    visit '/'
    expect(page).to have_content("Rock, Paper, Scissors!")
  end

  scenario 'Displays 1P or 2P options' do
    visit '/'
    find_button("1P vs AI").value
    find_button("1P vs 2P").value
  end


end
