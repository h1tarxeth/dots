
#!/bin/bash

random_image=$(find ~/Downloads -type f | shuf -n 1)
neofetch --source "$random_image" --kitty "$random_image"
