ActiveAdmin.register Post do

  permit_params :content, :photo

  index do
    column :id
    column :content
  end

  form do |f|
    f.inputs do
      f.input :content
      f.input :photo, as: :dragonfly, input_html: { components: [:preview, :upload, :remove ] }
    end
    f.actions
  end
end
