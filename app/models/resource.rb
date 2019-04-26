class Resource < ApplicationRecord
  has_one_attached :cs_pdf

  TOPIC_LIST = ["Number", "Algebra", "Graphs", "Ratio / Proportion / Rate of change", "Geometry and Measures", "Pythagoras and Trigonometry", "Probability and Statistics"]

  LEVEL_LIST = ["Foundation", "Higher"]
end
