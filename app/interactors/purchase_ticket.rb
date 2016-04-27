class PurchaseTicket
  include Interactor::Organizer 
  
  organize CreateTicket, SendTicket
end