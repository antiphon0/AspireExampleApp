# AspireExampleApp
Using to recreate bug for Aspire team

# Recreate:

Delete the contents of the infra folders, both in aspire/ExampleApp.AppHost and the root-level infra folder. 
Run 'azd infra gen'. 
Note how the param files are created in the AppHost's infra folder, but the modules are created in the root infra folder. 
