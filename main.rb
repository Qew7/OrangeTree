require_relative 'src/tree'
require_relative 'src/basket'

tree = Tree.new
basket = Basket.new
rand(2..40).times do
  tree.grow
end

p "                        "
p "                        "
p "          xxxxx         "
p "        xXXXXXXXx       "
p "       xXXXXXXXXXx      "
p "     xXXXxxXXXУУXXx     "
p "   xXXXXXXXXxxxXXXXXx   "
(tree.age/7).times do
  p "  xXXxxXoXX9XXxXXX0XXx  "
  p "  xXXOXXXXxxxOXXXXXXXx  "
  p "  xXxXX8XXOXXXxXX0XXXx  "
end
p "   xXXXXXXXXXXXXXXXXx   "
p "    xXXXXXXXXXXXXXXx    "
(tree.age/6).times do
  p "          |||           "
end
p "         J|||L          "
p "________________________"
p "========================"
p "^^^^^^^^^^^^^^^^^^^^^^^^"
p "Your tree is #{tree.age} years old"
p "There is #{tree.fruits.count} fruits on your tree"

rand(5..50).times do
  basket.add(tree.pick_fruit) if tree.fruits?
end

p "There is #{basket.contains.count} picked fruits in basket"

fruit = basket.contains.sample

p "Randomly chosen fruit is #{fruit.color} and #{fruit.taste}"
