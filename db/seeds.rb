require 'factory_girl'

benchmark = Benchmark.measure do
  ActiveRecord::Base.transaction do
    robots = []
    10.times do
      FactoryGirl.create :planet
      FactoryGirl.create :job
      FactoryGirl.create :robot_model
      FactoryGirl.create :spaceship_model
    end

    30.times do
      FactoryGirl.create :robot
    end

    100.times do
      FactoryGirl.create :laser_gun
      FactoryGirl.create :power_armor
    end

    10.times do
      FactoryGirl.create :spaceship
    end

  end
end

puts benchmark
