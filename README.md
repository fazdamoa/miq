 # Script to monitor MIQ

This bash script will continuously cURL the MIQ webpage and check for available dates.

It's pretty funny that they list the available dates in the HTML which makes this very easy.

Once a date is available, it will display big green letters on the screen.

## Tips on using this

Have a screen dedicated to this at your workstation. I had one half of the screen running the app, and the other half of the screen was logged into the MIQ website ready to book a room. I just worked normally on the main screen and waited for the popup to alert me when a room was available.

As soon as it comes up you need to immediately get it. The rooms typically go within 8 seconds.

Chrome Extensions like 'Easy Auto Refresh' will keep you logged into the page and avoid the timeout.

## How to run

- Linux - you know what to do
- Mac - run this in bash in your terminal.
- Windows - You can install WSL, git bash, cygwin, docker, etc

```bash ./run.sh```

## Development

This would be v easy to convert into a powershell script. Maybe something to auto book the room for you too. There is a captcha and I cbf working longer than 10 minutes on this. Feel free to contribute :)
