ActiveAdmin.register User do
  permit_params  :email, :nickname
  
end
