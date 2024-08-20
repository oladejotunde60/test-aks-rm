output "ingress_endpoint" {
  depends_on = [time_sleep.wait_for_ingress]
  value      = try("http://${data.kubernetes_ingress_v1.ing.status[0].load_balancer[0].ingress[0].ip}", "if it's not a http url, you need further investigation")
}

 # Azure AD Group Object Id
output "azure_ad_group_id" {
  value = azuread_group.aks_administrators.id
}

output "azure_ad_group_objectid" {
  value = azuread_group.aks_administrators.object_id
} 