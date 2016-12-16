Given(/^abro aplicacion$/) do
  visit '/'
end

Then(/^debo visualizar "([^"]*)"$/) do |parametro|
  expect(page.body).to match /#{parametro}/m
end

Then(/^debo visualizar (\d+) botones$/) do |parametro|
  find_button('1')
    find_button('2')
    find_button('3')
    find_button('4')
    find_button('5')
    find_button('6')
    find_button('7')
    find_button('8')
    find_button('9')
    find_button('10')
    find_button('11')
    find_button('12')
    find_button('13')
    find_button('14')
    find_button('15')
    find_button('16')
    find_button('17')
    find_button('18')
end


When(/^selecciono un boton$/) do
  visit '/'
  click_button("1")
end

Then(/^debo visualizar el item contenido en el boton$/) do

end