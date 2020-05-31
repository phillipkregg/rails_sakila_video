class Actor < ApplicationRecord
  self.table_name = "actor" # WE DON'T NEED A MIGRATION BECAUSE THE DATA TABLE ALREADY EXISTS
end
