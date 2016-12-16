Given(/^abro aplicacion$/) do
  visit '/'
end

Then(/^debo visualizar "([^"]*)"$/) do |parametro|
  expect(page.body).to match /#{parametro}/m
end

Then(/^debo visualizar (\d+) botones$/) do |parametro|
  find_button('b1')
    find_button('b2')
    find_button('b3')
    find_button('b4')
    find_button('b5')
    find_button('b6')
    find_button('b7')
    find_button('b8')
    find_button('b9')
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


When(/^selecciono un boton$/) do
  visit '/'
  click_button("b1")
end

Then(/^debo visualizar el item contenido en el boton$/) do

end