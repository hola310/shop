ActiveAdmin.register Product do
  permit_params :image, :name, :description, :price, :year

  index do
    selectable_column
    id_column
    column :name
    column :image
    column :description
    column :price
    column :year
    actions
  end

  filter :name
  filter :price

  form do |f|
    f.inputs "Product Details" do
      f.input :name
      f.input :image
      f.input :description
      f.input :price
      f.input :year
    end
    f.actions
  end

end