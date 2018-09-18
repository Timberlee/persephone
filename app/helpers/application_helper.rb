module ApplicationHelper
  def randomized_background_image
  images = ["assets/0.jpg", "assets/1.jpg", "assets/2.jpg", "assets/3.jpg", "assets/4.jpg","assets/5.jpg","assets/6.jpg","assets/7.jpg"]
  images[rand(images.size)]
end

def signup_background_image
images = ["assets/s1.jpg",  "assets/s3.jpg", "assets/s4.jpg", "assets/s5.jpg","assets/s6.jpg","assets/s7.jpg"]
images[rand(images.size)]
end

def edu_background_image
images = ["assets/e1.jpg",  "assets/e2.jpg", "assets/e3.jpg"]
images[rand(images.size)]
end


end
