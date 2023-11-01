require 'factory_bot'
World(FactoryBot::Syntax::Methods)
FactoryBot.find_definitions


FactoryBot.define do 
    factory :teacher, class: User do 
    email { "teacher@ait.asia" } 
    password { "password" } 
    password_confirmation { "password" } 
    end
    
    factory :project do 
        name { "My favorite project" } 
        url { "http://somewhere.com" } 
        end 
        
    factory :student do 
        studentid { "124438" } 
        name { "Jannatun Nayeem" } 
        
        end
    end 
    
    
        