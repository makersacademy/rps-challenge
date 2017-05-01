feature 'Tests round page' do
  scenario 'round page displays the winner of the round' do
    sign_in_name
    click_button('Play Round 1')
    select( 'Rock', :from => 'RPS')
    click_button('Submit')
    expect(page).to satisfy {|page| page.has_content?('Simon wins Round 1!') or page.has_content?('Machine wins Round 1!') or page.has_content('Draw!')}
  end
end
