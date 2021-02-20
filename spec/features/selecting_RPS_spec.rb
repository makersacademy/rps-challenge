feature 'Player can select Rock Paper or Scissors' do
  scenario 'Selecting RPS' do
    visit ('/')
    fill_in :player_1_name, with: 'p1'
    click_button 'Play'
    select "Paper", :from => "choice"
    click_button 'submit'
    expect(page).to have_content 'You have chosen paper'
  end
end
