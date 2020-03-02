# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

executive1 = SaleExecutive.create(
  name: Faker::Name.name,
  email: Faker::Internet.email,
  password: Digest::MD5.hexdigest('12345')
)
executive2 = SaleExecutive.create(
  name: Faker::Name.name,
  email: Faker::Internet.email,
  password: Digest::MD5.hexdigest('12345')
)
executive3 = SaleExecutive.create(
  name: Faker::Name.name,
  email: Faker::Internet.email,
  password: Digest::MD5.hexdigest('12345')
)

region1 = Region.create(name: 'Metropolitana')
region2 = Region.create(name: 'Valparaiso')
region3 = Region.create(name: 'Los Lagos')

product1 = Product.create(
  name: 'Seguro de vehículo',
  description: 'Seguro en caso de accidentes'
)
product2 = Product.create(
  name: 'Seguro de garantía',
  description: 'Seguro en caso de falla de producto'
)
product3 = Product.create(
  name: 'Seguro de responsabilidad civil',
  description: 'Seguro en caso de daños a terceros'
)

executive_array = [executive1, executive2, executive3]
regions_array = [region1, region2, region3]
products_array = [product1, product2, product3]
payment_type_aray = %w[Anual Mensual Trimestral]

10.times do |i|
  rand_index = rand(0..2)

  comune = Comune.create(name: Faker::Address.city, region: regions_array[rand_index])
  client = Client.create(
    social_reason: Faker::IndustrySegments.industry,
    address: Faker::Address.street_address,
    giro: Faker::Company.industry,
    comune: comune
  )
  Policy.create(
    prime: rand(20_000..100_000),
    start_date: Faker::Date.between(from: 1.year.ago, to: Date.today),
    end_date: Faker::Date.between(from: 1.month.ago, to: Date.today),
    comision: rand(10..40),
    payment_type: payment_type_aray[rand_index],
    product: products_array[rand_index],
    client: client,
    sale_executive: executive_array[rand_index]
  )
end
