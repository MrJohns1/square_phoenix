defmodule SquarePhoenixWeb.Router do
  use SquarePhoenixWeb, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_flash
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", SquarePhoenixWeb do
    pipe_through :browser # Use the default browser stack

    get "/", PageController, :index

    get "/justifycontent", JustifyContentController, :index
    get "/layouts", LayoutDocController, :index
  get "/utility", UtilityController, :index
  get "/typography", TypographyController, :index
  get "/collapsible", CollapsibleController, :index
  get "/theme_default", ThemeDefaultController, :index
  get "/shadows", ShadowsController, :index
  get "/modal", ModalController, :index
  get "/progressbar", ProgressbarController, :index
  get "/navdropdown", NavDropDownController, :index
  get "/forms", FormsController, :index
  get "/table", TableController, :index
	get "/radiobuttons", RadiobuttonsController, :index
  get "/chartist", ChartistController, :index
  get "/createuser", CreateuserController, :index
  get"/alignitems", AlignitemsController, :index
  get "/borderanimation", BorderAnimationController, :index
  get "/animation", AnimationController, :index
  get "/tab", TabController, :index
  get "/lists", ListsController, :index

  end




  # Other scopes may use custom stacks.
  # scope "/api", SquarePhoenixWeb do
  #   pipe_through :api
  # end
end
