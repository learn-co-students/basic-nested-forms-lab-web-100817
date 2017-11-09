class Ingredient < ActiveRecord::Base
  belongs_to :recipe
end


# :recipe => {
#   :title => "Pie",
#   :ingredients_attributes => {
#     "0" => {
#       :name => "",
#       :quantity => "",
#     },
#     "1" => {
#       :name => "",
#       :quantity => "",
#     },
#   }
# }
# }
