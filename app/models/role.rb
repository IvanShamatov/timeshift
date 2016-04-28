class Role < ActiveRecord::Base
  acts_as_enumerated
  # ['owner', 'moderator', 'operator']
  # Owner - to do everything in company (for example he/she can get funds)
  # moderator - can change everything and see tickets/sales
  # operator — can check tickets and mark them used.
end
