feature 'Stats' do
  before(:each) do
    sign_in_and_play
    17.times do |i|
      click_button(['rock', 'paper', 'scissors'].sample)
      click_button 'Play again' if i < 16
    end
  end
  scenario 'player can see how many turns they have taken' do
    expect(page).to have_content "Total: 17"
  end
  scenario 'player can see how many times they have won' do
    expect(page.text.scan(/Wins: \d+/).length).to eq 1
  end
  scenario 'player can see how many times they have lost' do
    expect(page.text.scan(/Losses: \d+/).length).to eq 1
  end
  scenario 'player can see how many times they have drawn' do
    expect(page.text.scan(/Ties: \d+/).length).to eq 1
  end
end
