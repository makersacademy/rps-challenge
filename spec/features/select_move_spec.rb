feature 'player selects move' do
  scenario 'selects move from Rock Paper Scissor' do
    sign_in
    click_button "Play RPS"
    click_button "Rock"
    expect(page).to satisfy {|this_page| this_page.has_content?("Draw") or this_page.has_content?("Computer wins") or this_page.has_content?("simona wins")}
  end
end
