' <auto-generated/>
#Const $NamespaceDefine$ = 1
#Const $MetadataDefine$ = 1

#If ADDMETADATA
<assembly: System.Reflection.AssemblyMetadata("BuildInfo.BuildEnv.BuildId", RootNamespace.ThisAssembly.BuildEnv.BuildId)>
<assembly: System.Reflection.AssemblyMetadata("BuildInfo.BuildEnv.BuildNumber", RootNamespace.ThisAssembly.BuildEnv.BuildNumber)>
<assembly: System.Reflection.AssemblyMetadata("BuildInfo.BuildEnv.BuildRepositoryClean", RootNamespace.ThisAssembly.BuildEnv.BuildRepositoryClean)>
<assembly: System.Reflection.AssemblyMetadata("BuildInfo.BuildEnv.Username", RootNamespace.ThisAssembly.BuildEnv.Username)>
#End If

#If LOCALNAMESPACE
Namespace Global._RootNamespace_
#Else
Namespace Global
#End If
    ''' <summary>Provides access to the git information for the current assembly.</summary>
    Partial Class ThisAssembly

       ''' <summary>Provides access to build environment information for the current assembly.</summary>
       Partial Public Class BuildEnv
           ''' <summary>BuildId: $BuildId$</summary>
           Public Const BuildId As String = "$BuildId$";

           ''' <summary>BuildNumber: $BuildNumber$</summary>
           Public Const BuildNumber As String = "$BuildNumber$";

           ''' <summary>BuildRepositoryClean: $BuildRepositoryClean$</summary>
           Public Const BuildRepositoryClean As String = "$BuildRepositoryClean$";

           ''' <summary>Username: $Username$</summary>
           Public Const Username As String = "$Username$";
        End Class

    End Class
End Namespace