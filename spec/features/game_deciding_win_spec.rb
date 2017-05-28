feature 'Winning / Losing hand' do
  scenario 'either player or computer wins a hand' do
    sign_in_and_play
    click_button 'Rock'
    expect(page).to satisfy { |page| page.has_content? '(1)' or page.has_content? 'Tie!' }
  end
end
