sudo apt install curl
sudo apt install git

confirm() {
    # call with a prompt string or use a default
    read -r -p "${1:-Are you sure? [y/N]} " response
    case "$response" in
        [yY][eE][sS]|[yY]) 
            true
            ;;
        *)
            false
            ;;
    esac
}

echo "Creating ssh key for github"
curl https://raw.githubusercontent.com/aidenbenner/dotfiles/master/scripts/ssh_setup.sh > ssh.sh
sh ssh.sh
rm ssh.sh
read -r -p "Add this key to github press any Y to continue" response
confirm 

ssh-keygen -t rsa -b 4096 -C "aiden.benner@gmail.com"


