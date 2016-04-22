ActiveAdmin.register Event do

  permit_params :title, :short_description, :full_description, :starts_at, :ends_at, :header_image, :headline, :company_id

  form do |f|
    f.inputs do 
      f.input :company
      f.input :title
      f.input :headline
      f.input :header_image
      f.input :short_description
      f.input :full_description
      f.input :starts_at, as: :datetime_picker
      f.input :ends_at, as: :datetime_picker
    end
    f.actions
  end

end
