feature 'rock paper scissors' do

  scenario 'Will show players names and weapons of choice' do
    visit('/')
    fill_in 'player_1', with: 'Luisa'
    page.select("Paper", :from => "options_1").click
    fill_in 'player_2', with: 'Logan'
    page.select("Scissors", :from => "options_2").click
    click_button('PLAY')
    expect(page).to have_content "Luisa choose Paper"
    expect(page).to have_content "Logan choose Scissors"
  end

end
