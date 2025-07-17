using Aspire.Hosting;
using Microsoft.Extensions.Hosting;
using Aspire.Hosting.Azure;

var builder = DistributedApplication.CreateBuilder(args);

var apiService = builder.AddProject<Projects.ExampleApp_ApiService>("apiservice")
    .WithHttpHealthCheck("/health");

builder.AddProject<Projects.ExampleApp_Web>("webfrontend")
    .WithExternalHttpEndpoints()
    .WithHttpHealthCheck("/health")
    .WithReference(apiService)
    .WaitFor(apiService)
    .PublishAsAzureContainerApp((infra, app) =>
    {
        var container = app.Template.Containers.Single().Value!;
        container.Resources.Cpu = 0.25;
        container.Resources.Memory = "0.5Gi"; 
    });

builder.Build().Run();
