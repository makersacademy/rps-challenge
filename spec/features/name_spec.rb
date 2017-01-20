feature 'Start' do
  scenario 'Ask player to enter their name' do
    sign_in_and_play
  end

  scenario "Display player's name" do
    sign_in_and_play
    visit('/name')
    expect(page).to have_content(:p1_name)
  end
end
