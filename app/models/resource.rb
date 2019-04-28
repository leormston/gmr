class Resource < ApplicationRecord
  has_one_attached :cs_pdf
  has_one_attached :cs_word
  has_one_attached :pp
  has_one_attached :question_sheet
  has_one_attached :answer_sheet

  TOPIC_LIST = ["Number", "Algebra", "Graphs", "Ratio / Proportion / Rate of change", "Geometry and Measures", "Pythagoras and Trigonometry", "Probability and Statistics"]

  LEVEL_LIST = ["Foundation", "Higher"]

  SEARCHTOPIC_LIST = ["All", "Number", "Algebra", "Graphs", "Ratio / Proportion / Rate of change", "Geometry and Measures", "Pythagoras and Trigonometry", "Probability and Statistics"]

  SEARCHLEVEL_LIST = ["All", "Foundation", "Higher"]

end
