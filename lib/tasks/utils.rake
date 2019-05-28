namespace :utils do
  desc "Cria administradores fake"
  task generate_admins: :environment do

    puts "Criando administradores fake..."
    10.times do
      Admin.create!(email:Faker::Internet.email,password: '111111',password_confirmation: '111111')
    end
    puts "Criando administradores fake...[DONE]"

  end

end
