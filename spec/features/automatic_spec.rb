feature 'Machine' do
  scenario 'shows chosen weapon' do
    visit '/AI'
    message = find(:css, '#machine').text
    expect(options).to include message
  end

  def options
    [:ROCK, :PAPER, :SCISSORS].map {|weapon| 'The machine has chosen '+ weapon.to_s + '!'}
  end
end
