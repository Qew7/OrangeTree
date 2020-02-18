require_relative 'src/tree'
require_relative 'src/basket'

tree = Tree.new
basket = Basket.new
rand(2..40).times do
  tree.grow
end

puts "                        "
puts "                        "
puts "          xxxxx         "
puts "        xXXXXXXXx       "
puts "       xXXXXXXXXXx      "
puts "     xXXXxxXXXУУXXx     "
puts "   xXXXXXXXXxxxXXXXXx   "
(tree.height/2).times do
  puts "  xXXxxXoXX9XXxXXX0XXx  "
  puts "  xXXOXXXXxxxOXXXXXXXx  "
  puts "  xXxXX8XXOXXXxXX0XXXx  "
end
puts "   xXXXXXXXXXXXXXXXXx   "
puts "    xXXXXXXXXXXXXXXx    "
(tree.height/2).times do
  puts "          |||           "
end
puts "         J|||L          "
puts "________________________"
puts "========================"
puts "^^^^^^^^^^^^^^^^^^^^^^^^"
puts "Your tree is #{tree.age} years old"
puts "Your tree height is #{tree.height + 3} units"
puts "There is #{tree.fruits.count} fruits on your tree"

rand(5..50).times do
  basket.add(tree.pick_fruit) if tree.fruits?
end

fruits_in_basket_count = basket.contains.count

puts "There is #{fruits_in_basket_count} picked fruits in basket"

if fruits_in_basket_count.positive?
  fruit = basket.contains.sample
  puts "Randomly chosen fruit is #{fruit.color} and #{fruit.taste}"
else
  puts 'There is no fruit on this tree'
end
