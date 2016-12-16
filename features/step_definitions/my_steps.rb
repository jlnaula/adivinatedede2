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
    find_button('1').value
end

Given(/^selecciono (\d+) items distintos$/) do |arg1|
  visit '/'
  click_button("1")
  click_button("2")
end

Then(/^debo visualizar los dos items$/) do
  pending # Write code here that turns the phrase above into concrete actions
end

Then(/^debo ocultar los dos items despues de (\d+) segundos$/) do |arg1|
  pending # Write code here that turns the phrase above into concrete actions
end

Given(/^selecciono (\d+) items iguales$/) do |arg1|
  pending # Write code here that turns the phrase above into concrete actions
end

Then(/^debo desactivar los dos items despues de (\d+) segundos$/) do |arg1|
  pending # Write code here that turns the phrase above into concrete actions
end