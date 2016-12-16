Given(/^abro aplicacion$/) do
  visit '/'
end

Then(/^debo visualizar "([^"]*)"$/) do |parametro|
  expect(page.body).to match /#{parametro}/m
end

Then(/^debo visualizar (\d+) botones$/) do |parametro|
  find_button('b01')
    find_button('b02')
    find_button('b03')
    find_button('b04')
    find_button('b05')
    find_button('b06')
    find_button('b07')
    find_button('b08')
    find_button('b09')
    find_button('b10')
    find_button('b11')
    find_button('b12')
    find_button('b13')
    find_button('b14')
    find_button('b15')
    find_button('b16')
    find_button('b17')
    find_button('b18')
end