# Create new storage bucket in the US
# location with Standard Storage

resource "google_storage_bucket" "static" {
 name          = "benji2dmax-static"
 location      = "US"
 storage_class = "STANDARD"
 force_destroy = true

 uniform_bucket_level_access = true

 public_access_prevention = "inherited"
}

# Upload a text file as an object
# to the storage bucket

resource "google_storage_bucket_object" "default" {
 name         = "style.css"
 source       = "style.css"
 content_type = "text/plain"
 bucket       = google_storage_bucket.static.name
}

resource "google_storage_bucket_object" "not_found" {
 name         = "404.html"
 source       = "404.html"
 content_type = "text/html"
 bucket       = google_storage_bucket.static.name
}

resource "google_storage_bucket_object" "index" {
 name         = "index.html"
 source       = "index.html"
 content_type = "text/html"
 bucket       = google_storage_bucket.static.name
}

resource "google_storage_bucket_object" "images" {
 name         = "images.jpg"
 source       = "images.jpg"
 content_type = "image/jpeg"
 bucket       = google_storage_bucket.static.name
}