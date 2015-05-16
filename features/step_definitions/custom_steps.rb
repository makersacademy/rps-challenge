Given(/^I seed with (\d+)$/) do |seed|
  srand(seed.to_i)
end
