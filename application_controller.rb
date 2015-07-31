require 'bundler'
Bundler.require

class MyApp < Sinatra::Base
  
  configure do 
    enable :sessions
    set :session_secret, 'smalljobs'
  end
  

  get '/wants_jobs' do
    erb :wants_jobs
  end

  get '/Dog_Walking' do
    erb :dog_walking
  end
  
  
   get '/' do
     erb :index
  end
  
  
  get '/Babysitting' do
    erb :babysitting
  end
  
  get'/Grocery_Shopping' do
    erb :grocery_shopping
  end
  
  get '/Laundry' do
    erb :laundry
  end
  
  get '/Pet_Feeding' do
    erb :pet_feeding
  end
  
  get '/needs_someone' do
    erb :needs_someone
  end
  
   
  get '/Plant_Watering' do
    erb :plant_watering
  end
  
  get '/Tutoring' do
    erb :tutoring
  end
  
  
#   get '/babysitter_results' do
#     erb :babysitter_results
#   end
  
  get '/dog_walking_results' do
    erb :dog_walking_results
end

  get '/grocery_shopping_results' do
erb :grocery_shopping_results
  end
  
  get '/pet_feeding_results' do
  erb :pet_feeding_results
  end

  get '/laundry_results' do
  erb :laundry_results
  end

  
  get '/plant_watering_results' do
erb :plant_watering_results
  end

  get '/tutoring_results' do
  erb :tutoring_results
  end

  get '/about_us' do
    erb :about_us
  end
  

  post '/babysitter_results' do
    @babysittername = params[:name]
    @babysitterkids = params[:kids]
    @babysittercontact = params[:contact]
    @babysitterzip_code = params[:Zip_Code]
    session[:name]=@babysittername
    session[:kids]=@babysitterkids
    session[:contact]=@babysittercontact
    session[:Zip_Code]=@babysitterzip_code
    erb :babysitter_results
  end
  
  get '/read_babysitter_results' do
    @babysittername1 = session[:name]
    @babysitterkids1 = session[:kids]
    @babysittercontact1 = session[:contact]
    @babysitterzip_code1 = session[:Zip_Code]
    erb :read_babysitter_results
  end
    
  
  post '/dog_walking_results' do
    @dogwalkingname = params[:name]
    @dogwalkingzip_code = params[:Zip_Code]
    @dogwalkingcontact = params[:contact]
    @dogwalkingdogs = params[:dogs]
    session[:name]=@dogwalkingname
    session[:dogs]=@dogwalkingdogs
    session[:contact]=@dogwalkingcontact
    session[:Zip_Code]=@dogwalkingzip_code
    erb :dog_walking_results
  end
  
  get '/read_dog_walking_results' do
    @dogwalkingname = session[:name]
    @dogwalkingdogs = session[:dogs]
    @dogwalkingcontact = session[:contact]
    @dogwalkingzip_code = session[:Zip_Code]
    erb :read_dog_walking_results
  end
  
  post '/grocery_shopping_results' do
    @groceryname = params[:name]
    @groceryzip_code = params[:Zip_Code]
    @grocerycontact = params[:contact]
    session[:name]=@groceryname
    session[:contact]=@grocerycontact
    session[:Zip_Code]=@groceryzip_code
    erb :grocery_shopping_results
  end
  
  get '/read_grocery_shopping_results' do
    @groceryname = session[:name]
    @grocerycontact = session[:contact]
    @groceryzip_code = session[:Zip_Code]
    erb :read_grocery_shopping_results
  end
  
  post '/pet_feeding_results' do
    @feedingname = params[:name]
    @feedingzip_code = params[:Zip_Code]
    @feedingcontact = params[:contact]
    session[:name]=@feedingname
    session[:contact]=@feedingcontact
    session[:Zip_Code]=@feedingzip_code
    erb :pet_feeding_results
  end
  
  
  get '/read_pet_feeding_results' do
    @feedingname = session[:name]
    @feedingcontact = session[:contact]
    @feedingzip_code = session[:Zip_Code]
    erb :read_pet_feeding_results
  end
  
  post '/laundry_results' do
    @laundryname = params[:name]
    @laundryzip_code = params[:Zip_Code]
    @laundrycontact = params[:contact]
    @laundryloads = params[:loads]
    session[:name]=@laundryname
    session[:loads]=@laundryloads
    session[:contact]=@laundrycontact
    session[:Zip_Code]=@laundryzip_code
    erb :laundry_results
  end
  
  get '/read_laundry_results' do
    @laundryname = session[:name]
    @laundrycontact = session[:contact]
    @laundryzip_code = session[:Zip_Code]
    @laundryloads = session[:loads]
    erb :read_laundry_results
  end

  post '/plant_watering_results' do
    @plantname = params[:name]
    @plantzip_code = params[:Zip_Code]
@plantcontact = params[:contact]
    session[:name]=@plantname
    session[:contact]=@plantcontact
    session[:Zip_Code]=@plantzip_code
    erb :plant_watering_results
  end
  
  get '/read_plant_watering_results' do
    @plantname = session[:name]
    @plantcontact = session[:contact]
    @plantzip_code = session[:Zip_Code]
    erb :read_plant_watering_results
  end
  
  post '/tutoring_results' do
    @tutoringname = params[:name]
    @tutoringsubject = params[:subject]
    @tutoringzip_code = params[:Zip_Code]
    @tutoringcontact = params[:contact]
    session[:name]=@tutoringname
    session[:subject]=@tutoringsubject
    session[:contact]=@tutoringcontact
    session[:Zip_Code]=@tutoringzip_code
    erb :tutoring_results
  end


  get '/read_tutoring_results' do
    @tutoringname = session[:name]
    @tutoringcontact = session[:contact]
    @tutoringzip_code = session[:Zip_Code]
    @tutoringsubject = session[:subject]
    erb :read_tutoring_results
  end
end
