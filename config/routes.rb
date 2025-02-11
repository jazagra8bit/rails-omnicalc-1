Rails.application.routes.draw do
  # Route for square calculation (GET form and GET result)
  get "/square/new", to: "calculators#square_form", as: "new_square"
  get "/square/results", to: "calculators#square_results", as: "square_results"

  # Routes for square root (GET form and POST result)
  get "square_root/new", to: "calculators#square_root_form", as: "new_square_root"
  get "square_root/results", to: "calculators#square_root_results", as: "square_root_results"

  # Routes for payment (GET form and POST result)
  get "payment/new", to: "calculators#payment_form", as: "new_payment"
  get "payment/results", to: "calculators#payment_results", as: "payment_results"

  # Routes for random (GET form and POST result)
  get "random/new", to: "calculators#random_form", as: "new_random"
  get "random/results", to: "calculators#random_results", as: "random_results"

  # Root path
  root "calculators#square_form"
end
