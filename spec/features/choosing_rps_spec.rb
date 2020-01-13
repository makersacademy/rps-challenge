feature 'Choosing R/P/S' do
  scenario 'player chooses rock, paper or scissors' do
    sign_in_and_play
    fill_in :rps, with:'rock'
    click_button 'OK'
    expect(page).to have_content 'Dave chose rock'
  end
end
