# Build Info from C# and VB

Generates a C# or VB ThisAssembly class that contains
static information about the build environment.
Use it e.g. to construct your AssemblyVersion:

```csharp
[assembly: AssemblyVersion ("1.0.0." + ThisAssembly.BuildEvn.BuildId)]
```

Currently available are:

  * `ThisAssembly.BuildEnv.BuildId`: Set by the TFS/DevOps Build pipeline (see: https://docs.microsoft.com/en-us/azure/devops/pipelines/build/variables?view=azdevops)
  * `ThisAssembly.BuildEnv.BuildNumber` Set by the TFS/DevOps Build pipeline (see: https://docs.microsoft.com/en-us/azure/devops/pipelines/build/variables?view=azdevops)
  * `ThisAssembly.BuildEnv.BuildRepositoryClean` Set by the TFS/DevOps Build pipeline (see: https://docs.microsoft.com/en-us/azure/devops/pipelines/build/variables?view=azdevops)
  * `ThisAssembly.BuildEnv.Username` The username as set in the environment variables.

### Available MSBuild customizations:

  * `$(BuildInfoThisAssembly)`: set to 'false' to prevent assembly 
                      metadata and constants generation.

  * `$(BuildInfoAssemblyMetadata)`: set to 'false' to prevent assembly 
                              metadata generation only. Defaults 
                              to 'false'.

  * `$(BuildInfoAssemblyNamespace)`: allows overriding the namespace
                            for the ThisAssembly class.
                            Defaults to the global namespace.

This was inspired by GitInfo which uses the same generation process and can easly be used alongside BuildInfo (https://github.com/kzu/GitInfo).
