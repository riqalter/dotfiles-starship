cls
New-Alias g goto
New-Alias fileman explorer
New-Alias curl curl.exe

function goto {
    param (
        $location
    )

    Switch ($location) {
        "pr" {
            Set-Location -Path "$HOME/Documents/Programming"
        }
        "web" {
            Set-Location -Path "$HOME/Documents/Programming/Webdev"
        }
        "python" {
            Set-Location -Path "$HOME/Documents/Programming/Python"
        }
        default {
            echo "Invalid location"
        }
    }
}

$ENV:STARSHIP_CONFIG = "$HOME/.starship/starship.toml"
$ENV:STARSHIP_DISTRO = "  $env:username "
Import-Module -Name Terminal-Icons
Invoke-Expression (&starship init powershell)
