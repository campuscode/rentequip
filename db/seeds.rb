# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

client = Client.create!(
company_name:'Campus Code',
cnpj:'26.286.134/0001-04',
contact_name:'Gustavo',
phone:'555-555',
email:'g@code.com',
address:'Alameda Santos',
address_number:'1293',
aditional_address_detail:'conj 73',
zipcode:'12345-789',
neighborhood:'Cerqueira Cesar',
city:'São Paulo',
state:'SP'
)

tool = Tool.create!(
name: 'Furadeira',
description: 'Furadeira Black Decker...',
serial_number: '123456',
tools_group: 'Furadeiras',
status: 'Ativo'
)

contract = Contract.create!(
term: 15,
initial_date: Time.zone.now,
deadline: 15.days.from_now,
total_price: 30.00,
delivery_address: 'Alameda Santos, 1293',
responsable: 'Alan',
client: client,
tools: [tool]
)
