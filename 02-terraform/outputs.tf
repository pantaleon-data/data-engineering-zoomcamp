output "taxi_dataset_id" {
  description = "BigQuery taxi dataset ID"
  value       = google_bigquery_dataset.taxi_dataset.dataset_id
}

output "taxi_bucket_name" {
  description = "Cloud Storage taxi data lake bucket name"
  value       = google_storage_bucket.taxi_data_lake.name
}