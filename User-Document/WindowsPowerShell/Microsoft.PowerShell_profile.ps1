cls
New-Alias g goto
New-Alias fileman explorer

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
Invoke-Expression (&starship init powershell)