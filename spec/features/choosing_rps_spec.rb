feature 'Choosing R/P/S' do
  scenario 'player chooses rock, paper or scissors' do
    sign_in_and_play
    choose 'rock'
    click_button 'OK'
    expect(page).to have_content 'Dave chose rock'
  end
    # scenario 'computer chooses rock, paper or scissors' do
    #   sign_in_and_play
    #   fill_in :rps, with:'rock'
    #   click_button 'OK'
    #   expect(page).to have_content 'Computer chose rock'
    # end
end
