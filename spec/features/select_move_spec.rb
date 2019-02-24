feature 'player selects move' do
  scenario 'selects move from Rock Paper Scissor' do
    sign_in
    click_button "Play RPS"
    click_button "Rock"
    expect(page).to satisfy {|page| page.has_content?('Draw') or page.has_content?('Computer wins') or page.has_content?('Player wins')}
  end
end
