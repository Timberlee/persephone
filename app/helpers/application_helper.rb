module ApplicationHelper
  def randomized_background_image
  images = ["/images/0.jpg", "/images/1.jpg", "/images/2.jpg", "/images/3.jpg", "/images/4.jpg","/images/5.jpg","/images/6.jpg","/images/7.jpg"]
  images[rand(images.size)]
end

def signup_background_image
images = ["/images/s1.jpg",  "/images/s3.jpg", "/images/s4.jpg", "/images/s5.jpg","/images/s6.jpg","/images/s7.jpg"]
images[rand(images.size)]
end

def edu_background_image
images = ["/images/e1.jpg",  "/images/e2.jpg", "/images/e3.jpg"]
images[rand(images.size)]
end


end
