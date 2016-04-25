FactoryGirl.define do 
  factory :ticket_type_simple, class: TicketType do 
    id 1
    event_id 1
    title "Entry pass"
    limit 100
    price 99.00
  end

  factory :ticket_type_vip, class: TicketType do 
    id 2
    event_id 1
    title "VIP"
    limit 10
    price 200.00
  end


end