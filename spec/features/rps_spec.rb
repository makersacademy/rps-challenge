feature 'choosing your move' do
  scenario 'can pick an option' do
    sign_in_and_go
    select('Rock', from: 'rps_moves')
  end
end
