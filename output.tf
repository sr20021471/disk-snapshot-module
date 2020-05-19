output "id" {
  description = "snapshot id"
  value       = ["${azurerm_snapshot.snapshot.*.id}"]
}
