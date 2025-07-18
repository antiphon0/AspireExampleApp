using './apiservice.module.bicep'

param apiservice_containerimage = '{{ .Image }}'
param apiservice_containerport = '{{ targetPortOrDefault 8080 }}'
param outputs_azure_container_apps_environment_default_domain = '{{ .Env.AZURE_CONTAINER_APPS_ENVIRONMENT_DEFAULT_DOMAIN }}'
param outputs_azure_container_apps_environment_id = '{{ .Env.AZURE_CONTAINER_APPS_ENVIRONMENT_ID }}'
param outputs_azure_container_registry_endpoint = '{{ .Env.AZURE_CONTAINER_REGISTRY_ENDPOINT }}'
param outputs_azure_container_registry_managed_identity_id = '{{ .Env.AZURE_CONTAINER_REGISTRY_MANAGED_IDENTITY_ID }}'
