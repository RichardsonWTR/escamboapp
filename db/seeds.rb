# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

puts 'Cadastrando as categorias...'
categories = [
    'Animais e acessórios',
    'Esportes',
    'Para sua casa',
    'Eletrônicos e celulares',
    'Música e hobbies',
    'Bebês e crianças',
    'Moda e beleza',
    'Veículos e barcos',
    'Imóveis',
    'Empregos e negócios'
]
categories.each do |cat|
  Category.find_or_create_by(description: cat)
end
puts 'Cadastrando as categorias...[DONE]'

puts 'Cadastrando administradores...'
  Admin.create(email: "master@admins.com",password: "123123", password_confirmation: "123123",
    name: "Administrador Geral",role: :full_access)
puts 'Cadastrando administradores...[DONE]'