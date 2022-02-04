require_relative '../setup'

puts "Exercise 1"
puts "----------"

# Your code goes below here ...
store1 = Store.create(name: 'Burnaby', annual_revenue: 300000, mens_apparel: true, womens_apparel: true)

store2 = Store.create(name: 'Richmond',
annual_revenue: 1260000,
mens_apparel: false,
womens_apparel: true)


# store2 = Store.new
# store2.name = 'Richmond'
# store2.annual_revenue = 1260000
# store2.mens_apparel = false
# store2.womens_apparel = true  
# store2.save

store3 = Store.create(name: 'Gastown',
annual_revenue: 190000,
mens_apparel: true,
womens_apparel: false)

# store3 = Store.new
# store3.name = 'Gastown'
# store3.annual_revenue = 190000
# store3.mens_apparel = true
# store3.womens_apparel = false  
# store3.save



puts Store.count() 

# 1. Use Active Record's `create` class method multiple times to create 3 stores in the database:
#   * Burnaby (annual_revenue of 300000, carries men's and women's apparel)
#   * Richmond (annual_revenue of 1260000 carries women's apparel only)
#   * Gastown (annual_revenue of 190000 carries men's apparel only)
# 2. Output (`puts`) the number of the stores using ActiveRecord's `count` method, to ensure that there are three stores in the database.