#
# Module manifest for module 'WinSecureDNSMgr'
#
# Generated by: HotCakeX
#
# Generated on: 6/23/2023
#

@{

    # Script module or binary module file associated with this manifest.
    RootModule           = 'WinSecureDNSMgr.psm1'

    # Version number of this module.
    ModuleVersion        = '0.0.3'

    # Supported PSEditions
    CompatiblePSEditions = @("Core")

    # ID used to uniquely identify this module
    GUID                 = 'e8b709e5-6ccc-471c-9625-edf2bca4ebee'

    # Author of this module
    Author               = 'HotCakeX'

    # Company or vendor of this module
    CompanyName          = 'SpyNetGirl'

    # Copyright statement for this module
    Copyright            = '(c) HotCakeX. All rights reserved.'

    # Description of the functionality provided by this module
    Description          = @"

    
💎 This is a PowerShell module that can simplify setting up DNS over HTTPS in Windows for various scenarios 💎


🔷 DNS over HTTPS in Windows using the default built-in OS DoH providers
🔷 DNS over HTTPS in Windows using a custom DoH provider that has static IP address(s)
🔷 DNS over HTTPS in Windows using a custom DoH provider that has dynamic IP address(s)


It can automatically identify the correct and active network adapter/interface and set Secure DNS settings for it based on parameters supplied by user.


✅ Features

✅ Strongest possible End-to-End encrypted workflow

✅ Created, targeted and tested on the latest version of Windows, on physical hardware and Virtual Machines

✅ To make sure the module will always be able to acquire the IP address(s) of the DoH server, specially in case of dynamic DoH server when the currently set system IPv4s and IPv6s might be outdated, the module performs DNS queries in this exact order:

✅  - First tries using Cloudflare's main encrypted API to get the IP address(s) of the DoH server's domain.
✅  - If 1st one fails, tries using the Cloudflare's secondary encrypted API to get the IP address(s) of the DoH server's domain.
✅  - If 2nd one fails, tries using Google's main encrypted API to get the IP address(s) of the DoH server's domain.
✅  - If 3rd one fails, tries using Google's secondary encrypted API to get the IP address(s) of the DoH server's domain.

✅ All of the connections to Cloudflare and Google servers use direct IP, are set to use TLS 1.3 with TLS_CHACHA20_POLY1305_SHA256 cipher suite and use HTTP/2

More info about each of them in the GitHub repository
https://github.com/HotCakeX/WinSecureDNSMgr


"@

    # Minimum version of the PowerShell engine required by this module
    PowerShellVersion    = '7.3.4'

    # Name of the PowerShell host required by this module
    # PowerShellHostName = ''

    # Minimum version of the PowerShell host required by this module
    # PowerShellHostVersion = ''

    # Minimum version of Microsoft .NET Framework required by this module. This prerequisite is valid for the PowerShell Desktop edition only.
    # DotNetFrameworkVersion = ''

    # Minimum version of the common language runtime (CLR) required by this module. This prerequisite is valid for the PowerShell Desktop edition only.
    # ClrVersion = ''

    # Processor architecture (None, X86, Amd64) required by this module
    # ProcessorArchitecture = ''

    # Modules that must be imported into the global environment prior to importing this module
    # RequiredModules = @()

    # Assemblies that must be loaded prior to importing this module
    # RequiredAssemblies = @()

    # Script files (.ps1) that are run in the caller's environment prior to importing this module.
    # ScriptsToProcess = @()

    # Type files (.ps1xml) to be loaded when importing this module
    # TypesToProcess = @()

    # Format files (.ps1xml) to be loaded when importing this module
    # FormatsToProcess = @()

    # Modules to import as nested modules of the module specified in RootModule/ModuleToProcess
    NestedModules        = @('Set-BuiltInWinSecureDNS.psm1', 'Set-CustomWinSecureDNS.psm1', 'Set-DynamicIPDoHServer.psm1')

    # Functions to export from this module, for best performance, do not use wildcards and do not delete the entry, use an empty array if there are no functions to export.
    FunctionsToExport    = @('Set-BuiltInWinSecureDNS', 'Set-CustomWinSecureDNS', 'Set-DynamicIPDoHServer')

    # Cmdlets to export from this module, for best performance, do not use wildcards and do not delete the entry, use an empty array if there are no cmdlets to export.
    CmdletsToExport      = @('Set-BuiltInWinSecureDNS', 'Set-CustomWinSecureDNS', 'Set-DynamicIPDoHServer')

    # Variables to export from this module
    VariablesToExport    = '*'

    # Aliases to export from this module, for best performance, do not use wildcards and do not delete the entry, use an empty array if there are no aliases to export.
    AliasesToExport      = @('Set-DOH', 'Set-CDOH', 'Set-DDOH')

    # DSC resources to export from this module
    # DscResourcesToExport = @()

    # List of all modules packaged with this module
    ModuleList           = @()

    # List of all files packaged with this module
    FileList             = @(
        'WinSecureDNSMgr.psm1',
        'WinSecureDNSMgr.psd1',
        'Get-ActiveNetworkAdapterWinSecureDNS.psm1',
        'Get-ManualNetworkAdapterWinSecureDNS.psm1',
        'CommonResources.psm1',
        'Set-BuiltInWinSecureDNS.psm1',
        'Set-CustomWinSecureDNS.psm1',
        'Set-DynamicIPDoHServer.psm1'        
    )

    # Private data to pass to the module specified in RootModule/ModuleToProcess. This may also contain a PSData hashtable with additional module metadata used by PowerShell.
    PrivateData          = @{

        PSData = @{

            # Tags applied to this module. These help with module discovery in online galleries.
            Tags         = @('DNS', 'DNSoverHTTPS', 'DynamicDNSoverHTTPS', 'Windows11', 'SecureDNS', 'CloudFlare', 'CustomDNS', 'Security')

            # A URL to the license for this module.
            LicenseUri   = 'https://github.com/HotCakeX/WinSecureDNSMgr/blob/main/LICENSE'

            # A URL to the main website for this project.
            ProjectUri   = 'https://github.com/HotCakeX/WinSecureDNSMgr'

            # A URL to an icon representing this module.
            IconUri      = 'https://raw.githubusercontent.com/HotCakeX/Windows-Secure-DNS-Config/main/PowerShellGalleryIcon.png'

            # ReleaseNotes of this module
            ReleaseNotes = @"
# Version 0.0.3
Simplified Set-CDOH function by automating a parameter, Streamlined the code, added custom colors to adapter selection area.

# Version 0.0.2
Added some successful messages to be displayed at the end of the execution

# Version 0.0.1
First release

"@

            # Prerelease string of this module
            # Prerelease = ''

            # Flag to indicate whether the module requires explicit user acceptance for install/update/save
            # RequireLicenseAcceptance = $false

            # External dependent modules of this module
            # ExternalModuleDependencies = @()

        } # End of PSData hashtable

    } # End of PrivateData hashtable

    # HelpInfo URI of this module
    HelpInfoURI          = 'https://github.com/HotCakeX/WinSecureDNSMgr'

    # Default prefix for commands exported from this module. Override the default prefix using Import-Module -Prefix.
    # DefaultCommandPrefix = ''

}
