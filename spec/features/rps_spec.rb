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

  scenario 'Will show who won' do
    visit('/')
    fill_in 'player_1', with: 'Luisa'
    page.select("Paper", :from => "options_1").click
    fill_in 'player_2', with: 'Logan'
    page.select("Scissors", :from => "options_2").click
    click_button('PLAY')
    expect(page).to have_content "Winner is: Logan"
  end

  scenario 'Will show players score' do
    visit('/')
    fill_in 'player_1', with: 'Luisa'
    page.select("Paper", :from => "options_1").click
    fill_in 'player_2', with: 'Logan'
    page.select("Scissors", :from => "options_2").click
    click_button('PLAY')
    expect(page).to have_content "Luisa: 0"
    expect(page).to have_content "Logan: 1"
  end

end
