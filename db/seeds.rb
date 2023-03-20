4.times do 
    restaurant_name = Faker::Restaurant.name
    restaurant_address = Faker::Address.full_address
    Restaurant.create!(name:restaurant_name,address:restaurant_address)
end


Pizza.create!(name:"Veggie",ingredients: Faker::Food.description)
Pizza.create!(name:"Pepperoni",ingredients: Faker::Food.description) 
Pizza.create!(name:"BBQ Chicken",ingredients: Faker::Food.description) 
Pizza.create!(name:"Hawaiian",ingredients: Faker::Food.description)

RestaurantPizza.create!(price:5,pizza_id:1,restaurant_id:1)
RestaurantPizza.create!(price:10,pizza_id:1,restaurant_id:2)
RestaurantPizza.create!(price:15,pizza_id:2,restaurant_id:3)
RestaurantPizza.create!(price:25,pizza_id:3,restaurant_id:4)
RestaurantPizza.create!(price:20,pizza_id:4,restaurant_id:1)
RestaurantPizza.create!(price:5,pizza_id:2,restaurant_id:4)
RestaurantPizza.create!(price:10,pizza_id:2,restaurant_id:2)
RestaurantPizza.create!(price:15,pizza_id:1,restaurant_id:3)
RestaurantPizza.create!(price:25,pizza_id:4,restaurant_id:3)
RestaurantPizza.create!(price:20,pizza_id:1,restaurant_id:4)
