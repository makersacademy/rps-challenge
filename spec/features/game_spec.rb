feature 'Play RPS:' do
  
  scenario 'human chooses rock' do
    sign_in_and_play
    choose(option: "rock")
    click_button 'OK'
    expect(page).to have_content 'Mufasa chose rock: Rock on!'
  end

  scenario 'human chooses paper' do
    sign_in_and_play
    choose(option: "paper")
    click_button 'OK'
    expect(page).to have_content 'Mufasa chose paper: Origami skills!'
  end

  scenario 'human chooses scissors' do
    sign_in_and_play
    choose(option: "scissors")
    click_button 'OK'
    expect(page).to have_content 'Mufasa chose scissors: Sharp choice!'
  end
end
