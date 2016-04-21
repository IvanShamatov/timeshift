ActiveAdmin.register Address do
  
  permit_params :city, :country, :name, :latitude, :longitude, :event_id

  form do |f|
    f.inputs do 
      f.input :event, as: :select, collection: Event.all
      f.input :name
      f.input :country
      f.input :city
    end
    f.actions
  end

end
