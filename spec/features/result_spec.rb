feature 'game result' do
scenario 'player and computer have chosen rock, paper or scissors, now find out who wins' do
    add_name_and_play
    fill_in 'choice', with: 'rock'
    click_button('GO!')
    expect(page).to have_content 'Joanna selected rock , Computer selected'
end
end