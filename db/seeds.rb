# frozen_string_literal: true

empty_shop = FactoryBot.build(:shop, name: 'The Awful Bakery')
empty_shop.save!
puts "Created a shop with no products called #{empty_shop.name}"

empty_taxon = FactoryBot.build(:taxon)
empty_taxon.save!
puts "Created a taxon with no products called #{empty_taxon.name}"

5.times do
  FactoryBot.create(:taxon)
end
puts 'Created 5 taxonomies'

15.times do
  FactoryBot.create(:shop)
end
puts 'Created 15 active shops and their products'

5.times do
  FactoryBot.create(:shop, :unavailable)
end
puts 'Created 5 unavailable shops and their products'

Shop.all.each do |shop|
  shop.taxons << Taxon.order('RANDOM()').limit(2)
end
puts 'Assigned two taxonomies to all shops'

Product.all.each do |product|
  product.taxons << Taxon.order('RANDOM()').limit(2)
end
puts 'Assigned a taxonomies to all products'
