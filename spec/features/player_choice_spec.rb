feature "Player's options" do
  scenario 'Player is able to selecr Rock' do
    sign_in_and_play
    expect(page).to have_content 'Alex vs. Computer!'
    find("#rock").click 
    expect(page).to have_content 'Alex chose Rock'
  end

  scenario 'Player is able to selecr Paper' do
    sign_in_and_play
    expect(page).to have_content 'Alex vs. Computer!'
    click_button 'Paper'
    expect(page).to have_content 'Alex chose Paper'
  end

  scenario 'Player is able to selecr Scissors' do
    sign_in_and_play
    expect(page).to have_content 'Alex vs. Computer!'
    click_button 'Scissors'
    expect(page).to have_content 'Alex chose Scissors'
  end
end
