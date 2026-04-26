# Define the file resource
resource "local_file" "food_file" {
  content  = "Sushi-Arigatou gozaimasu"
  filename = "${path.module}/favorite_food.txt"
}
