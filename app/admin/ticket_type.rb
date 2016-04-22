ActiveAdmin.register TicketType do

  permit_params :event_id, :title, :limit, :price, :starts_at, :ends_at

  form do |f|
    f.inputs do 
      f.input :event
      f.input :title
      f.input :limit
      f.input :price
      f.input :starts_at, as: :datetime_picker
      f.input :ends_at, as: :datetime_picker
    end
    f.actions
  end

end
