feature "computer player selects random object" do
  scenario 'computer now selects a random object' do
    sign_in_and_play
    click_button 'Scissors'
    srand(123)
    expect(page).to have_content 'Computer is Scissors'
  end
end
