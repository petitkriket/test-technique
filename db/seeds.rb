# frozen_string_literal: true

15.times do
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
  shop.taxons << Taxon.order('RANDOM()').limit(5)
end
puts 'Assigned a taxonomy to all shops'

Product.all.each do |product|
  product.taxons << Taxon.order('RANDOM()').limit(5)
end
puts 'Assigned a taxonomy to all products'
