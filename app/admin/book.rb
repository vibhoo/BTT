ActiveAdmin.register Book do
  permit_params do
    permitted = [:name, :author, :availbility]
    permitted << :other if params[:action] == 'create'
    permitted
  end
end
