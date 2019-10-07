feature 'Enter name' do
  scenario 'there is a form on the homepage' do
    visit('/')
    expect(page).to have_field(type: 'text')
  end

  scenario "see confirmation of player's name" do
    sign_in_and_play
    expect(page).to have_content 'Hello Bob!'
  end
end

feature 'Playing Rock, Paper, Scissors' do
  scenario 'there are three buttons the Player can choose from' do
    sign_in_and_play
    expect(page).to have_selector(:link_or_button, 'Rock')
    expect(page).to have_selector(:link_or_button, 'Paper')
    expect(page).to have_selector(:link_or_button, 'Scissors')
  end

  scenario "see confirmation of player's choice" do
    sign_in_and_play
    click_button 'Rock'
    expect(page).to have_content 'You chose Rock!'
  end

end
