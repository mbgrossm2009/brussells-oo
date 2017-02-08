require 'pry'

class Ingredient
attr_accessor :quantity, :unit, :name

  def initialize(quantity, unit, name)
    @quantity = quantity.to_f
    @unit = unit
    @name = name
  end

  def summary
    "#{@quantity}, #{@unit}, #{@name}"
  end

end

class Recipe
  attr_accessor :name, :instructions, :ingredients

  def initialize(name, instructions, ingredients)
    @name = name
    @instructions = instructions
    @ingredients = ingredients
  end

  def summary
    puts "#{@name}"
    @ingredients.each do |food|
      # puts "-#{food.name}"
      puts "- " + food.summary
    end

    @instructions.each_with_index do |step, index|
      puts "#{step} #{index + 1}"
    end
    puts ""
  end
end

  instructions = [
        "Preheat oven to 400 degrees F.",
        "Cut off the brown ends of the Brussels sprouts.",
        "Pull off any yellow outer leaves.",
        "Mix them in a bowl with the olive oil, salt and pepper.",
        "Pour them on a sheet pan and roast for 35 to 40 minutes.",
        "They should be until crisp on the outside and tender on the inside.",
        "Shake the pan from time to time to brown the sprouts evenly.",
        "Sprinkle with more kosher salt ( I like these salty like French fries).",
        "Serve and enjoy!"
        ]

  ingredients = [
      Ingredient.new(1.5, "lb(s)", "Brussels sprouts"),
      Ingredient.new(3.0, "tbspn(s)", "Good olive oil"),
      Ingredient.new(0.75, "tspn(s)", "Kosher salt"),
      Ingredient.new(0.5, "tspn(s)", "Freshly ground black pepper")
    ]

  name = "my recipe"

  recipe = Recipe.new(name, instructions, ingredients)

  recipe.summary
