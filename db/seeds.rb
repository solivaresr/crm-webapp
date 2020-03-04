# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

executive1 = SaleExecutive.where(
  name: Faker::Name.name,
  email: 'executive1@crm.cl',
  password: Digest::MD5.hexdigest('12345')
).first_or_create
executive2 = SaleExecutive.where(
  name: Faker::Name.name,
  email: 'executive1@crm.cl',
  password: Digest::MD5.hexdigest('12345')
).first_or_create
executive3 = SaleExecutive.where(
  name: Faker::Name.name,
  email: 'executive1@crm.cl',
  password: Digest::MD5.hexdigest('12345')
).first_or_create

region1 = Region.where(name: 'Metropolitana').first_or_create
region2 = Region.where(name: 'Valparaiso').first_or_create
region3 = Region.where(name: 'Los Lagos').first_or_create

product1 = Product.where(
  name: 'Seguro de vehículo',
  description: 'Seguro en caso de accidentes'
).first_or_create
product2 = Product.where(
  name: 'Seguro de garantía',
  description: 'Seguro en caso de falla de producto'
).first_or_create
product3 = Product.where(
  name: 'Seguro de responsabilidad civil',
  description: 'Seguro en caso de daños a terceros'
).first_or_create

executive_array = [executive1, executive2, executive3]
regions_array = [region1, region2, region3]
products_array = [product1, product2, product3]
payment_type_aray = %w[Anual Mensual Trimestral]

10.times do |i|
  rand_index = rand(0..2)

  comune = Comune.where(name: Faker::Address.city, region: regions_array[rand_index]).first_or_create
  client = Client.where(
    social_reason: Faker::IndustrySegments.industry,
    address: Faker::Address.street_address,
    giro: Faker::Company.industry,
    comune: comune
  ).first_or_create
  Policy.where(
    prime: rand(20_000..100_000),
    start_date: Faker::Date.between(from: 1.year.ago, to: Date.today),
    end_date: Faker::Date.between(from: 1.month.ago, to: Date.today),
    comision: rand(10..40),
    payment_type: payment_type_aray[rand_index],
    product: products_array[rand_index],
    client: client,
    sale_executive: executive_array[rand_index]
  ).first_or_create
end
