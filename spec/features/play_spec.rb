feature 'Game is playable' do
  scenario 'Can choose R,P,S' do
    sign_in_and_play
    expect(page).to have_select('move', options: ['Rock', 'Paper', 'Scissors'])
  end

  scenario 'Uses your choice' do
    sign_in_and_play
    select "Rock", :from => "move"
    click_button "Submit"
    expect(page).to have_content "you chose Rock"
  end
end
