class FinancingTable < ActiveRecord::Base
  validates_presence_of :bank, :time, :return, :coefficient, :initial_year, :end_year
  #validate_length_of :time, within: 1..3
  #validate_length_of :return, within: 1..2
  #validate_length_of :coefficient, is: 6
  #validate_length_of :interest, within: 1..2
  #validate_length_of :initial_year, is: 4
  #validate_length_of :end_year, is: 4
end
