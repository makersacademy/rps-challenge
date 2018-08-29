feature "RPS Features" do

  scenario 'players can enter & see names on screen' do
    sign_in_and_play
    expect(page).to have_content('Mick')
    # expect(page).to have_content('Keith')
  end

  scenario 'player presented with rps options' do 
    sign_in_and_play
    click_on('Ready to RPS')
    expect(page).to have_content('Make your choice')
  end

  scenario 'display current score' do
    sign_in_and_play
    click_on('Ready to RPS')
    expect(page).to have_content('Mick: 0')
  end

  
end
