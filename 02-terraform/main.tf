resource "google_storage_bucket" "taxi_data_lake" {
  name     = "zoomcamp-taxi-data"
  location = "US"

  force_destroy = true

  uniform_bucket_level_access = true
}

resource "google_bigquery_dataset" "taxi_dataset" {
  dataset_id = "ny_taxi"
  location   = "US"

  delete_contents_on_destroy = true
}