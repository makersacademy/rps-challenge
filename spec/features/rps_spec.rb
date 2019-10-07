feature 'rock paper scissors' do

  scenario 'Will show players names and weapons of choice' do
    visit('/')
    fill_in 'player_1', with: 'Luisa'
    page.select("Paper", :from => "options_1").click
    click_button('PLAY')
    expect(page).to have_content "Luisa choose Paper"
    expect(page).to have_content "Computer choose"
  end

  scenario 'Will show who won' do
    visit('/')
    fill_in 'player_1', with: 'Luisa'
    page.select("Paper", :from => "options_1").click
    click_button('PLAY')
    expect(page).to have_content "Winner is:"
  end

  scenario 'Will show players score' do
    visit('/')
    fill_in 'player_1', with: 'Luisa'
    page.select("Paper", :from => "options_1").click
    click_button('PLAY')
    expect(page).to have_content "Luisa:"
    expect(page).to have_content "Computer:"
  end

end
