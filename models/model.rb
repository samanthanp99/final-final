workers_hash = { :Babysitting =>  {"Melina" => "99999999",
                                 "Samantha" => "777777777"},
                :Dog_Walking => {"josh" => "222222",
                                 "john" => "111111111"}
              }

def get_people(hash, job)
  return hash[job.to_sym]
end
puts get_people(workers_hash, "Babysitting")
#            :Grocery_Shopping => {:name => "",
#                                  :contact => "",
#                                  :Zip_Code => "" },
#                     :Laundry => {:name => "",
#                                  :loads => "", 
#                                  :contact => "",
#                                  :Zip_Code => "" },
#              :Plant_Watering => {:name => "",
#                                  :contact => "",
#                                  :Zip_Code => "" },
#                    :Tutoring => {:name => "",
#                                  :subject => "", 
#                                  :contact => "",
#                                  :Zip_Code => "" },
#                 :Pet_Feeding => {:name => "",
#                                  :contact => "",
#                                  :Zip_Code => "" },